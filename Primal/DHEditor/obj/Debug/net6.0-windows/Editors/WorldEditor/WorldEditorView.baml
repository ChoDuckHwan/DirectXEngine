   M S B A M L   `   `   `  ����C  ?DHEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DHEditor.EditorsDHEditor.Editors  5      7 clr-namespace:DHEditor.UtilitiesDHEditor.Utilities  5      &     DHEditor.Editors.WorldEditorView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:DHEditor.Editors     5      0utl clr-namespace:DHEditor.Utilities     5      $
|�True��5        J� InputBindings  5
      �� 5   
   
 �� Key$ Z��65    �� 	Modifiers$
 Ctrlf�6=    �� Command 6   �� *UndoCommand+6=   �� 5   
   $ Y��65   $
 Ctrlf�6=    6   �� *RedoCommand+6=   �� 5   
   $ S��65   $
 Ctrlf�6=    6   �� *SaveCommand+6=   .��5      �  � RowDefinitions 5   
   �� 5      $��32 �6   �� 5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $
��Undo��6   ��6$   �� *UndoCommand+�� 5      $
��Redo��6   $��32,0,0,0q�6D   ��6$   �� *RedoCommand+6D   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      �� 5      .+�5      � $��0��6    5      �� 5      �� 5       .+�5"      �� $��1��6   $��5��6,   $��Stretch=�67   $	��Top=�5#      �� 5$      $��1��6   .@�5%      �� $��History��6   .��5&      %   DHEditor.Utilities.UndoRedoView   � DataContext 6+   �� *
UndoRedo+5'      �� 5(      $	��Log��6   .��5)      #   DHEditor.Utilities.LoggerView  5*      5+      5,      �� 5-      $��1��6   $��5��6+   $
��Left=�65   $��Stretch=�6P   � 5.      $��1��6   $��5,0,0,0q�6#    5/      �� 50      �� 51      .+�53      �� $��1��6   $��5��6,   $��Stretch=�67   $	��top=�54      (   "DHEditor.Editors.ProjectLayoutView  55      %   DHEditor.Editors.GameEntityView  56      $��1��6'   57      58      59      5:      