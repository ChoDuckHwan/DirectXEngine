   M S B A M L   `   `   `  ����C  ?DHEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DHEditor.EditorsDHEditor.Editors  5      7 clr-namespace:DHEditor.UtilitiesDHEditor.Utilities  5      I)clr-namespace:DHEditor.Utilities.ControlsDHEditor.Utilities.Controls  5      &     DHEditor.Editors.WorldEditorView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:DHEditor.Editors     5      0utl clr-namespace:DHEditor.Utilities     5      :ctlr)clr-namespace:DHEditor.Utilities.Controls     5      $
|�True��5
        J� InputBindings  5      �� 5   
   
 �� Key$ Z��65    �� 	Modifiers$
 Ctrlf�6=    �� Command 6   �� *UndoCommand+6=   �� 5   
   $ Y��65   $
 Ctrlf�6=    6   �� *RedoCommand+6=   �� 5   
   $ S��65   $
 Ctrlf�6=    6   �� *SaveCommand+6=   .��5      �  � RowDefinitions 5   
   �� 5      $��32 �6   �� 5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $
��Undo��6   ��6$   �� *UndoCommand+�� 5      $
��Redo��6   $��32,0,0,0q�6D   ��6$   �� *RedoCommand+6D   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      �� 5      .+�5      � $��0��6    5       �� 5!      �� 5"      .+�5$      ��  #  Editor.Selected.BackgroundBrush#��[  6   ._�5%      �� $��Center=�6!   .+�5&      +  %DHEditor.Utilities.Controls.NumberBox     Value$ 0��6%      
Multiplier$ 10Q�6/     Editor.FontBrush#��[ 5'   %   +  %DHEditor.Utilities.Controls.VectorBox  5(      	   X$	 0��6%   
   Y$
 1��6+      Z$ 2��61      W$ 3��67      
VectorType$ vector2=�6=   6T     5)      $	 0��6%   $
 1��6+   $ 2��61   $ 3��67   $ vector3=�6=   6T     5*      $	 0��6%   $
 1��6+   $ 2��61   $ 3��67   $ vector4=�6=   6T   5,      5-      �� 5.      $��1��6   $��5��6,   $��Stretch=�67   $	��Top=�5/      �� 50      $��1��6   .@�51      �� $��History��6   .��52      %   DHEditor.Utilities.UndoRedoView   � DataContext 6+   �� *
UndoRedo+53      �� 54      $	��Log��6   .��55      #   DHEditor.Utilities.LoggerView  56      57      58      �� 59      $��1��6   $��5��6+   $
��Left=�65   $��Stretch=�6P   � 5:      $��1��6   $��5,0,0,0q�6#    5;      �� 5<      �� 5=      .+�5?      �� $��1��6   $��5��6,   $��Stretch=�67   $	��top=�5@      (   "DHEditor.Editors.ProjectLayoutView  5A      %   DHEditor.Editors.GameEntityView  5B      $��1��6'   5C      5D      5E      5F      