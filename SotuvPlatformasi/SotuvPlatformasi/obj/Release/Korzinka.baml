   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi      SotuvPlatformasi.Korzinka   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:SotuvPlatformasi     -     � Title$  Korzinka��$	��650��$	��520�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�$��2q����#263859 � 	Resources  �� 
TargetType �� Property �� Value-  'System.Windows.Input.KeyboardNavigation �� 
TargetType	 �� CornerRadius
 �� Padding   ControlLightColor �� Color ��Name �� Triggers��%  '��       �� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@ TabNavigation$
 None=���  �@�FocusVisualStyle Z� ��  � ��$	 120����  � ��$ 40����  �@J�	AllowDrop . ��  � ��
 �������  � ��$ Segoe UI)���  � ��$
 16px(���  �@��
CaretBrush
 �������  � �� �� " ��.R��� $��Border��$	 5��$
 30 10 10 10q�$��1q����� # �   ���� $ #263859��._��� $ PART_ContentHost��$��0q� .��� ���#17223B.+��� -    ��Name$ btnExit��$��25��$��25��$	��Top=�$��Right=�$��0 6 10 0q����#17223B.���� $��Resources/cancel.png��$��20��$��20��$	��Top=�$��Right=����� " ��.���  � ��$ 0q� P�  P� Property �@J�IsMouseOver P� Value . . ���  � �� �#263859� $��0 34 0 0q� � ColumnDefinitions �� $	��160 ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0�� �� Orientation$ 
Horizontal=�$��0 0 0 20q�.+��� $��	Mahsulot:��
�������$��Segoe UI)�$��20(�$��Center=�$��30 0 0 0q��� $��1��$��0��$ 
Horizontal=�$��0 0 0 20q�.+��� $��Shtrix kod:��
�������$��Segoe UI)�$��20(�$��Center=�$��30 0 0 0q��� $��2��$��0��$ 
Horizontal=�$��0 0 0 20q�.+��� $��Omborda:��
�������$��Segoe UI)�$��20(�$��Center=�$��30 0 0 0q��� $��3��$��0��$ 
Horizontal=�$��0 0 0 20q�.+��� $��Narxi:��
�������$��Segoe UI)�$��20(�$��Center=�$��30 0 0 0q��� $��5��$��0��$ 
Horizontal=�$��0 0 0 20q�.+��� $��Val. o'lchov:��
�������$��Segoe UI)�$��20(�$��Center=�$��30 0 0 0q��� $��4��$��0��$ 
Horizontal=�$��0 0 0 20q�.+��� $��Kurs:��
�������$��Segoe UI)�$��20(�$��Center=�$��30 0 0 0q��� $��0��$��1��$ 
Horizontal=�$��0 0 0 20q�.+��� -    ��Name$ 
txtProduct��$��Center=�$	��330��$��40�� � Cursor$ IBeam��4  .System.Windows.Automation.AutomationProperties   IsRequiredForForm . $��0 10 0 0q� �� 
IsReadOnly . �� $��1��$��1��$ 
Horizontal=�$��0 0 0 20q�.+��� -   $ 
txtBarcode��$��Center=�$	��330��$��40��$��0 10 0 0q� . �� $��2��$��1��$ 
Horizontal=�$��0 0 0 20q�.+��� -   $ txtQuantityOmbor��$��Center=�$	��330��$��40��$��0 10 0 0q� . �� $��3��$��1��$ 
Horizontal=�$��0 0 0 20q�.+��� -   $ txtPrice��$��Center=�$	��330��$��40��$��0 10 0 0q� . �� $��5��$��1��$ 
Horizontal=�$��0 0 0 20q�.+��� -   $ txtValUl��$��Center=�$	��330��$��40��$��0 10 0 0q� . �� $��4��$��1��$ 
Horizontal=�$��0 0 0 20q�.+��� -   $ txtKurs��$��Center=�$	��330��$��40��$��0 10 0 0q� . �� $��6��$��2��.+��� $��
30 15 30 0q�$��50��.+��� -	   $ txtQuantity��.������ " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@ TabNavigation$
 None=���  �@�FocusVisualStyle Z� ��  � ��$	 120����  � ��$ 50����  �@J�	AllowDrop . ��  � ��
 �������  � ��$ Segoe UI)���  � ��$
 16px(���  �@��
CaretBrush
 �������  � �� �� " ��.R��� $��Border��$	 5��$
 30 10 10 10q�$��1q����� # �   ���� $ #263859��._��� $ PART_ContentHost��$��0q�.���� -
   $��
30 35 30 0q�$��50��.���� .+��� $��Enter��
�������$��Center=�$��Center=�$
��20px(�$��Segoe UI)����� " ��.���  � �� �#F75940��  � �� �� " ��.R��� $	 3��#��z��#��z��#��z��._��� $��Center=� P�  �@J�IsMouseOver . . ���  � �� �#F59960