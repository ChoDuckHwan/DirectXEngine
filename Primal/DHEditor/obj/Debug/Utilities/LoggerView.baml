   M S B A M L   `   `   `  ����C  ?DHEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:DHEditor.UtilitiesDHEditor.Utilities  5      #    DHEditor.Utilities.LoggerView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:DHEditor.Utilities     5      .��5	      ]� .+�5
   
   �� $��32��6   $	��Top=�6      Editor.Window.GrayBrush3#��[  62     J� Effect  5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         Opacity$	 0.3Q�6      
BlurRadius$ 10Q�6-      ShadowDepth$ 0Q�6=   ._�5   
   ��  �� Orientation$ 
Horizontal=�6   $��Right=�6.   $	��4,0q�6J   $��Center=�6W   .+�5      �� -   5        $��Clear��5      $	��1,0q�6%   $|�False��6O   d� 5      -   5         d�Name$ 
toggleInfo��5       d� 	IsChecked$
 TrueY�5      $
��info��6,   $	��1,0q�6;    � ToolTip$! Toggle information messages��6H     Editor.GreenBrush#��[ 5   /   6_   d� 5      -   5        $ toggleWarnings��5      $
 TrueY�5      $
��warn��6,   $	��1,0q�6;   $ Toggle warning messages��6H     Editor.OrangeBrush#��[ 5   3   6d   d� 5      -   5        $ toggleErrors��5      $
 TrueY�5      $��error��6,   $	��1,0q�6<   $ Toggle error messages��6I     Editor.RedBrush#��[ 5   1   6_   5      5      �� 5   
   -   5         ��Name$ ScrollViewer��5   _   $
��Auto=�6   $
��Auto=�6:   .��5      �� ��6   ��   DHEditor.Utilities.Logger	   FilteredMessages
 �� Source#
 Z	 ��5      �� 5      .R�5      �� 5      ��5       �� 5!      .R�5"      ]�  6$   �� *
MetaData+��5#      �� 5$   "    �� 
TargetType" ]�6(   .�5%   &   ��  �� Property � �� �� Value
 ���� 6C    �� Triggers 5&   &   P� 5'   *    P� Property �@J�IsMouseOver P� Value$
 True��6I   . �5(   .   ��  � ��
 �����6K   5)   +   5+   #   .+�5-      �� $	��5,0q�6U   ��6(   �� *Time+ �� StringFormat$ hh:mm:ss����5.   "   �� 5/   &   " ��6,   .�50   *   ��  � ��
 ����6G    51   *   �� 52   .   $  DHEditor.Utilities.MessageType   Warning �� Value# Z 6Z    �� Binding 6:   �� *MessageType+.a�53   2   ��  � �� �	#ffffbb226O   54   /   �� 55   .      Error# Z 6Z    6:   �� *MessageType+.a�56   2   ��  � �� �	#ffff44556O   57   /   59   '   5;      �� 5<      $
��Wrap=�6E   ��6(   �� *MessageType+6E   5=      5>      5@      5A      5B      5C      