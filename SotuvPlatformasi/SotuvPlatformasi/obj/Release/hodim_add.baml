   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi       SotuvPlatformasi.hodim_add   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:SotuvPlatformasi     -     � Title$  	hodim_add��$��2q����#263859$	��600��$	��454�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=�.��� ���#17223B.+��� -    ��Name$ btnExit��$��25��$��25��$	��Top=�$��Right=�$��0 6 10 0q����#17223B.���� $��Resources/cancel.png��$��20��$��20��$	��Top=�$��Right=�����  �� 
TargetType" ��.���  �� Property � �� �� Value$ 0q� �� Triggers P� 	 P� Property	 �@J�IsMouseOver
 P� Value
 . . ���  � �� �#263859� $��0 44 0 0q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��22 20 22 25q�.+��� -    ��Name$ txtName��   	TextBoxes#��[  � ���#17223B$��20��$��30��$��-340 -90 0 0q�.+��� $	��Ism�����#7BC9EB$��Segoe UI)�$
��10px(�$��Center=�$��Center=��� $��1��$��22 20 22 25q�.+��� -   $ 
txtSurname��#��[  � ���#17223B$��20��$��50��$��-320 -90 0 0q�.+��� $��Familiya�����#7BC9EB$��Segoe UI)�$
��10px(�$��Center=�$��Center=��� $��2��$��22 20 22 25q�.+��� $��20 0 0 0q�$��Lavozimi�����#7BC9EB$��Segoe UI)�$
��10px(��� -    ��Name$ comboLavozim��$��40��
�������$��Segoe UI)�$
��16px(����� " ��.���  � �� ��  �� 
TargetType" ��.R�� .+�d� $��2��|�.   d� 	IsChecked ��  �� Path$ IsDropDownOpen� �� Mode$ TwoWay=� �� RelativeSource �� *TemplatedParent+���� .R��  � ColumnDefinitions �� $��5* ��� $��* �.+���  ��Name$ Border��$��2�� �� CornerRadius$ 15�����#17223B���#263859$��1q��� $��0��$ 	15,0,0,15��$��1q����#17223B���#263859$��0,0,0,0q�F�  F�Name$ Arrow��$��1��
�������$��Center=�$��Center=�"����        � 	=  	= � z     	 �� Triggers P� 	 �@J�IsMouseOver
 . . ���  �� 
TargetName$ Border�� � �� �#455A64P� 	 �@d�	IsChecked$

 trueY�. ��� $ Border�� � �� �#455A64�� $��ContentSite�� J� IsHitTestVisible .   �� SelectionBoxItem#��z  �� SelectionBoxItemTemplate#��z #��z��$��3q�$��Center=�$��Center=��� $ PART_EditableTextBox��$y�Hidden=� �� 
IsReadOnly �� 
IsReadOnly# z � $��Popup��$��Bottom=� �� IsDropDownOpen#��z  � AllowsTransparency . |�.  $��Slide=�.��� $��DropDown��  J� SnapsToDevicePixels  . ! � ActualWidth#��z! " �� MaxDropDownHeight#��z" .+��� $ DropDownBorder�����#263859��   . .���� # K� IsItemsHost# .  �� $��3��$��22 20 22 25q�.+�G� -   $ G�Name$$ txtPass��  PasswordBoxes#��[ � ���#17223B$��20��$��40��$��-330 -90 0 0q�.+��� $��Parol�����#7BC9EB$��Segoe UI)�$
��10px(�$��Center=�$��Center=��� $��4��$��
30 90 30 0q�.+��� -   $ 
btnQoshish��$��50��.���� .+��� $��Qo'shish��
�������$��Center=�$��Center=�$
��20px(�$��Segoe UI)����� " ��.���  � �� �#F75940��  � �� �� " ��.R��� $ 3��#��z��#��z��#��z��._��� $��Center=� P� 	 �@J�IsMouseOver
 . . ���  � �� �#F59960