   M S B A M L   `   `   `  ����K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  5      $    SotuvPlatformasi.Hisobot_ucont   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:SotuvPlatformasi     5      -   5        .��5	      � ���#17223B.+�5
   
   � $��0 30 0 0q�6     � RowDefinitions  5      �� 5      $
��Auto �6    �� 5      $��* �6    �� 5      $
��Auto �6    .+�5      � $��0��6   $��0 0 0 20q�6     � ColumnDefinitions 5      �� 5      $
��1.5* �6'   �� 5      $��* �6'   .+�5      �� $��0��6    �� Orientation$ 
Horizontal=�6-   .+�5      �� $��Jami Savdo uz:��6    
�������$��Segoe UI)�6I   $
��20px(�6_   $��Center=�6o   $��	30 0 20 0q�6�   �� 5      -   5         ��Name$ txtJamiSavdo_uz��5      $	��0.0��5      ���#7BC9EB$��Segoe UI)�5      $
��30px(�5      $��Center=�5       �� 5"      $��Jami Savdo $:��5#      
�������$��Segoe UI)�5%      $
��20px(�5&      $��Center=�5'      $��
200 0 20 0q�5(      �� 5)      -   5        $ txtJamiSavdo_dol��5*      $	��0.0��5+      ���#7BC9EB$��Segoe UI)�5-      $
��30px(�5.      $��Center=�5/      50      �� 52      $��Right=�6   $��1��69   $ 
Horizontal=�6I   .+�53      (  "System.Windows.Controls.DatePicker  -   5          Name$ DatePickerDan��53   !    � OverridesDefaultStyle . 
������ $��0 0 10 0q�56      
�������58   !   �� 59      $��Dan...��6    
�������$��Center=�6A   $��Center=�6\   $��Segoe UI)�6y   $
��12px(�6�   $��	0 0 123 0q�6�     5:      -   5        $ DatePickerGacha��5:   !    . 
������ $��0 0 10 0q�5=      
�������5?   !   �� 5@      $��Gacha...��6    
�������$��Center=�6C   $��Center=�6^   $��Segoe UI)�6{   $
��12px(�6�   $��0 0 32 0q�6�   5A      5C      � 5G      $��0 0 0 10q�6   $��1��6%   $��Stretch=�62   $
��Auto��6P   .+�5H      �� -   5         ��Name$ scrollViewer��5H      $��Disabled=�65   ��5I      �� 5J       �� 
TargetType" ��6     �� Triggers 5K      �� 5L   "   	 �� Binding	 6.   �� *
HasItems+
 �� ElementName$
 dataGridHisobot�� �� Value	 False6h   .a�5M   &   ��  �� Property � �� �� Value$
 Auto=�6T   5N   #   5P      .��5R      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridHisobot��5R      $   HorizontalScrollBarVisibility$
 Auto=�5S      $
��Auto��5T         HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�5W         CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��1q�5_         SelectionMode$ Single=�6)      SelectionUnit$ FullRow=�6@   $��
25 0 20 10q�5`       � 	Resources 5c         MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell P� Property P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%[  '        7   '  i     7  '      7  '�� �    �� 5d      "  6$   8   .�5e   "   ��  �@ GridLinesVisibility$ 
Horizontal=�6H   5f      �� 5g      "  6$   8   .�5h   "   ��  �@�FocusVisualStyle 6E   Z� �� 5i   "    � �� �	#FF17223B6?   �� 5j   "    � ��
 �����6?   �� 5k   "    � ��$ 0q�6D   �� 5l   "    � �� �#2638596@   �� 5m   "    �@��TextAlignment$ Center=�6L    5n   "   P� 5o   &    �@ 
IsSelected . . �5p   *   ��  � �� �#2638596G   5q   '   5t      �� 5u      "  6$   8   .�5v   "   ��  � �� �#2638596?   �� 5w   "    � ��
 �����6?   �� 5x   "    � ��$ 44��6;   �� 5y   "    � ��$ Center=�6O    5z   "   5}      �� 5      " ��6$   .�5�   "   ��  � �� �#2638596?   5�      5�         Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn    Header$  NAQD PUL��61   !   Width5  /System.Windows.Controls.DataGridLengthConverter$	! 110 6\   1  +System.Windows.Controls.DataGridBoundColumn"   Binding" 6C   �� *naqd+6\     5�      $  PLASTIK��61   $	! 110 6^   " 6B   �� *	plastik+6^     5�      $  PUL O'TKAZMA��61   $	! 130 6d   " 6G   �� *
transfer+6d     5�      $  	NASIYA uz��61   $	! 120 6c   " 6D   �� *
nasiya_som+6c     5�      $  NASIYA $��61   $	! 120 6e   " 6C   �� *nasiya_dollar+6e     5�      $  	VALYUTA $��61   $	! 100 6a   " 6D   �� *
currency+6a     5�      $  	SKIDKA uz��61   $	! 100 6c   " 6D   �� *
skidka_som+6c     5�      $  SKIDKA $��61   $	! 100 6e   " 6C   �� *skidka_dollar+6e     5�      $  	QAYTUV uz��61   $	! 100 6c   " 6D   �� *
qaytuv_som+6c     5�      $  QAYTUV $��61   $	! 100 6e   " 6C   �� *qaytuv_dollar+6e     5�      $  XODIMLAR��61   $
! 200* 6`   " 6C   �� *
employee+6`   5�      5�      5�      �� 5�      $��2��6   .+�5�      �� -   5        # ��Name$# 	BtnAsosiy��5�      .��5�      �� $ 
Horizontal=�6!   $	��150��6:   .+�5�      �� $��Resources/Asosiy.png��6    $��24��6>   $��24��6I   $��13 0 0 0q�6U   �� 5�      $��Asosiy��6$   $��25 0 0 0q�62   5�      ��5�      �� 5�      " ��6    .�5�      ��  � ��$	 155��66   �� 5�       � ��$ 60��67   �� 5�       � ��$ Segoe UI)�6;   �� 5�       � ��$ 18(�69   �� 5�       � ��
 �����6;   �� 5�       � �� �#2638596;   �� 5�       � �� �#2638596<   �� 5�       � ��$
 Left=�6D   �� 5�       � ��$ 1q�6@   �� 5�       � ��$ 	20 0 0 30q�67   �� 5�       � �� 5�   "   �� 5�   &   $ �� 
TargetType"$ ��66   .R�5�   *   �� % �� CornerRadius$% 3��5�   -   #��z��5�   -   #��z��5�   -   ._�5�   .   �� $��Center=�6?   $��Center=�6Z   5�   /   5�   +   5�   '   5�       5�      P� 5�   "    �@J�IsMouseOver . . �5�   &   ��  � ��$ 2q�6H   �� 5�   &    � �� �#455A646D   �� 5�   &    � �� �#455A646C   5�   #   5�      5�      5�      5�      5�      5�      