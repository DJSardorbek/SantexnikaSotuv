   M S B A M L   `   `   `  ���� K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi      SotuvPlatformasi.qaytuv   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  *localclr-namespace:SotuvPlatformasi  -     � Title$  qaytuv��$	��480��$	��400�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�$��2q����#263859 � 	Resources  �� 
TargetType �� Property �� Value-  'System.Windows.Input.KeyboardNavigation �� 
TargetType	 �� CornerRadius
 �� Padding   ControlLightColor �� Color ��Name �� Triggers��%  '��       �� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@ TabNavigation$
 None=���  �@�FocusVisualStyle Z� ��  � ��$	 120����  � ��$ 35����  �@J�	AllowDrop . ��  � ��
 �������  � ��$ Segoe UI)���  � ��$
 12px(���  �@��
CaretBrush
 �������  � �� �� " ��.R��� $��Border��$	 5��$
 30 10 10 10q�$��1q����� # �   ���� $ #263859��._��� $ PART_ContentHost��$��0q� .��� ���#17223B.+��� -    ��Name$ btnExit��$��25��$��25��$	��Top=�$��Right=�$��0 6 10 0q����#17223B.���� $��Resources/cancel.png��$��20��$��20��$	��Top=�$��Right=����� " ��.���  � ��$ 0q� P�  P� Property �@J�IsMouseOver P� Value . . ���  � �� �#263859� $��0 34 0 0q� � ColumnDefinitions �� $	��125 ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0�� �� Orientation$ 
Horizontal=�$��0,0,0,5q�.+��� $��	Mahsulot:��
�������$��Segoe UI)�$
��12px(�$��Center=�$��30 0 0 0q��� $��1��$��0��$ 
Horizontal=�$��0,0,0,5q�.+��� $��Zavod:��
�������$��Segoe UI)�$
��12px(�$��Center=�$��30 0 0 0q��� $��2��$��0��$ 
Horizontal=�$��0,0,0,5q�.+��� $��O'lchov:��
�������$��Segoe UI)�$
��12px(�$��Center=�$��30 0 0 0q��� $��3��$��0��$ 
Horizontal=�$��0,0,0,5q�.+��� $��Mavjud:��
�������$��Segoe UI)�$
��12px(�$��Center=�$��30 0 0 0q��� $��0��$��1��$ 
Horizontal=�$��0 0 0 0q�.+��� -    ��Name$ 
txtProduct��$��Center=�$	��245��$��35�� � Cursor$ IBeam��4  .System.Windows.Automation.AutomationProperties   IsRequiredForForm . $��0,0,0,5q� �� 
IsReadOnly . �� $��1��$��1��$ 
Horizontal=�$��0 0 0 0q�.+��� -   $ txtPreparer��$��Center=�$	��245��$��35��$��0,0,0,5q� . �� $��2��$��1��$ 
Horizontal=�$��0 0 0 0q�.+��� -   $ txtMeasurement��$��Center=�$	��245��$��35��$��0,0,0,5q� . �� $��3��$��1��$ 
Horizontal=�$��0 0 0 0q�.+��� -   $ txtQuanOmbor��$��Center=�$	��245��$��35��$��0,0,0,5q� . �� $��4��$��0��$ 
Horizontal=�$��0,0,0,5q�.+��� $��Sotilgan narxi:��
�������$��Segoe UI)�$
��12px(�$��Center=�$��30 0 0 0q��� $��5��$��0��$ 
Horizontal=�$��0,0,0,5q�.+��� $��Val. o'lchov:��
�������$��Segoe UI)�$
��12px(�$��Center=�$��30 0 0 0q��� $��4��$��1��$ 
Horizontal=�$��0 0 0 0q�.+��� -   $ txtPrice��$��Center=�$	��245��$��35��$��0,0,0,5q� . �� $��5��$��1��$ 
Horizontal=�$��0 0 0 0q�.+��� -   $ txtVal��$��Center=�$	��245��$��35��$��0,0,0,5q� . �� $��6��$��0��$ 
Horizontal=�$��0,0,0,5q�.+��� $��Sotilgan Miqdor:��
�������$��Segoe UI)�$
��12px(�$��Center=�$��30 0 0 0q��� $��6��$��1��$ 
Horizontal=�$��0 0 0 0q�.+��� -	   $ txtSoldQuan��$��Center=�$	��245��$��35��$��0,0,0,5q� . �� $��7��$��2��.+��� $��
30 20 24 0q�$��38��.+��� -
   $ txtQuantity��
�������$��38��.������ " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@ TabNavigation$
 None=���  �@�FocusVisualStyle Z� ��  � ��$	 120����  � ��$ 30����  �@J�	AllowDrop . ��  � ��
 �������  � ��$ Segoe UI)���  � ��$
 12px(���  �@��
CaretBrush
 �������  � �� �� " ��.R��� $��Border��$	 5��$
 30 10 10 10q�$��1q����� # �   ���� $ #263859��._��� $ PART_ContentHost��$��0q�.��� $��60��$��20��$��-220 -75 0 0q����#17223B.+��� $��	Nechta...��
�������$��Center=��� -   $��
30 20 24 0q�$��38��.���� .+��� $��
Tasdiqlash��
�������$��Center=�$��Center=�$
��12px(�$��Segoe UI)����� " ��.���  � �� �#F75940��  � �� �� " ��.R��� $	 3��#��z��#��z��#��z��._��� $��Center=� P�  �@J�IsMouseOver . . ���  � �� �#F59960