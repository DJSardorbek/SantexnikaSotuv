   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  '    !SotuvPlatformasi.Qarzdorlar_ucont   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     0localclr-namespace:SotuvPlatformasi     -   .��� ���#17223B.+�� $��0 20 0 0q�  � RowDefinitions  �� $
��Auto ��� $��* ��� $
��Auto �.+���  �� Orientation$ 
Horizontal=�$��0��$��0 0 0 20q�.+��� -    ��Name$ btnTulovUtibKetgan��$��	25 0 25 0q�   SotuvHeader#��[  $	��370��$	��120��.���� .+��� $!��Resources/tul_ot_ketgan.png��$��50��$��53��$��0 5 0 0q��� $��To'lov o'tib ketgan��$��Segoe UI)�$
��23px(�$��0 5 0 0q��� -   $ btnTulovYaqinlashgan��#��[  $	��370��$	��120��.���� .+��� $"��Resources/tul_yaq_qolgan.png��$��66��$��50��$��0 5 0 0q��� $��To'lov yaqinlashib qolgan��$��Segoe UI)�$
��23px(�$��0 5 0 0q�� $��0 0 0 10q�$��1��$��Stretch=�$
��Auto��.+��� -    ��Name$ scrollViewer��$��Disabled=�����  �� 
TargetType" �� �� Triggers ��  �� Binding �� *
HasItems+ �� ElementName$ dataGridQarzdorlar�� �� Value	 False.a��� 	 �� Property	 � ��
 �� Value$

 Auto=�.��&   System.Windows.Controls.DataGrid  -     Name$ dataGridQarzdorlar��$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   HorizontalGridLinesBrush �#263859   AutoGenerateColumns .     GridLinesVisibility$ 
Horizontal=�   CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .  ���	#FF17223B$��1q�   SelectionMode$ Single=�   SelectionUnit$ FullRow=�$��
25 0 20 10q� � 	Resources   MaterialDesignDataGrid �� BasedOn*  $System.Windows.Controls.DataGridCell  MaterialDesignDataGridCell P� Property P� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader & "MaterialDesignDataGridColumnHeader��%�  '        7  '  D     7  '  &    7  '�� �    �� "  8   .��� 	 �@ GridLinesVisibility$
 
Horizontal=��� "  8   .��� 	 �@�FocusVisualStyle
 Z� �� 	 � ��
 �	#FF17223B�� 	 � ��

 ������� 	 � ��$
 0q��� 	 � ��
 �#263859 P�  �@ 
IsSelected . . ��� 	 � ��
 �#263859�� "  8   .��� 	 � ��
 �#263859�� 	 � ��

 ������� 	 � ��$
 44�� �� " ��.��� 	 � ��
 �#263859   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 
MIJOZ FISH��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 200* 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
mijoz_fish+  $ 	TELEFON_1��$	 140  �� *tel_1+  $ 	TELEFON_2��$	 140  �� *tel_2+  $ QARZDORLIK uz��$	 150  �� *
qarz_som+  $ QARZDORLIK $��$	 150  �� *qarz_dollar+  $
 SANA��$	 150  �� *return_date+4  .System.Windows.Controls.DataGridTemplateColumn   �� $��TO'LOV��  �� TextAlignment$  Center=�$	��120��!   CellTemplate! �� .R��� $ btnTulov��-   $��To'lov������ " ��.��� 	 � ��$	
 100���� 	 � ��$
 24���� 	 � ��$
 Segoe UI)��� 	 � ��$

 10px(��� 	 � ��

 ������� 	 � ��
 �#F75940�� 	 � ��
 �� " �� 
TargetType"" ��.R��� # �� CornerRadius$# 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ��� 	 � ��
 �#F59960   �� $��TO'L. TARIX��$  Center=�$	��120��! �� .R��� $ btnTarix��-   $��To'l. tarix������ " ��.��� 	 � ��$	
 100���� 	 � ��$
 24���� 	 � ��$
 Segoe UI)��� 	 � ��$

 10px(��� 	 � ��

 ������� 	 � ��
 �#005792�� 	 � ��
 �� "" ��.R��� $# 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ��� 	 � ��
 �#0057F4�� $��2��.+��� -   $ 	BtnAsosiy��.���� $ 
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
 �� "" ��.R��� $# 3��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ��� 	 � ��$
 2q��� 	 � ��
 �#455A64�� 	 � ��
 �#455A64