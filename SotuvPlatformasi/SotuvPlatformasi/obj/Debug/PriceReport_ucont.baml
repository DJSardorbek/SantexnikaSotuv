   M S B A M L   `   `   `  ����K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  5      (    "SotuvPlatformasi.PriceReport_ucont   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      *localclr-namespace:SotuvPlatformasi  5      -   5        .��5      � ���#17223B  � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5      $
��1.5* �6#   �� 5      $��* �6#   .+�5      �� $��0��5       �� Orientation$ 
Horizontal=�5      $��0 20 0 0q�5      .+�5      �� -   5         ��Name$ 	BtnCancel��5      .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�6.   $��33��6?   $��33��6J   ��5      �� 5       �� 
TargetType" ��6    .�5      ��  �� Property � �� �� Value �#17223B6;   �� 5       � ��$ 50��66   �� 5       � ��
 �����6;   �� 5        � ��$ 50��67   �� 5!       � ��$ 22 0 0 0q�67   �� 5"       � ��$
 Left=�6D   �� 5#       � ��$ 0q�6@    �� Triggers 5$      P� 5%   "   	 P� Property	 �@J�IsMouseOver
 P� Value
 . . �5&   &   ��  � �� �#2638596C   5'   #   5)      5+      �� 5,      $��Farq uz:��6   
�������$��Segoe UI)�6?   $
��20px(�6U   $��Center=�6e   $��	30 0 20 0q�6�   �� 5-      -   5         ��Name$ 
txtFarq_uz��5.      $	��0.0��5/      ���#7BC9EB$��Segoe UI)�51      $
��30px(�52      $��Center=�53      �� 55      $��Farq $:��56      
�������$��Segoe UI)�58      $
��20px(�59      $��Center=�5:      $��
200 0 20 0q�5;      �� 5<      -   5        $ txtFarq_dol��5=      $	��0.0��5>      ���#7BC9EB$��Segoe UI)�5@      $
��30px(�5A      $��Center=�5B      5C      �� 5E      $��1��6   $��0 20 0 0q�6)   .+�5F      �� $��Right=�5G      $��1��5H      $ 
Horizontal=�5I      $��0 10 0 0q�5J      .+�5K      (  "System.Windows.Controls.DatePicker  -   5          Name$ DatePickerDan��5K   !    � OverridesDefaultStyle . 
������ $��0 0 10 0q�5N      
�������5P      �� 5Q      $��Dan...��6    
�������$��Center=�6A   $��Center=�6\   $��Segoe UI)�6y   $
��12px(�6�   $��	0 0 123 0q�6�     5R      -   5        $ DatePickerGacha��5R   !    . 
������ $��0 0 10 0q�5U      
�������5W      �� 5X      $��Gacha...��6    
�������$��Center=�6C   $��Center=�6^   $��Segoe UI)�6{   $
��12px(�6�   $��0 0 32 0q�6�   5Y      5[      5\      � 5]   
   $��1��6   .+�5^      � -   5         �Name$ Basket��5^   &   $��	0 30 0 10q�6   $��1��66   $��Stretch=�6C   $
��Auto��6a   $y�Visible=�6n   .+�5_      �� -   5         ��Name$ scrollViewer��5_      $��Disabled=�65   ��5`      �� 5a      " ��6     5b      �� 5c   "    �� Binding 6.   �� *
HasItems+ �� ElementName$ dataGrid�� �� Value	 False6a   .a�5d   &   ��  � ��$
 Auto=�6T   5e   #   5g      .��5i      &   System.Windows.Controls.DataGrid  -	   5          Name$ dataGridBasket��5i      $y�Visible=�67   $   HorizontalScrollBarVisibility$
 Auto=�5j      $
��Auto��5k         HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�5n         CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .     CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��	20 0 20 0q�5v      $��1q�5w         SelectionMode$ Single=�6)      SelectionUnit$ FullRow=�6@     � 	Resources  5z         MaterialDesignDataGrid! �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%�  '        7   '  i     7  '      7  '��     �� 5{      "  6$   8!   .�5|   "   ��  �@ GridLinesVisibility$ 
Horizontal=�6H   5}      �� 5~      "  6$   8!   .�5   "   ��  �@�FocusVisualStyle 6E   Z� �� 5�   "    � �� �	#FF17223B6?   �� 5�   "    � ��
 �����6?   �� 5�   "    � ��$ 0q�6D   �� 5�   "    � �� �#2638596@   �� 5�   "    �@��TextAlignment$ Center=�6L    5�   "   P� 5�   &   	 �@ 
IsSelected
 . . �5�   *   ��  � �� �#2638596G   5�   '   5�      �� 5�      "  6$   8!   .�5�   "   ��  � �� �#2638596?   �� 5�   "    � ��
 �����6?   �� 5�   "    � ��$ 44��6;   �� 5�   "    � ��$ Center=�6O   �� 5�   "    � ��$ Center=�6M    5�   "   5�      �� 5�      " ��6$   .�5�   "   ��  � �� �#2638596?   5�      5�      "   Columns" 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn#   Header$	# KOD��61   $   
IsReadOnly$ . %   Width5  /System.Windows.Controls.DataGridLengthConverter$% 80 6g   1	  +System.Windows.Controls.DataGridBoundColumn& 	  Binding& 6>   �� *id+6g     5�      $# MAHSULOT��61   $ . $
% 300* 6q   & 6C   �� *	pr_name+6q     5�      $# AVVALGI NARX��61   $ . $	% 150 6w   & 6G   �� *	old_price+6w     5�      $# 
YANGI NARX��61   $ . $	% 150 6u   & 6E   �� *	new_price+6u     5�      $# QOLDIQ��61   $ . $	% 150 6o   & 6A   �� *	residue+6o     5�      $# 
BITTA FARQ��61   $ . $	% 150 6v   & 6E   �� *
difference+6v     5�      $# UMUMIY FARQ��61   $ . $	% 200 6w   & 6F   �� *
total_diff+6w     5�      $# VAL. O'LCHOV��61   $ . $	% 130 6t   & 6G   �� *val_ul+6t   5�      5�      5�      5�      5�      5�      