   M S B A M L   `   `   `  ����C  ?DHEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:DHEditor.GameProjectDHEditor.GameProject  5   	   /    )DHEditor.GameProject.ProjectBrowserDialog   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:DHEditor.GameProject     5   	     � 
ResizeMode$  NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5	   	    � Title$ ProjectBrowserDialog��5
   	   $	��600��6&   $	��800��63      PrimalDialogStyle#��[  5   	    � 	Resources 5       �� 
TargetType �� Property �� Value  Editor.Disabled.FontBrush �� 
TargetType J� Effect3  -System.Windows.Media.Effects.DropShadowEffect	   
BlurRadius
   ShadowDepth   Opacity �� Triggers P� Property P� Value  Editor.Window.GrayBrush4 ]� 
Conditions �� Property �� Value  Editor.FontBrush��%�  'd�       7  7  7  �� 5   
   " d�6   .�5      ��  � ��$ 32(�6)   �� 5       � ��$ Bahnschrift condensed)�6+   �� 5       � ��
 ���� 6+   �� 5       � ��
 ���� 6,   �� 5       � ��8   6+   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � �� 5      �� 5      " d�6&   .R�5      �� #��z��6$   ��6L   Z�  5        5   "   $	 2Q�63   $
 1Q�6B   $	 0.6Q�6R   5       5      P� 5       � {�$ False��6;   . �5   "   �� 8   � ��6?   5       P� 5!       �@d�	IsChecked$
 TrueY�6;   . �5"   "   ��  � ��
 �����6?   5#      ]� 5$       5%   "   �� 5&   &    �@J�IsMouseOver$
 True��6G   �� 5'   &    �@d�	IsChecked$ FalseY�6E   ./�5)   "   �� 8   � ��6?   5*      5,      5.      5/      50      .��51      �  � RowDefinitions 52   
   �� 53      $
��auto �6   �� 54      .+�56   
   �� -   5         ��Name$ canvas��56      .+�57      �� -   5         ��Name$ highlightRect��59       �� Left$	 200��6+    J� Opacity$	 0.3Q�6=   ��57      ��  �� Path$ ActualWidth� �� ElementName$ createProjectButton����58      �� $ ActualHeight�$ canvas�� 5:      -  'System.Windows.Media.Effects.BlurEffect  5;         Radius$ 10Q�6!      
KernelType$ Gaussian=�6-   ��5=      
� 5>       
� GradientOrigin$ 0.5,1&�6*    
� Center$ 0.5,1&�6A    
� RadiusY$ 2Q�6P   ��5@      �  � Color$ White��6+    � Offset$ 0Q�69   � 5A      $ Transparent��6+   $ 1Q�6?   5C        J� OpacityMask  5E      
� 5F      $ 0.5,1&�6*   $ 0.5,1&�6A   $	 0.5Q�6P   ��5H      � $ White��6+   $ 0Q�69   � 5I      $ Transparent��6+   $ 1Q�6?   5K      5N      5O      �� 5P   
   $��2��6   $��Bottom=�6   $
��40,0q�6:   ��5Q      �� 5R      ��5T      � $ Transparent��6'   $ 0Q�6;   � 5U        Editor.Disabled.FontColor# [ 6'   $
 0.33Q�6Z   � 5V      # [ 6'   $
 0.66Q�6Z   � 5W      $ Transparent��6'   $ 1Q�6;   5Y      5[      �� 5\   
   ! �� Orientation$! 
Horizontal=�6   $��Center=�6.   .+�5]      d� -   5        " d�Name$" openProjectButton��5]   2   $��OPEN PROJECT��6   $��
10,20,0,20q�6M   # d� 	IsChecked$
# TrueY�5^   4   d� 5_      -   5        $" createProjectButton��5_   4   $��CREATE PROJECT��6   $��
40,20,0,20q�6Q   $# FalseY�5`   4   5a      �� 5b   
   -   5        $ ��Name$$ browserContent��5b   ;   $! 
Horizontal=�6   $��1��6.    5c        5d      $	 0.6Q�6#   $	 15Q�61   $
 2Q�6A   .+�5f      *   $DHEditor.GameProject.OpenProjectView  -   5        %  Name$% openProjectView��5f   $   )   #DHEditor.GameProject.NewProjectView  5g      -   5        &  Name$& newProjectView��5g   #   ${�False��6;   $��	800,0,0,0q�6M   5h      5i      5j      