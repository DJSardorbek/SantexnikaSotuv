   M S B A M L   `   `   `  ����K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  5      %    SotuvPlatformasi.YuqlamaFaktura   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      *localclr-namespace:SotuvPlatformasi  5      -   5        .��5      � ���#17223B  � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   � $��0��6   $��	0 0 25 20q�6   .+�5      �� -   5         ��Name$ 	txtSearch��5         	TextBoxes#��[  6e   $��50��6�   $��0 20 0 0q�6�   � 5      ���#17223B$��20��6(   $	��100��64   $��
50 -30 0 0q�6@   $
��Left=�6T   .+�5      �� $��Maxsulot��6   ���#6B778C$��Segoe UI)�6A   $
��16px(�6W   $��Center=�6g   $��Center=�6�   5      '  !MaterialDesignThemes.Wpf.PackIcon  5      ���#6B778C   Kind$ Search=�6;   $��	0 20 20 0q�6I   $��25��6\   $��25��6g   $��Right=�6s   $��Center=�6�   5      � 5   
   -   5         �Name$ Basket��5   !   $��0 0 0 10q�6   $��1��61   $��Stretch=�6>   $
��Auto��6\   $y�Visible=�6i   .+�5      �� -   5         ��Name$ scrollViewer��5      $��Disabled=�61   ��5      �� 5       �� 
TargetType" ��6    �� Triggers 5       �� 5!       �� Binding 6*   �� *
HasItems+ �� ElementName$ dataGrid��	 �� Value		 False6]   .a�5"   "   �� 
 �� Property
 � �� �� Value$
 Auto=�6P   5#      5%      .��5'      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridBasket��5'      $y�Visible=�63   $   HorizontalScrollBarVisibility$
 Auto=�5)      $
��Auto��5*         HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�5-         CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .     CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��0 0 20 0q�55      $��1q�56         SelectionMode$ Single=�6)      SelectionUnit$ FullRow=�6@    � 	Resources 59        MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell P� Property P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%�  '        7  '  i     7  '      7  '��     �� 5:      "  6    8   .�5;      �� 
 �@ GridLinesVisibility$ 
Horizontal=�6D   5<      �� 5=      "  6    8   .�5>      �� 
 �@�FocusVisualStyle 6A   Z� �� 5?      
 � �� �	#FF17223B6;   �� 5@      
 � ��
 �����6;   �� 5A      
 � ��$ 0q�6@   �� 5B      
 � �� �#2638596<   �� 5C      
 �@��TextAlignment$ Center=�6H    5D      P� 5E   "    �@ 
IsSelected . . �5F   &   �� 
 � �� �#2638596C   5G   #   5J      �� 5K      "  6    8   .�5L      �� 
 � �� �#2638596;   �� 5M      
 � ��
 �����6;   �� 5N      
 � ��$ 44��67   �� 5O      
 � ��$ Center=�6K   �� 5P      
 � ��$ Center=�6I    5Q      5T      �� 5V      " ��6    .�5W      �� 
 � �� �#2638596;   5X      5Y         Columns 5[      0  *System.Windows.Controls.DataGridTextColumn  5\      ,  &System.Windows.Controls.DataGridColumn   Header$	 KOD��6-      
IsReadOnly .     Width5  /System.Windows.Controls.DataGridLengthConverter$	  100 6k   1  +System.Windows.Controls.DataGridBoundColumn!   Binding! 6:   �� *
product_id+6k     5]      $ MAHSULOT��6-    . $
  300* 6m   ! 6?   �� *	pr_name+6m     5^      $ MIQDORI��6-    . $
  200* 6m   ! 6>   �� *
quantity+6m     5_      $ 
SHTRIX KOD��6-    . $
  200* 6o   ! 6A   �� *	barcode+6o   5c      5e      5f      �� 5h   
   -   5        " ��Name$" 	TbProduct��5h      $��1��6(   $��Stretch=�65   $
��Auto��6S   $y�	Collapsed=�6`   .+�5j        -   5        $ dataGridProduct��5j      $
 Auto=�5o      $	��430��5p      $	��600��5q      $
��Auto��5r       �#263859 .  $ 
Horizontal=�5u       .   .   .  .   .   .  ���	#FF17223B$��1q�5}      $ Single=�6)   $ FullRow=�6@   $��0 0 20 0q�5~      ��5l      ��  5�      ��%�  '        7  '  i     7  '      7  '��     �� 5�      "  6   8   .�5�      �� 
 �@ GridLinesVisibility$ 
Horizontal=�6@   5�      �� 5�      "  6   8   .�5�      �� 
 �@�FocusVisualStyle 6=   Z� �� 5�      
 � �� �	#FF17223B67   �� 5�      
 � ��
 �����67   �� 5�      
 � ��$ 0q�6<   �� 5�      
 � �� �#26385968   �� 5�      
 �@��TextAlignment$ Center=�6D    5�      P� 5�       �@ 
IsSelected . . �5�   "   �� 
 � �� �#2638596?   5�      5�      �� 5�      "  6   8   .�5�      �� 
 � �� �#26385967   �� 5�      
 � ��
 �����67   �� 5�      
 � ��$ 44��63   �� 5�      
 � ��$ Center=�6G   �� 5�      
 � ��$ Center=�6E    5�      5�      �� 5�      " ��6   .�5�      �� 
 � �� �#26385967   5�      5�       5�        5�      $	 KOD��6)   $  80 6U   ! 66   �� *
product_id+6U     5�      $ MAHSULOT��6)   $
  300* 6T   ! 6;   �� *name+6T     5�      $ O'LCHOV��6)   $	  100 6Z   ! 6:   �� *measurement+6Z     5�      $ ZAVOD��6)   $
  150* 6U   ! 68   �� *
preparer+6U     5�      $ 	TAN NARXI��6)   $	  100 6X   ! 6<   �� *	t_price+6X     5�      $ NARXI��6)   $	  100 6R   ! 68   �� *price+6R     5�      $ VAL. O'LCHOV��6)   $	  150 6Z   ! 6?   �� *val_ul+6Z     5�      $ OMBORDA��6)   $	  100 6W   ! 6:   �� *
quantity+6W     5�      $ 
SHTRIX KOD��6)   $	  110 6Y   ! 6=   �� *	barcode+6Y   5�      5�      � 5�   
   $��2��6   $��Center=�6   $��Right=�67   .+�5�      �� -   5        # ��Name$# 	btnSubmit��5�        	btnSetHed#��[ 5�      $	��250��68   $��50��6D   $��10 10 20 10q�6P   .��5�      �� $��	Yakunlash��6   
�������$
��22px(�6@   5�      5�      5�      5�      