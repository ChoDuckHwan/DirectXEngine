﻿using System;
using System.Collections.Generic;
using System.Linq;
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
    /// ProjectLayoutView.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class ProjectLayoutView : UserControl
    {
        public ProjectLayoutView()
        {
            InitializeComponent();
        }

        private void OnAddGameEntity_Button_Click(object sender, RoutedEventArgs e)
        {
            var btn = sender as Button;
            var vm = btn.DataContext as Scene;
            vm.AddGameEntityCommand.Execute(new GameEntity(vm) { Name = "Empty Game Entity" });
        }

        private void OnGameEntities_ListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            GameEntityView.Instance.DataContext = null;
            var ListBox = sender as ListBox;

            var newSelection = ListBox.SelectedItems.Cast<GameEntity>().ToList();

            var previousSelection = newSelection.Except(e.AddedItems.Cast<GameEntity>()).Concat(e.RemovedItems.Cast<GameEntity>()).ToList();

            Project.UndoRedo.Add(new UndoRedoAction(
                () =>
                {
                    ListBox.UnselectAll();
                    previousSelection.ForEach(x => (ListBox.ItemContainerGenerator.ContainerFromItem(x) as ListBoxItem).IsSelected = true);
                },
                () =>
                {
                    ListBox.UnselectAll();
                    newSelection.ForEach(x => (ListBox.ItemContainerGenerator.ContainerFromItem(x) as ListBoxItem).IsSelected = true);
                },
                "Selection Changed"));

            MSGameEntity msEntity = null;
            if (newSelection.Any())
            {
                msEntity = new MSGameEntity(newSelection);
            }
            GameEntityView.Instance.DataContext = msEntity;
        }
    }
}
