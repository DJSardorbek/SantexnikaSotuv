   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  *    $SotuvPlatformasi.ReturnDeliver_ucont   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  *localclr-namespace:SotuvPlatformasi  -     � 	Resources   �� 
TargetType   	txtNasiya �� Property �� Value-  'System.Windows.Input.KeyboardNavigation �� 
TargetType �� CornerRadius �� Padding  ControlLightColor �� Color ��Name��%  &	        �� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@ TabNavigation$
 None=���  �@�FocusVisualStyle Z� ��  � ��$	 120����  � ��$ 50����  �@J�	AllowDrop . ��  � ��
 �������  � ��$ Segoe UI)���  � ��$
 16px(���  �@��
CaretBrush
 �������  � �� �� " ��.R��� $��Border��$ 10��$ 30 15 10 10q�$��0q����� # �  ���� $ #6B778C��._��� $ PART_ContentHost��$��0q�.��� ���	#FF17223B	 � RowDefinitions	 �� $
��Auto ��� $��* ��� $
��Auto �.+�� $��0��
 � ColumnDefinitions
 �� $��* ��� $��* �.+�� $��1��.+��� $��Right=�$ 10�����#6B778C$��1q�$��
0 30 200 0q�$	��350��._�� .+��� -    ��Name$ 
txtDeliver��#��[  $	��275��$
��Left=�$
��14px(�$��Klientni tanlang...���� $��Yetkazib beruvchi��$��Segoe UI)�$
��15px(����#6B778C$��-190 -55 0 0q����#17223B$��Center=�$��Center=� �� TextAlignment$ Center=�$	��130���� -    ��Name$ 	btnChoose��  SotuvHeader#��[ $��40��$��40��$��	298,5,0,5q�.���� $	��...���� -   $ 	btnCreate��#��[ $	��150��$��50��$��	0 30 30 0q�$��Right=�.����  �� Orientation$ 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Create=�$��20��$��20��$��0 0 10 0q�$��Center=��� $��Yaratish��� $��0��$��0 0 30 0q�
 �� $��* ��� $	��170 �.+�� .+��� -   $ 	txtSearch��  	TextBoxes#��[ $��50��$��	20 20 0 0q�� ���#17223B$��20��$	��200��$��
50 -35 0 0q�$
��Left=�.+��� $!��Maxsulot nomi ... shtrix...�����#6B778C$��Segoe UI)�$
��16px(�$��Center=�$��Center=�  ���#6B778C$ Search=�$��0 20 0 0q�$��25��$��25��$��Right=�$��Center=�� $��1��.+��� -   $ txtKurs��.������ " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@ TabNavigation$
 None=���  �@�FocusVisualStyle Z� ��  � ��$ 60����  � ��$ 40����  �@J�	AllowDrop . ��  � ��
 �������  � ��$ Segoe UI)���  � ��$
 20px(���  �@��
CaretBrush
 �������  � ��$	 150����  � ��$ 	10 20 0 0q���  � ��$ 50����  �@��TextAlignment$ Center=���  � �� �� " ��.R��� $��Border��$ 5��$ 
0 10 10 10q�$��1q����� # �  ���� $ #6B778D��._��� $ PART_ContentHost��$��0q� �� Triggers .����  �� Padding$ 4q�$
��Kurs��$��20�����	#FF17223B���#6B778D$��50��$ Center=�$��-70 -40 0 0q�� -    �Name$ Basket��$��1��$��0 20 0 0q�.+��� -   $ scrollViewer��$��Disabled=����� " �� ��  �� Binding �� *
HasItems+ �� ElementName$ dataGrid�� �� Value	 False.a���  � ��$
 Auto=�.��&   System.Windows.Controls.DataGrid  -	     Name$ dataGridBasket��$y�Visible=�$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�   CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .     CanUserReorderColumns .     CanUserResizeColumns .      CanUserResizeRows  .  ���	#FF17223B$��
20 0 20 20q�$��1q�!   SelectionMode$! Single=�"   SelectionUnit$" FullRow=�    MaterialDesignDataGrid# �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell$ P� Property% P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%?  '        7  '  D     7  '  N    7  '�� �    �� "  8#   .���  �@ GridLinesVisibility$ 
Horizontal=��� "  8#   .���  �@�FocusVisualStyle Z� ��  � �� �	#FF17223B��  � ��
 �������  � ��$ 0q���  � �� �#263859��  �@��TextAlignment$ Center=� P� $ �@ 
IsSelected% . . ���  � �� �#263859�� "  8#   .���  � �� �#263859��  � ��
 �������  � ��$ 44����  � ��$ Center=���  � ��$ Center=� �� " ��.���  � �� �#263859&   Columns& 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn'   Header$	' KOD��(   
IsReadOnly( . )   Width5  /System.Windows.Controls.DataGridLengthConverter$) 80 1	  +System.Windows.Controls.DataGridBoundColumn* 	  Binding* �� *id+  $' MAHSULOT��( . $
) 300* * �� *	pr_name+  $' ZAVOD��( . $
) 200* * �� *
preparer+  $' O'LCHOV��( . $	) 100 * �� *measurement+  $' TAN NARX��( . $	) 150 * �� *
tan_narx+  $' SOTISH NARX��( . $	) 150 * �� *sotish_narx+  $' VAL. O'LCHOV��( . $	) 150 * �� *val_ul+  $' QAYT. MIQDOR��( . $	) 150 * �� *qayt_miqdor+�� -
   + ��Name$+ 	TbProduct��$��1��$��Stretch=�$
��Auto��$y�	Collapsed=�$��0 20 0 0q�.+�  -   $ dataGridProduct��$
 Auto=�$	��450��$
��Auto�� �#263859 .  $ 
Horizontal=� .   .   .  .   .    .  ���	#FF17223B$��1q�$! Single=�$" FullRow=�$��
20 0 20 20q�����   ��%;  '        7  '  D     7  '  N    7  '�� �    �� "  8#   .���  �@ GridLinesVisibility$ 
Horizontal=��� "  8#   .���  �@�FocusVisualStyle Z� ��  � �� �	#FF17223B��  � ��
 �������  � ��$ 0q���  � �� �#263859��  �@��TextAlignment$ Center=� P� $ �@ 
IsSelected% . . ���  � �� �#263859�� "  8#   .���  � �� �#263859��  � ��
 �������  � ��$ 44����  � ��$ Center=���  � ��$ Center=��� " ��.���  � �� �#263859&   $	' KOD��$) 80 * �� *
product_id+  $' MAHSULOT��$
) 300* * �� *name+  $' O'LCHOV��$	) 100 * �� *measurement+  $' ZAVOD��$
) 150* * �� *
preparer+  $' 	TAN NARXI��$	) 100 * �� *	t_price+  $' NARXI��$	) 100 * �� *price+  $' VAL. O'LCHOV��$	) 150 * �� *val_ul+  $' OMBORDA��$	) 100 * �� *
quantity+  $' 
SHTRIX KOD��$	) 110 * �� *	barcode+� $��2��$��0 0 0 0q�
 �� $��* ��� $��* �.+��� $��0��.+��� -   $ 	BtnAsosiy��.���� $ 
Horizontal=�$	��150��.+��� $��Resources/Asosiy.png��$��24��$��24��$��13 0 0 0q��� $��Asosiy��$��25 0 0 0q����� " ��.���  � ��$	 155����  � ��$ 60����  � ��$ Segoe UI)���  � ��$ 18(���  � ��
 �������  � �� �#263859��  � �� �#263859��  � ��$
 Left=���  � ��$ 1q���  � ��$ 	20 0 0 45q���  � �� �� " ��.R��� $ 3��#��z��#��z��._��� $��Center=�$��Center=� P� $ �@J�IsMouseOver% . . ���  � ��$ 2q���  � �� �#455A64��  � �� �#455A64� $��1��.+��� -   $ btnReturnReport��#��[ $	��160��$��60��$��Right=�$��0 -45 200 0q�.���� $ 
Horizontal=�.+��� $!��Resources/Faktura_hisob.png��$��24��$��24��$��0 0 10 0q��� $��Qayt. hisobot��$��Center=�$��Center=�$��18(�$��Segoe UI)�$��0 0 0 0q��� -   $ 	btnReturn��$��Right=�.���� $	��150��$ 
Horizontal=�$��50��.+�  $ KeyboardReturn=�$��24��$��24��$��Center=�$��10 0 5 0q��� $��Qayt. tugatish��$
��Wrap=�$��16(�$��Center=�$��0 0 0 0q�$	��110��$ Center=�$��Center=����� " ��.���  � ��$	 155����  � ��$ 60����  � ��$ Segoe UI)���  � ��$ 16(���  � ��
 �������  � �� �#263859��  � �� �#263859��  � ��$ 1q���  � ��$ 	0 0 20 45q���  � ��$ Right=���  � �� �� " ��.R��� $ 3��#��z��#��z��._��� $��Center=�$��Center=� P� $ �@J�IsMouseOver% . . ���  � ��$ 2q���  � �� �#455A64��  � �� �#455A64