   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  "    SotuvPlatformasi.Sotuv_ucont   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     0localclr-namespace:SotuvPlatformasi     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -   .��� ���	#FF17223B.+�� $��0 50 0 0q�  � RowDefinitions  �� $
��Auto ��� $��* ��� $
��Auto �.+�� $��0�� � ColumnDefinitions �� $��* ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��.+��� $
��Auto��$��Stretch=�$��20 0 0 0q�   SotuvHeader#��[  .��� $
��Auto��$��Stretch=� �� $��* ��� $
��Auto �.+��� $��0��$��Stretch=�$
��Auto��.+��� -    ��Name$ 	txtSearch��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Izlash�� �� TextAlignment$ Center=�$
��Auto��$	��180��$��Stretch=�$��Segoe UI)�$��18(�$��Center=��� $��1��$��Center=�$��Center=�.+�'  !MaterialDesignThemes.Wpf.PackIcon  $��5 0 0 0q�   Kind$ Search=�$��22��$��22��$��Right=�$��Center=��� $��1��.+��� -    ��Name$ btnTulov��.���� .+��� $��TO'LOV��$��Center=�$��Center=�$��18(�$��Segoe UI)�����  �� 
TargetType" ��.���  �� Property � ��	 �� Value$		 230����  � ��$	 70����  � ��$	 Segoe UI)���  � ��$	 18(���  � ��$	 10 0 0 0q���  � ��
	 �������  � ��	 �#263859��  � ��	 �#263859��  � ��$	 1q���  � ��	 �� 
 �� 
TargetType"
 ��.R���  �� CornerRadius$ 3��#��z��#��z��._��� $��Center=�$��Center=� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  � ��$	 2q���  � ��	 �#455A64��  � ��	 �#455A64�� $��3��.+��� -   $ txtKurs��.������ " ��.���  �@J�SnapsToDevicePixels	 . ��  �@�OverridesDefaultStyle	 . �� -  'System.Windows.Input.KeyboardNavigation �@ TabNavigation$
	 None=���  �@�FocusVisualStyle	 Z� ��  � ��$		 120����  � ��$	 40����  �@J�	AllowDrop	 . ��  � ��
	 �������  � ��$	 Segoe UI)���  � ��$
	 20px(���  �@��
CaretBrush
	 �������  � ��$		 230����  � ��$	 10 0 0 0q���  � ��$	 70����  �@��TextAlignment$	 Center=���  � ��	 �� "
 ��.R��� $��Border��$ 5�� �� Padding$ 
0 20 10 10q�$��1q�����   ControlLightColor �� Color# �  ���� $ #6B778D��._���  ��Name$ PART_ContentHost��$��0q� .����  �� Padding$ 4q�$
��KURS��$��20�����	#FF17223B���#6B778D$��50�� �� TextAlignment$ Center=�$��-140 -145 0 0q��� $��2��.+��� -   $ 	btnNavbat��#��[  $
��Left=�.���� .+��� $��NAVBAT��$��Center=�$��Center=�$��18(�$��Segoe UI)�� $��4��.+�]� $��	0 -5 20 0q�.+��� $��10 0 0 0q�$	��230��$��70��$��1�����#6B778D �� RadiusX$	 3px�� �� RadiusY$	 3px��$��Center=�� $	��220��$��Stretch=�$��80��$��
-220 0 0 0q�.+��� -    ��Name$ txtTulovSom��
�������$��18(�$��0 0 0 20q�$��Segoe UI)�$��Center=�$��Center=����� �� $��uz��
�������$��Segoe UI)�$��18(�$��Center=�$��Center=�$��-200 -22 0 0q��� -   $ txtTulovDollar��
�������$��18(�$��0 0 0 10q�$��Segoe UI)�$��Bottom=�$��Center=����� �� $��$��
�������$��Segoe UI)�$��18(�$��Center=�$��Center=�$��-200 35 0 0q��� $��-330 -75 0 0q�$��Center=�$��Center=�.+��� $ 4q�$��UMUMIY SUMMA��$��20�����	#FF17223B���#6B778D$	��110��� -    �Name$ Basket��$��0 0 0 10q�$��1��$��Stretch=�$
��Auto��$y�Visible=�.+��� -	   $ scrollViewer��$��Disabled=����� " �� ��  �� Binding �� *
HasItems+ �� ElementName$ dataGrid�� �� Value	 False.a���  � ��$
	 Auto=�.��&   System.Windows.Controls.DataGrid  -
     Name$ dataGridBasket��$y�Visible=�$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�    CanUserAddRows  .  !   CanUserDeleteRows! .  "   
IsReadOnly" .  #   CanUserReorderColumns# .  $   CanUserResizeColumns$ .  %   CanUserResizeRows% .  ���	#FF17223B$��	20 0 20 0q�$��1q�&   SelectionMode$& Single=�'   SelectionUnit$' FullRow=�( � 	Resources(   MaterialDesignDataGrid) �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%?  '        7  '  D     7  '  N    7  '�� �    �� "  8)   .���  �@ GridLinesVisibility$	 
Horizontal=��� "  8)   .���  �@�FocusVisualStyle	 Z� ��  � ��	 �	#FF17223B��  � ��
	 �������  � ��$	 0q���  � ��	 �#263859��  �@��TextAlignment$	 Center=� P�  �@ 
IsSelected . . ���  � ��	 �#263859�� "  8)   .���  � ��	 �#263859��  � ��
	 �������  � ��$	 44����  � ��$	 Center=���  � ��$	 Center=� �� " ��.���  � ��	 �#263859*   Columns* 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn+   Header$	+ KOD��,   
IsReadOnly, . -   Width5	  /System.Windows.Controls.DataGridLengthConverter$	- 100	 1
  +System.Windows.Controls.DataGridBoundColumn. 
  Binding. �� *
product_id+  $+ MAHSULOT��, . $
- 300*	 . �� *name+  $+ NARXI��, . $	- 200	 . �� *price+4  .System.Windows.Controls.DataGridComboBoxColumn  $+ VAL. O'LCHOV��$	- 120	 -   ComboValyuta��/   SelectedValueBinding/ �� *val+0 �� Mode$0 TwoWay=�1   DisplayMemberPath1 �� *val+2   EditingElementStyle2 �� " ��.�-   4  .System.Windows.Controls.DataGridTemplateColumn  + �� $��+��
�������$��Segoe UI)�$
��20px(�$��40��$ Center=�3   CellTemplate3 �� .R��� $ btnPlus��-   .���� $��+��
�������$
��20px(�$��Center=�$��Center=����� " ��.���  � ��$	 50����  � ��$	 30����  � ��	 �#7EBC59��  � ��	 �� "
 ��.R��� $ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��	 �#7EF059  $+ MIQDORI��$	- 200	 , . . �� *
quantity+  + �� $��-��
�������$��Segoe UI)�$
��20px(�$��40��$ Center=�3 �� .R��� $ btnMinus��-   .���� $��-��
�������$
��20px(�$��Center=�$��Center=����� " ��.���  � ��$	 50����  � ��$	 30����  � ��	 �#F75940��  � ��	 �� "
 ��.R��� $ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��	 �#FF7140  $+ SUMMA��, . $	- 200	 . �� *total+  + �� �� -   4 ��Name$4 	TbProduct��$��1��$��Stretch=�$
��Auto��$y�	Collapsed=�.+�  -   $ dataGridProduct��$
 Auto=�$	��430��$	��600��$
��Auto�� �#263859 .  $ 
Horizontal=�  .  ! .  " . # .  $ .  % .  ���	#FF17223B$��1q�$& Single=�$' FullRow=�$��	20 0 20 0q����� ( ��%?  '        7  '  D     7  '  N    7  '�� �    �� "  8)   .���  �@ GridLinesVisibility$	 
Horizontal=��� "  8)   .���  �@�FocusVisualStyle	 Z� ��  � ��	 �	#FF17223B��  � ��
	 �������  � ��$	 0q���  � ��	 �#263859��  �@��TextAlignment$	 Center=� P�  �@ 
IsSelected . . ���  � ��	 �#263859�� "  8)   .���  � ��	 �#263859��  � ��
	 �������  � ��$	 44����  � ��$	 Center=���  � ��$	 Center=� �� " ��.���  � ��	 �#263859*   $	+ KOD��$- 80	 . �� *
product_id+  $+ MAHSULOT��$
- 300*	 . �� *name+  $+ O'LCHOV��$	- 100	 . �� *measurement+  $+ ZAVOD��$
- 150*	 . �� *
preparer+  $+ 	TAN NARXI��$	- 100	 . �� *	t_price+  $+ NARXI��$	- 100	 . �� *price+  $+ VAL. O'LCHOV��$	- 150	 . �� *val_ul+  $+ OMBORDA��$	- 100	 . �� *
quantity+  $+ 
SHTRIX KOD��$	- 110	 . �� *	barcode+� $��2��$��0 0 0 0q� �� $��* ��� $��* �.+��� $��0��.+��� -   $ 	BtnAsosiy��.���� 5 �� Orientation$5 
Horizontal=�$	��150��.+��� $��Resources/Asosiy.png��$��24��$��24��$��13 0 0 0q��� $��Asosiy��$��25 0 0 0q����� " ��.���  � ��$		 155����  � ��$	 60����  � ��$	 Segoe UI)���  � ��$	 18(���  � ��
	 �������  � ��	 �#263859��  � ��	 �#263859��  � ��$
	 Left=���  � ��$	 1q���  � ��$	 	20 0 0 45q���  � ��	 �� "
 ��.R��� $ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��$	 2q���  � ��	 �#455A64��  � ��	 �#455A64� $��1��.+��� -   $ btnTozalash��#��[  $	��150��$��60��$��Right=�$��0 -45 200 0q�.���� $5 
Horizontal=�.+��� $��Resources/bekor.png��$��24��$��24���� $��Tozalash��$��Center=�$��Center=�$��18(�$��Segoe UI)�$��15 0 0 0q��� -   $ btnCart��$��Right=�.���� $	��150��$5 
Horizontal=�$��50��.+��� $��Resources/Kr_olish.png��$��24��$��24��$��13 0 0 0q��� $��Savatchaga qo'shish��$
��Wrap=�$��16(�$��Center=�$��0 0 0 0q�$	��110��$ Center=�$��Center=����� " ��.���  � ��$		 155����  � ��$	 60����  � ��$	 Segoe UI)���  � ��$	 16(���  � ��
	 �������  � ��	 �#263859��  � ��	 �#263859��  � ��$	 1q���  � ��$	 	0 0 20 45q���  � ��$	 Right=���  � ��	 �� "
 ��.R��� $ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��$	 2q���  � ��	 �#455A64��  � ��	 �#455A64