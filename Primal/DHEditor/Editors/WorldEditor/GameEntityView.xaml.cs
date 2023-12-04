using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using DHEditor.Components;
using DHEditor.GameProject;
using DHEditor.Utilities;

namespace DHEditor.Editors
{
    /// <summary>
    /// GameEntityView.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class GameEntityView : UserControl
    {
        private Action _undoAction;
        private string _propertyName;
        public static GameEntityView Instance {get; private set; }
        public GameEntityView()
        {
            InitializeComponent();
            DataContext = null;
            Instance = this;
            DataContextChanged += (_, __) =>
            {
                if (DataContext != null)
                {
                    (DataContext as MSEntity).PropertyChanged += (s, e) => _propertyName = e.PropertyName;
                }
            };
        }

        private Action GetReNameAction()
        {
            var vm = DataContext as MSEntity;
            var selection = vm.SelectedEntities.Select(entity => (entity, entity.Name)).ToList();
            return new Action(() =>
            {
                selection.ForEach(item => item.entity.Name = item.Name);
                (DataContext as MSEntity)?.Refresh();
            });
        }

        private void OnName_TextBox_GotKeyboardFocus(object sender, KeyboardFocusChangedEventArgs e)
        {
            _undoAction = GetReNameAction();
        }

        private void OnName_TextBox_LosttKeyboardFocus(object sender, KeyboardFocusChangedEventArgs e)
        {
            if (_propertyName == nameof(MSEntity.Name) && _undoAction != null)
            {
                var redoAction = GetReNameAction();
                Project.UndoRedo.Add(new UndoRedoAction(_undoAction, redoAction, "Rename Game Entity"));
                _propertyName = null;
            }

            _undoAction = null;
        }

        private Action GetIsEnabledAction()
        {
            var vm = DataContext as MSEntity;
            var selection = vm.SelectedEntities.Select(entity => (entity, entity.IsEnabled)).ToList();
            return new Action(() =>
            {
                selection.ForEach(item => item.entity.IsEnabled = item.IsEnabled);
                (DataContext as MSEntity)?.Refresh();
            });
        }

        private void OnIsEnabled_CheckBox_Click(object sender, RoutedEventArgs e)
        {
            var undoAction = GetIsEnabledAction();
            var vm = DataContext as MSEntity;
            vm.IsEnabled = (sender as CheckBox).IsChecked == true;
            var redoAction = GetIsEnabledAction();
            Project.UndoRedo.Add(new UndoRedoAction(undoAction, redoAction, vm.IsEnabled == true ? "Enable Game Entity" : "Disable Game Entity"));
        }
    }
}
