   M S B A M L   `   `   `  ����K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  5      -    'SotuvPlatformasi.DebtorPayHistory_ucont   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      *localclr-namespace:SotuvPlatformasi  5      -   5        .��5      � ���#17223B  � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   � $��0��5       � ColumnDefinitions 5      �� 5      $
��1.5* �6#   �� 5      $��* �6#   .+�5      �� $��0��6   $��0 20 0 0q�6&   .+�5      �� -   5         ��Name$ 	BtnCancel��5      .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�6.   $��33��6?   $��33��6J   ��5      �� 5       �� 
TargetType" ��6    .�5      ��  �� Property � �� �� Value �#17223B6;   �� 5       � ��$ 50��66   �� 5       � ��
 �����6;   �� 5        � ��$ 50��67   �� 5!       � ��$ 22 0 0 0q�67   �� 5"       � ��$
 Left=�6D   �� 5#       � ��$ 0q�6@    �� Triggers 5$      P� 5%   "    P� Property �@J�IsMouseOver	 P� Value	 . . �5&   &   ��  � �� �#2638596C   5'   #   5)      5+      5,      �� 5.      $��Right=�5/      $��1��50      
 �� Orientation$
 
Horizontal=�6!   $��0 0 20 0q�51      .+�52      (  "System.Windows.Controls.DatePicker  -   5          Name$ DatePickerDan��52       � OverridesDefaultStyle . 
������ $��0 0 10 0q�55      
�������57   !   �� 58      $��Dan...��6   
�������$��Center=�6=   $��Center=�6X   $��Segoe UI)�6u   $
��12px(�6�   $��	0 0 123 0q�6�     59      -   5        $ DatePickerGacha��59       . 
������ $��0 0 10 0q�5<      
�������5>   !   �� 5?      $��Gacha...��6   
�������$��Center=�6?   $��Center=�6Z   $��Segoe UI)�6w   $
��12px(�6�   $��0 0 32 0q�6�   5@      5A      � 5D   
   $��1��6   .+�5E      �� -   5         ��Name$ scrollViewer��5E      $��Disabled=�61   ��5F      �� 5G      " ��6    5H      �� 5I       �� Binding 6*   �� *
HasItems+ �� ElementName$ dataGrid�� �� Value	 False6]   .a�5J   "   ��  � ��$
 Auto=�6P   5K      5M      .��5O      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridDebtorReport��5O      $   HorizontalScrollBarVisibility$
 Auto=�5P      $
��Auto��5Q         HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�5T         CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��1q�5\         SelectionMode$ Single=�6)      SelectionUnit$ FullRow=�6@   $��
20 0 20 10q�5]       � 	Resources 5^         MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%%  '        7   '  i     7  '  �    7  '�� �    �� 5_      "  6    8   .�5`      ��  �@ GridLinesVisibility$ 
Horizontal=�6D   5a      �� 5b      "  6    8   .�5c      ��  �@�FocusVisualStyle 6A   Z� �� 5d       � �� �	#FF17223B6;   �� 5e       � ��
 �����6;   �� 5f       � ��$ 0q�6@   �� 5g       � �� �#2638596<    5h      P� 5i   "    �@ 
IsSelected	 . . �5j   &   ��  � �� �#2638596C   5k   #   5n      �� 5o      "  6    8   .�5p      ��  � �� �#2638596;   �� 5q       � ��
 �����6;   �� 5r       � ��$ 44��67   �� 5s       � ��$ Center=�6I    5t      5w      �� 5y      " ��6    .�5z      ��  � �� �#2638596;   5{      5|          Columns  5~      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn!   Header$	! KOD��6-   "   Width5  /System.Windows.Controls.DataGridLengthConverter$	" 100 6Q   1	  +System.Windows.Controls.DataGridBoundColumn# 	  Binding# 6:   �� *id+6Q     5�      $! MIJOZ��6-   $
" 300* 6[   # 6<   �� *
mijoz_fish+6[     5�      $	! SOM��6-   $
" 200* 6R   # 6:   �� *som+6R     5�      $! DOLLAR��6-   $
" 200* 6X   # 6=   �� *dollar+6X     5�      $
! KURS��6-   $
" 150* 6T   # 6;   �� *kurs+6T     5�      $
! SANA��6-   $
" 200* 6T   # 6;   �� *date+6T   5�      5�      5�      5�      5�      