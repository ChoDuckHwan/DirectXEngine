   M S B A M L   `   `   `  ����C  ?DHEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:DHEditor.GameProjectDHEditor.GameProject  5      *    $DHEditor.GameProject.OpenProjectView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:DHEditor.GameProject     5      $	��800��5        � DataContext  5	      &   DHEditor.GameProject.OpenProject  5
   
   .��5      ��  �� CornerRadius$ 3��6   $	��700��6   $��Center=�5   	   $
��0,30q�6&   ._�5   
   �� .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   $��0,20,0,0q�6O   .+�5      �� -   5         ��Name$ projectsListBox��5   T   $	��195��6   $	��250��6&    �� SelectedIndex$ 0��5      ��5   3   �� *
Projects+��5      �� 5       �� 
TargetType" ��6    .�5      -   5        5      ��5      �� 5      .R�5      �� $	��180��6)   .+�5   "   �� $ 
Horizontal=�6-   .+�5   &   �� $��20��6,   $��20��67   $��0,0,5,0q�6[   ��6C   �� *Icon+6[   �� 5   &   $��18(�6M   $��Bahnschrift condensed)�6[   $��Center=�5   ,   ��5   0   �� *ProjectName+5   ,   5   #   �� 5   "   $��8(�6I   $��WordEllipsis=�6V   ��6,   �� *ProjectPath+6V   �� 5    "   $��8(�6B   ��6,   �� *Date+6B   5!      5"      5$      �� 5%      $	��400��6   $	��250��6%   $��5,0,0,0q�62   ��5&      �� 5'       �� ImageSource 6%   ��  �� Path$ SelectedItem.ScreenShot� �� ElementName$ projectsListBox��5)      5*      �� 5+      $ 
Horizontal=�6   $��Center=�62   $��0,30,0,0q�5,      .+�5-      �� -   5        $
��Open��5-      $��96��6(   	 �� 	IsDefault$
	 True��63   6D   �� 5.      $
��Exit��6   $��96��6(   $��30,0,0,0q�63   
 �� IsCancel$

 True��6E   5/      50      51      52      