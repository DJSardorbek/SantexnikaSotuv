   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  #    SotuvPlatformasi.qaytuv_ucont   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     0localclr-namespace:SotuvPlatformasi     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -   .��� ���#17223B  � RowDefinitions  �� $
��Auto ��� $��* ��� $
��Auto �.+�� $��0�� � ColumnDefinitions �� $
��1.5* ��� $��* �.+�� $��0��.+��� -    ��Name$ 	txtSearch��   	TextBoxes#��[  $��50��$��	20 20 0 0q�� ���#17223B$��20��$	��180��$��
50 -30 0 0q�$
��Left=�.+��� $��Maxsulot nomi ... Chek...�����#6B778C$��Segoe UI)�$
��16px(�$��Center=�$��Center=�'  !MaterialDesignThemes.Wpf.PackIcon  ���#6B778C   Kind$ Search=�$��0 20 0 0q�$��25��$��25��$��Right=�$��Center=�� $��1��$��50��$��
40 20 20 0q�.+���  �� CornerRadius$ 20�����#263859$��1q�._�(  "System.Windows.Controls.DatePicker  -     Name$ dateTimePicker1��$��40��$��	30 0 30 0q�$��Center=�$��Center=�
�������$��Segoe UI)�$
��24px(�� ���#17223B$��20��$��50��$
��Left=�$��30 -50 0 0 q�.+��� $
��Sana�����#6B778C$��Segoe UI)�$
��15px(�$��Center=�$��Center=�� $��1��$��	0 30 0 10q�$��Stretch=�$
��Auto��.+��� -    ��Name$ scrollViewer��$��Disabled=�����  �� 
TargetType" �� �� Triggers �� 	 �� Binding	 �� *
HasItems+
 �� ElementName$
 dataGridQaytuv�� �� Value	 False.a���  �� Property � �� �� Value$
 Auto=�.��&   System.Windows.Controls.DataGrid  -     Name$ dataGridQaytuv��$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�   CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��1q�   SelectionMode$ Single=�   SelectionUnit$ FullRow=�$��
20 0 20 10q� � 	Resources   MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell P� Property P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%?  '        7  '  D     7  '  N    7  '�� �    �� "  8   .���  �@ GridLinesVisibility$ 
Horizontal=��� "  8   .���  �@�FocusVisualStyle Z� ��  � �� �	#FF17223B��  � ��
 �������  � ��$ 0q���  � �� �#263859��  �@��TextAlignment$ Center=� P�  �@ 
IsSelected . . ���  � �� �#263859�� "  8   .���  � �� �#263859��  � ��
 �������  � ��$ 44����  � ��$ Center=���  � ��$ Center=� �� " ��.���  � �� �#263859   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn    Header$
  CHEK��!   Width5  /System.Windows.Controls.DataGridLengthConverter$! 80 1	  +System.Windows.Controls.DataGridBoundColumn" 	  Binding" �� *chek+  $  MAXSULOT��$
! 300* " �� *name+  $  NARXI��$	! 100 " �� *price+  $  VAL. O'LCHOV��$	! 120 " �� *val_ul+  $  SOTILGAN MIQDOR��$	! 150 " �� *
quantity+  $  SUMMA��$	! 120 " �� *total+  $  XODIM��$
! 200* " �� *
first_name+  $
  SANA��$	! 200 " �� *date+4
  .System.Windows.Controls.DataGridTemplateColumn
    �� $��QAYTUV��# �� TextAlignment$# Center=�$	��120��$ 
  CellTemplate$ �� .R��� % ��Name$% 	btnQaytuv��-   $��Qaytuv������ " ��.���  � ��$	 100����  � ��$ 24����  � ��$ Segoe UI)���  � ��$
 10px(���  � ��
 �������  � �� �#F75940��  � �� �� & �� 
TargetType"& ��.R��� $ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � �� �#F59960�� $��2��.+��� -   $% 	BtnAsosiy��.���� ' �� Orientation$' 
Horizontal=�$	��150��.+��� $��Resources/Asosiy.png��$��24��$��24��$��13 0 0 0q��� $��Asosiy��$��25 0 0 0q����� " ��.���  � ��$	 155����  � ��$ 60����  � ��$ Segoe UI)���  � ��$ 18(���  � ��
 �������  � �� �#263859��  � �� �#263859��  � ��$
 Left=���  � ��$ 1q���  � ��$ 	20 0 0 30q���  � �� �� "& ��.R��� $ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��$ 2q���  � �� �#455A64��  � �� �#455A64