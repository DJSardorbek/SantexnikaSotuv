   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  -    'SotuvPlatformasi.DebtorPayHistory_ucont   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  *localclr-namespace:SotuvPlatformasi  -   .��� ���#17223B  � RowDefinitions  �� $
��Auto ��� $��* �.+�� $��0�� � ColumnDefinitions �� $
��1.5* ��� $��* �.+��� $��0��$��0 20 0 0q�.+��� -    ��Name$ 	BtnCancel��.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�$��33��$��33������  �� 
TargetType" ��.���  �� Property � �� �� Value �#17223B��  � ��$ 50����  � ��
 �������  � ��$ 50����  � ��$ 22 0 0 0q���  � ��$
 Left=���  � ��$ 0q� �� Triggers P�  P� Property �@J�IsMouseOver	 P� Value	 . . ���  � �� �#263859�� $��Right=�$��1��
 �� Orientation$
 
Horizontal=�$��0 0 20 0q�.+�(  "System.Windows.Controls.DatePicker  -     Name$ DatePickerDan�� � OverridesDefaultStyle . 
������ $��0 0 10 0q�
��������� $��Dan...��
�������$��Center=�$��Center=�$��Segoe UI)�$
��12px(�$��	0 0 123 0q�  -   $ DatePickerGacha�� . 
������ $��0 0 10 0q�
��������� $��Gacha...��
�������$��Center=�$��Center=�$��Segoe UI)�$
��12px(�$��0 0 32 0q�� $��1��.+��� -    ��Name$ scrollViewer��$��Disabled=����� " �� ��  �� Binding �� *
HasItems+ �� ElementName$ dataGrid�� �� Value	 False.a���  � ��$
 Auto=�.��&   System.Windows.Controls.DataGrid  -     Name$ dataGridDebtorReport��$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�   CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��1q�   SelectionMode$ Single=�   SelectionUnit$ FullRow=�$��
20 0 20 10q� � 	Resources    MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%�  '        7   '  D     7  '  &    7  '�� �    �� "  8   .���  �@ GridLinesVisibility$ 
Horizontal=��� "  8   .���  �@�FocusVisualStyle Z� ��  � �� �	#FF17223B��  � ��
 �������  � ��$ 0q���  � �� �#263859 P�  �@ 
IsSelected	 . . ���  � �� �#263859�� "  8   .���  � �� �#263859��  � ��
 �������  � ��$ 44����  � ��$ Center=� �� " ��.���  � �� �#263859    Columns  0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn!   Header$	! KOD��"   Width5  /System.Windows.Controls.DataGridLengthConverter$	" 100 1	  +System.Windows.Controls.DataGridBoundColumn# 	  Binding# �� *id+  $! MIJOZ��$
" 300* # �� *
mijoz_fish+  $	! SOM��$
" 200* # �� *som+  $! DOLLAR��$
" 200* # �� *dollar+  $
! KURS��$
" 150* # �� *kurs+  $
! SANA��$
" 200* # �� *date+