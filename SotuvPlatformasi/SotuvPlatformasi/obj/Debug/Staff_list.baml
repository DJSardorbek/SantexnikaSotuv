   M S B A M L   `   `   `  ����K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  5      !    SotuvPlatformasi.Staff_list   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:SotuvPlatformasi     5      -   5          N� Title$  
Staff_list��5	      .��5      � ���#17223B.+�5   
   � $��0 20 0 0q�6    � RowDefinitions 5      �� 5      $��* �6    �� 5      $
��Auto �6    .+�5      � $��0 0 0 10q�6   $��0��6%   $��Stretch=�62   $
��Auto��6P   $
��Auto��6]   .+�5      �� -   5         ��Name$ scrollViewer��5      $��Disabled=�65   ��5      �� 5       �� 
TargetType" ��6     �� Triggers 5      �� 5   "    �� Binding 6.   �� *
HasItems+ �� ElementName$ dataGridStaffs�� �� Value	 False6g   .a�5   &   ��  �� Property � ��	 �� Value$
	 Auto=�6T   5   #   5      .��5      &   System.Windows.Controls.DataGrid  -   5        
  Name$
 dataGridStaffs��5      $   HorizontalScrollBarVisibility$
 Auto=�5      $
��Auto��5         HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�5!         CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��1q�5)         SelectionMode$ Single=�6)      SelectionUnit$ FullRow=�6@   $��
20 0 20 10q�5*       � 	Resources 5-         MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell P� Property P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%[  '        7   '  i     7  '      7  '�� �    �� 5.      "  6$   8   .�5/   "   ��  �@ GridLinesVisibility$	 
Horizontal=�6H   50      �� 51      "  6$   8   .�52   "   ��  �@�FocusVisualStyle	 6E   Z� �� 53   "    � ��	 �	#FF17223B6?   �� 54   "    � ��
	 �����6?   �� 55   "    � ��$	 0q�6D   �� 56   "    � ��	 �#2638596@   �� 57   "    �@��TextAlignment$	 Center=�6L    58   "   P� 59   &    �@ 
IsSelected . . �5:   *   ��  � ��	 �#2638596G   5;   '   5>      �� 5?      "  6$   8   .�5@   "   ��  � ��	 �#2638596?   �� 5A   "    � ��
	 �����6?   �� 5B   "    � ��$	 Center=�6O   �� 5C   "    � ��$	 44��6;    5D   "   5G      �� 5I      " ��6$   .�5J   "   ��  � ��	 �#2638596?   5K      5L         Columns 5N      0  *System.Windows.Controls.DataGridTextColumn  5O      ,  &System.Windows.Controls.DataGridColumn   Header$	 ISM��61      Width5  /System.Windows.Controls.DataGridLengthConverter$
 200* 6]   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *
first_name+6]     5P      $ FAMILIYA��61   $
 200* 6a    6C   �� *	last_name+6a     5Q      $ LAVOZIM��61   $
 200* 6\    6B   �� *staff+6\     5R      $ PAROL��61   $
 200* 6]    6@   �� *
password+6]   4  .System.Windows.Controls.DataGridTemplateColumn  5S       5T   "   �� 5U   &   $��OLIB TASHLASH��60   $	��150��6E    �� TextAlignment$ Center=�6Q       CellTemplate  5W   "   �� 5X   &   .R�5Y   *   ��  
 st_del#��[ 61   .��5Z   .   �� $��Resources/st_del.png��64   $��25��6R   $��25��6]   5[   +   5\   '   5^      5`      5a      5b      �� 5c      $��1��6   .+�5d      �� -   5        ! ��Name$! 	BtnAsosiy��5d      .��5e      �� " �� Orientation$" 
Horizontal=�6!   $	��150��6:   .+�5f      �� $��Resources/Asosiy.png��6    $��24��6>   $��24��6I   $��13 0 0 0q�6U   �� 5g      $��Asosiy��6$   $��25 0 0 0q�62   5h      ��5i      �� 5j      " ��6    .�5k      ��  � ��$		 155��66   �� 5l       � ��$	 60��67   �� 5m       � ��$	 Segoe UI)�6;   �� 5n       � ��$	 18(�69   �� 5o       � ��
	 �����6;   �� 5p       � ��	 �#2638596;   �� 5q       � ��	 �#2638596<   �� 5r       � ��$
	 Left=�6D   �� 5s       � ��$	 1q�6@   �� 5t       � ��$	 	20 0 0 30q�67   �� 5u       � ��	 5v   "   �� 5w   &   # �� 
TargetType"# ��66   .R�5x   *   �� $ �� CornerRadius$$ 3��5y   -   #��z��5z   -   #��z��5{   -   ._�5|   .   �� $��Center=�6?   $��Center=�6Z   5~   /   5   +   5�   '   5�       5�      P� 5�   "    �@J�IsMouseOver . . �5�   &   ��  � ��$	 2q�6H   �� 5�   &    � ��	 �#455A646D   �� 5�   &    � ��	 �#455A646C   5�   #   5�      5�      5�      5�      5�      5�      