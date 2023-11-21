using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using DHEditor;
using System.Text;
using DHEditor.Utilities;
using System.Threading.Tasks;
using System.Windows;
using System.Diagnostics;
using System.IO;
using System.Windows.Input;

namespace DHEditor.GameProject
{
    [DataContract(Name = "Game")]
    public class Project : ViewModelBase
    {
        public static string Extension { get; } = ".primal";

        [DataMember]
        public string Name { get; private set; } = "New Project";

        [DataMember]
        public string Path { get; private set; }
        public string FullPath => $@"{Path}{Name}{Extension}";
        public string Solution => $@"{Path}{Name}.sln";
        public string ContentPath => $@"{Path}Content\";
        public string TempFolder => $@"{Path}.Primal\Temp\";

        [DataMember(Name = nameof(Scenes))]
        private readonly ObservableCollection<Scene> _Scenes = new();
        public ReadOnlyObservableCollection<Scene> Scenes { get; private set; }

        private Scene _activeScene;
        public Scene ActiveScene
        {
            get => _activeScene;
            set
            {
                if (_activeScene != value)
                {
                    _activeScene = value;
                    OnPropertyChanged(nameof(ActiveScene));
                }
            }
        }

        public static Project Current => Application.Current.MainWindow?.DataContext as Project;

        public static UndoRedo UndoRedo { get; private set; } = new UndoRedo();
        public ICommand Undo { get; private set; }
        public ICommand Redo { get; private set; }

        public ICommand AddScene { get; private set; }
        public ICommand RemoveScene { get; private set; }

        private void AddSceneInternal(string sceneName)
        {
            Debug.Assert(!string.IsNullOrEmpty(sceneName.Trim()));
            _Scenes.Add(new Scene(this, sceneName));
        }

        private void RemoveSceneInternal(Scene scene)
        {
            Debug.Assert(_Scenes.Contains(scene));
            _Scenes.Remove(scene);
        }

        [OnDeserialized]
        private async void OnDeserialized(StreamingContext context)
        {
            if (_Scenes != null)
            {
                Scenes = new ReadOnlyObservableCollection<Scene>(_Scenes);
                OnPropertyChanged(nameof(Scenes));
            }

            ActiveScene = _Scenes.FirstOrDefault(x => x.IsActive);
            Debug.Assert(ActiveScene != null);
            AddScene = new RelayCommand<object>(x =>
            {
                AddSceneInternal($"New Scene{_Scenes.Count}");
                var newScene = _Scenes.Last();
                var indexScene = _Scenes.Count - 1;
                UndoRedo.Add(new UndoRedoAction(
                    () => RemoveSceneInternal(newScene),
                    () => _Scenes.Insert(indexScene, newScene),
                    $"Add {newScene.Name}"));
            });
            //await BuildGameCodeDLL(false);
            RemoveScene = new RelayCommand<Scene>(x =>
            {
                var indexScene = _Scenes.IndexOf(x);
                RemoveSceneInternal(x);
                UndoRedo.Add(new UndoRedoAction(
                    () => _Scenes.Insert(indexScene, x),
                    () => RemoveSceneInternal(x),
                    $"Remove {x.Name}"));
            }, x=> !x.IsActive);
            //SetCommands();

            Undo = new RelayCommand<object>(x => UndoRedo.Undo());
            Redo = new RelayCommand<object>(x => UndoRedo.Redo());

        }

        public Project(string name, string path)
        {
            Name = name;
            Path = path;

            _Scenes.Add(new Scene(this, "Default Scene"));
        }

        public void Unload()
        {
            //UnloadGameCodeDLL();
            //VisualStudio.CloseVisualStudio();
            //UndoRedo.Reset();
            //Logger.Clear();
            //DeleteTempFolder();
        }

        public static Project Load(string file)
        {
            Debug.Assert(File.Exists(file));
            return Serializer.FromFile<Project>(file);
        }

        private static void Save(Project project)
        {
            Serializer.ToFile(project, project.FullPath);
            Logger.Log(MessageType.Info, $"Project saved to {project.FullPath}");
        }
    }
}
