   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  %    SotuvPlatformasi.YuqlamaFaktura   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  *localclr-namespace:SotuvPlatformasi  -   .��� ���#17223B  � RowDefinitions  �� $
��Auto ��� $��* ��� $
��Auto �.+�� $��0��$��	0 0 25 20q�.+��� -    ��Name$ 	txtSearch��   	TextBoxes#��[  $��50��$��0 20 0 0q�� ���#17223B$��20��$	��100��$��
50 -30 0 0q�$
��Left=�.+��� $��Maxsulot�����#6B778C$��Segoe UI)�$
��16px(�$��Center=�$��Center=�'  !MaterialDesignThemes.Wpf.PackIcon  ���#6B778C   Kind$ Search=�$��	0 20 20 0q�$��25��$��25��$��Right=�$��Center=�� -    �Name$ Basket��$��0 0 0 10q�$��1��$��Stretch=�$
��Auto��$y�Visible=�.+��� -    ��Name$ scrollViewer��$��Disabled=�����  �� 
TargetType" �� �� Triggers ��  �� Binding �� *
HasItems+ �� ElementName$ dataGrid��	 �� Value		 False.a��� 
 �� Property
 � �� �� Value$
 Auto=�.��&   System.Windows.Controls.DataGrid  -     Name$ dataGridBasket��$y�Visible=�$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�   CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .     CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��0 0 20 0q�$��1q�   SelectionMode$ Single=�   SelectionUnit$ FullRow=� � 	Resources   MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell P� Property P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%?  '        7  '  D     7  '  N    7  '�� �    �� "  8   .��� 
 �@ GridLinesVisibility$ 
Horizontal=��� "  8   .��� 
 �@�FocusVisualStyle Z� �� 
 � �� �	#FF17223B�� 
 � ��
 ������� 
 � ��$ 0q��� 
 � �� �#263859�� 
 �@��TextAlignment$ Center=� P�  �@ 
IsSelected . . ��� 
 � �� �#263859�� "  8   .��� 
 � �� �#263859�� 
 � ��
 ������� 
 � ��$ 44���� 
 � ��$ Center=��� 
 � ��$ Center=� �� " ��.��� 
 � �� �#263859   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$	 KOD��   
IsReadOnly .     Width5  /System.Windows.Controls.DataGridLengthConverter$	  100 1  +System.Windows.Controls.DataGridBoundColumn!   Binding! �� *
product_id+  $ MAHSULOT�� . $
  300* ! �� *	pr_name+  $ MIQDORI�� . $
  200* ! �� *
quantity+  $ 
SHTRIX KOD�� . $
  200* ! �� *	barcode+�� -   " ��Name$" 	TbProduct��$��1��$��Stretch=�$
��Auto��$y�	Collapsed=�.+�  -   $ dataGridProduct��$
 Auto=�$	��430��$	��600��$
��Auto�� �#263859 .  $ 
Horizontal=� .   .   .  .   .   .  ���	#FF17223B$��1q�$ Single=�$ FullRow=�$��0 0 20 0q�����  ��%?  '        7  '  D     7  '  N    7  '�� �    �� "  8   .��� 
 �@ GridLinesVisibility$ 
Horizontal=��� "  8   .��� 
 �@�FocusVisualStyle Z� �� 
 � �� �	#FF17223B�� 
 � ��
 ������� 
 � ��$ 0q��� 
 � �� �#263859�� 
 �@��TextAlignment$ Center=� P�  �@ 
IsSelected . . ��� 
 � �� �#263859�� "  8   .��� 
 � �� �#263859�� 
 � ��
 ������� 
 � ��$ 44���� 
 � ��$ Center=��� 
 � ��$ Center=� �� " ��.��� 
 � �� �#263859   $	 KOD��$  80 ! �� *
product_id+  $ MAHSULOT��$
  300* ! �� *name+  $ O'LCHOV��$	  100 ! �� *measurement+  $ ZAVOD��$
  150* ! �� *
preparer+  $ 	TAN NARXI��$	  100 ! �� *	t_price+  $ NARXI��$	  100 ! �� *price+  $ VAL. O'LCHOV��$	  150 ! �� *val_ul+  $ OMBORDA��$	  100 ! �� *
quantity+  $ 
SHTRIX KOD��$	  110 ! �� *	barcode+� $��2��$��Center=�$��Right=�.+��� -   # ��Name$# 	btnSubmit��  	btnSetHed#��[ $	��250��$��50��$��10 10 20 10q�.���� $��	Yakunlash��
�������$
��22px(�