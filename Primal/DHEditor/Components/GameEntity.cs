﻿using DHEditor.GameProject;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using DHEditor.Utilities;

namespace DHEditor.Components
{
    [DataContract]
    [KnownType(typeof(Transform))]
    //[KnownType(typeof(Script))]
    public class GameEntity : ViewModelBase
    {
        private bool _isEnabled;
        [DataMember]
        public bool IsEnabled
        {
            get => _isEnabled;
            set
            {
                if (_isEnabled != value)
                {
                    _isEnabled = value;
                    OnPropertyChanged(nameof(IsEnabled));
                }
            }
        }

        private string _name;
        [DataMember]
        public string Name
        {
            get => _name;
            set
            {
                if (_name != value)
                {
                    _name = value;
                    OnPropertyChanged(nameof(Name));
                }
            }
        }
        [DataMember]
        public Scene ParentScene { get; private set; }

        [DataMember(Name = nameof(Components))]
        private readonly ObservableCollection<Component> _components = new ObservableCollection<Component>();
        public ReadOnlyObservableCollection<Component> Components { get; private set; }

        public ICommand RenameCommand { get; private set; }
        public ICommand EnableCommand { get; private set; }

        [OnDeserialized]
        void OnDeSerialized(StreamingContext context)
        {
            if (_components != null)
            {
                Components = new ReadOnlyObservableCollection<Component>(_components);
                OnPropertyChanged(nameof(Components));
            }

            RenameCommand = new RelayCommand<string>(x =>
            {
                var oldName = _name;
                Name = x;
                Project.UndoRedo.Add(new UndoRedoAction(nameof(Name), this, oldName, x, $"Rename entity '{oldName}' to '{x}'"));
            }, x => x != _name);

            EnableCommand = new RelayCommand<bool>(x =>
            {
                var oldEnabled = _isEnabled;
                IsEnabled = x;

                Project.UndoRedo.Add(new UndoRedoAction(nameof(Name), this, oldEnabled, x,
                    x ? $"Enabled {Name}" : $"Disabled {Name}"));
            });
        }

        public GameEntity(Scene scene)
        {
            Debug.Assert(scene != null);
            ParentScene = scene;
            _components.Add(new Transform(this));
            OnDeSerialized(new StreamingContext());
        }
    }
}