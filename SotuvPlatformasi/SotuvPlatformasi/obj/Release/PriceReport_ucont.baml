   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  (    "SotuvPlatformasi.PriceReport_ucont   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  *localclr-namespace:SotuvPlatformasi  -   .��� ���#17223B  � RowDefinitions  �� $
��Auto ��� $��* �.+�� $��0�� � ColumnDefinitions �� $
��1.5* ��� $��* �.+��� $��0�� �� Orientation$ 
Horizontal=�$��0 20 0 0q�.+��� -    ��Name$ 	BtnCancel��.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�$��33��$��33������  �� 
TargetType" ��.���  �� Property � �� �� Value �#17223B��  � ��$ 50����  � ��
 �������  � ��$ 50����  � ��$ 22 0 0 0q���  � ��$
 Left=���  � ��$ 0q� �� Triggers P� 	 P� Property	 �@J�IsMouseOver
 P� Value
 . . ���  � �� �#263859�� $��Farq uz:��
�������$��Segoe UI)�$
��20px(�$��Center=�$��	30 0 20 0q��� -    ��Name$ 
txtFarq_uz��$	��0.0�����#7BC9EB$��Segoe UI)�$
��30px(�$��Center=��� $��Farq $:��
�������$��Segoe UI)�$
��20px(�$��Center=�$��
200 0 20 0q��� -   $ txtFarq_dol��$	��0.0�����#7BC9EB$��Segoe UI)�$
��30px(�$��Center=��� $��1��$��0 20 0 0q�.+��� $��Right=�$��1��$ 
Horizontal=�$��0 10 0 0q�.+�(  "System.Windows.Controls.DatePicker  -     Name$ DatePickerDan�� � OverridesDefaultStyle . 
������ $��0 0 10 0q�
��������� $��Dan...��
�������$��Center=�$��Center=�$��Segoe UI)�$
��12px(�$��	0 0 123 0q�  -   $ DatePickerGacha�� . 
������ $��0 0 10 0q�
��������� $��Gacha...��
�������$��Center=�$��Center=�$��Segoe UI)�$
��12px(�$��0 0 32 0q�� $��1��.+�� -    �Name$ Basket��$��	0 30 0 10q�$��1��$��Stretch=�$
��Auto��$y�Visible=�.+��� -    ��Name$ scrollViewer��$��Disabled=����� " �� ��  �� Binding �� *
HasItems+ �� ElementName$ dataGrid�� �� Value	 False.a���  � ��$
 Auto=�.��&   System.Windows.Controls.DataGrid  -	     Name$ dataGridBasket��$y�Visible=�$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�   CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .     CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��	20 0 20 0q�$��1q�   SelectionMode$ Single=�   SelectionUnit$ FullRow=�  � 	Resources     MaterialDesignDataGrid! �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%?  '        7   '  D     7  '  N    7  '�� �    �� "  8!   .���  �@ GridLinesVisibility$ 
Horizontal=��� "  8!   .���  �@�FocusVisualStyle Z� ��  � �� �	#FF17223B��  � ��
 �������  � ��$ 0q���  � �� �#263859��  �@��TextAlignment$ Center=� P� 	 �@ 
IsSelected
 . . ���  � �� �#263859�� "  8!   .���  � �� �#263859��  � ��
 �������  � ��$ 44����  � ��$ Center=���  � ��$ Center=� �� " ��.���  � �� �#263859"   Columns" 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn#   Header$	# KOD��$   
IsReadOnly$ . %   Width5  /System.Windows.Controls.DataGridLengthConverter$% 80 1	  +System.Windows.Controls.DataGridBoundColumn& 	  Binding& �� *id+  $# MAHSULOT��$ . $
% 300* & �� *	pr_name+  $# AVVALGI NARX��$ . $	% 150 & �� *	old_price+  $# 
YANGI NARX��$ . $	% 150 & �� *	new_price+  $# QOLDIQ��$ . $	% 150 & �� *	residue+  $# 
BITTA FARQ��$ . $	% 150 & �� *
difference+  $# UMUMIY FARQ��$ . $	% 200 & �� *
total_diff+  $# VAL. O'LCHOV��$ . $	% 130 & �� *val_ul+