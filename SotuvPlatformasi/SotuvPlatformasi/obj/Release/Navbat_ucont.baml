   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  #    SotuvPlatformasi.Navbat_ucont   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  :d2http://schemas.microsoft.com/expression/blend/2008  *localclr-namespace:SotuvPlatformasi  -   .��� ���	#FF17223B  � RowDefinitions  �� $
��Auto ��� $��* ��� $
��Auto �.+�� $��0��$��	25 0 25 0q�.+��� -    ��Name$ 	txtSearch��   	TextBoxes#��[  $��50��$��	20 20 0 0q�� ���#17223B$��20��$	��130��$��
50 -30 0 0q�$
��Left=�.+��� $��Mijoz fish...�����#6B778C$��Segoe UI)�$
��16px(�$��Center=�$��Center=�'  !MaterialDesignThemes.Wpf.PackIcon  ���#6B778C   Kind$ Search=�$��	0 20 20 0q�$��25��$��25��$��Right=�$��Center=�� $��1��$��	0 30 0 10q�$��Stretch=�$
��Auto��.+��� -    ��Name$ scrollViewer��$��Disabled=�����  �� 
TargetType" �� �� Triggers ��  �� Binding �� *
HasItems+ �� ElementName$ dataGrid�� �� Value	 False.a��� 	 �� Property	 � ��
 �� Value$

 Auto=�.��&   System.Windows.Controls.DataGrid  -     Name$ dataGridNavbat��$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�   CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��1q�   SelectionMode$ Single=�   SelectionUnit$ FullRow=�$��
20 0 20 10q� � 	Resources   MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell P� Property P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%?  '        7  '  D     7  '  N    7  '�� �    �� "  8   .��� 	 �@ GridLinesVisibility$
 
Horizontal=��� "  8   .��� 	 �@�FocusVisualStyle
 Z� �� 	 � ��
 �	#FF17223B�� 	 � ��

 ������� 	 � ��$
 0q��� 	 � ��
 �#263859�� 	 �@��TextAlignment$
 Center=� P�  �@ 
IsSelected . . ��� 	 � ��
 �#263859�� "  8   .��� 	 � ��
 �#263859�� 	 � ��

 ������� 	 � ��$
 44���� 	 � ��$
 Center=��� 	 � ��$
 Center=� �� " ��.��� 	 � ��
 �#263859   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ MIJOZ��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 200* 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
mijoz_fish+  $
 SO'M��$	 120  �� *	total_som+  $ DOLLAR��$	 120  �� *total_dollar+  $
 KURS��$	 120  �� *kurs+  $
 SANA��$
 200*  �� *date+  $ SOTUVCHI��$
 200*  �� *
first_name+4	  .System.Windows.Controls.DataGridTemplateColumn	   �� $��SOTUVGA��$	��150��  �� TextAlignment$  Center=�! 	  CellTemplate! �� .R��� " ��Name$" btnKorzinkaOlish��-   $��+������ " ��.��� 	 � ��$	
 120���� 	 � ��$
 30���� 	 � ��
 �#005792�� 	 � ��

 ������� 	 � ��$
 Segoe UI)��� 	 � ��$

 18px(��� 	 � ��
 �� # �� 
TargetType"# ��.R��� $ �� CornerRadius$$ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ��� 	 � ��
 �#0057F4	   �� $��BEKOR��$	��150��$  Center=�! �� .R��� $" btnBekorQilish��-   $��x������ " ��.��� 	 � ��$	
 120���� 	 � ��$
 30���� 	 � ��
 �#F75940�� 	 � ��

 ������� 	 � ��$
 Segoe UI)��� 	 � ��$

 16px(��� 	 � ��
 �� "# ��.R��� $$ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ��� 	 � ��
 �#FF7140�� $��2��.+��� -   $" 	BtnAsosiy��.���� % �� Orientation$% 
Horizontal=�$	��150��.+��� $��Resources/Asosiy.png��$��24��$��24��$��13 0 0 0q��� $��Asosiy��$��25 0 0 0q����� " ��.��� 	 � ��$	
 155���� 	 � ��$
 60���� 	 � ��$
 Segoe UI)��� 	 � ��$
 18(��� 	 � ��

 ������� 	 � ��
 �#263859�� 	 � ��
 �#263859�� 	 � ��$

 Left=��� 	 � ��$
 1q��� 	 � ��$
 	20 0 0 30q��� 	 � ��
 �� "# ��.R��� $$ 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ��� 	 � ��$
 2q��� 	 � ��
 �#455A64�� 	 � ��
 �#455A64