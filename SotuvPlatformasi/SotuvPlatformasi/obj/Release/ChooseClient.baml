   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  #    SotuvPlatformasi.ChooseClient   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:SotuvPlatformasi     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     � Title$  ChooseClient��$	��500��$	��650�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�$��2q����#263859.��� ���#17223B � RowDefinitions �� $
��Auto ��� $��* �.+�� $��0�� � ColumnDefinitions �� $��* ��� $
��Auto �.+�� $��0��.+��� -    ��Name$ 	txtSearch��   	TextBoxes#��[  $��40��$��
20 20 20 0q�� ���#17223B$��20��$	��110��$��
40 -25 0 0q�$
��Left=�.+��� $��Mijoz fish...�����#6B778C$��Segoe UI)�$
��16px(�$��Center=�$��Center=�'  !MaterialDesignThemes.Wpf.PackIcon  ���#6B778C   Kind$ Search=�$��	0 20 30 0q�$��25��$��25��$��Right=�$��Center=�� $��1��$��0 20 0 0q�.+��� -    ��Name$ btnNew��  SotuvHeader#��[ $��40��$	��100��$��0 0 20 0q�.���� $��Yangi�����#6B778C� $��1��.+�� $��0��$��	0 30 0 10q�$��Stretch=�$
��Auto��.+��� -   	 ��Name$	 scrollViewer��$��Disabled=����� 
 �� 
TargetType"
 �� �� Triggers ��  �� Binding �� *
HasItems+ �� ElementName$ dataGridClient�� �� Value	 False.a���  �� Property � �� �� Value$
 Auto=�.��&   System.Windows.Controls.DataGrid  -     Name$ dataGridClient��$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�   CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��1q�   SelectionMode$ Single=�   SelectionUnit$ FullRow=�$��
20 0 20 10q� � 	Resources   MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell  P� Property! P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%�  '        7  '  D     7  '  &    7  '�� �    �� "
  8   .���  �@ GridLinesVisibility$ 
Horizontal=��� "
  8   .���  �@�FocusVisualStyle Z� ��  � �� �	#FF17223B��  � ��
 �������  � ��$ 0q���  � �� �#263859 P�   �@ 
IsSelected! . . ���  � �� �#263859�� "
  8   .���  � �� �#263859��  � ��
 �������  � ��$ 44����  � ��$ Center=� �� "
 ��.���  � �� �#263859"   Columns" 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn#   Header$	# KOD��$   Width5  /System.Windows.Controls.DataGridLengthConverter$	$ 100 1  +System.Windows.Controls.DataGridBoundColumn%   Binding% �� *id+  $# MIJOZ��$
$ 200* % �� *
mijoz_fish+4	  .System.Windows.Controls.DataGridTemplateColumn	  # �� $��TANLASH��$	��150��& �� TextAlignment$& Center=�' 	  CellTemplate' �� .R��� $ 	btnChoose��-   $��+������ "
 ��.���  � ��$	 120����  � ��$ 30����  � �� �#005792��  � ��
 �������  � ��$ Segoe UI)���  � ��$
 18px(���  � �� �� ( �� 
TargetType"( ��.R��� ) �� CornerRadius$) 3��#��z��#��z��._��� $��Center=�$��Center=� P�   �@J�IsMouseOver! . . ���  � �� �#0057F4