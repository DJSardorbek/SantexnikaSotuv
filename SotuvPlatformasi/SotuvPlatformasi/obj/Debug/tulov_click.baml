   M S B A M L   `   `   `  ����K  GSotuvPlatformasi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SotuvPlatformasiSotuvPlatformasi  5   	   "    SotuvPlatformasi.tulov_click   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:SotuvPlatformasi     5   	   -   5          � Title$  tulov_click��5   	   $	��650��5	   	   $	��895��6    � WindowStartupLocation$ CenterScreen=�5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	   $��2q�5   	   ���#263859 � 	Resources 5       �� 
TargetType   	txtNasiya �� Property �� Value-  'System.Windows.Input.KeyboardNavigation �� 
TargetType	 �� CornerRadius
 �� Padding  ControlLightColor �� Color ��Name��%�  &	        �� 5   
   " ��6   .�5      ��  �@J�SnapsToDevicePixels . 5   )   �� 5       �@�OverridesDefaultStyle . 5   *   �� 5       �@ TabNavigation$
 None=�5   )   �� 5       �@�FocusVisualStyle 5   )   Z� �� 5       � ��$	 120��5   *   �� 5       � ��$ 50��5   )   �� 5       �@J�	AllowDrop . 5    )   �� 5!       � ��
 �����6+   �� 5"       � ��$ Segoe UI)�6+   �� 5#       � ��$
 16px(�6)   �� 5$       �@��
CaretBrush
 �����6+   �� 5%       � �� 5&      �� 5'      " ��6&   .R�5)      �� $��Border��6!   $	 10��5*      $
 30 10 10 10q�5+      $��0q�5,      ��5-      �� 5.   "   # �  62   ��50      �� 51   "   $ #6B778C��62   ._�53      �� $ PART_ContentHost��66   $��0q�6+   66   54      56      58      59      5:      .��5;      � ���#17223B � ColumnDefinitions 5>   
   �� 5?      $	��545 �6   �� 5@      $��* �6   .+�5C   
   �� -   5         ��Name$ StackNasiya��5D      $��1��5C      $y�Visible=�5E      $��0 0 0 0q�5F      .+�5G      �� -   5         ��Name$ btnExit��5G      $��25��6<   $��25��6G   $	��Top=�6S   $��Right=�6k   $��	0 6 10 10q�6�   ���#17223B.��5H      �� $��Resources/cancel.png��6   $��20��67   $��20��6B   $	��Top=�6N   $��Right=�6f   ��5I      �� 5J      " ��6   .�5K      ��  � ��$ 0q�6<    �� Triggers 5L      P� 5M       P� Property �@J�IsMouseOver P� Value . . �5N   "   ��  � �� �#2638596?   5O      5Q      5S      �� 5T      $��Savdo summa:��6   $��Segoe UI)�5U      $
��18px(�5V      
�������$��20 -15 0 10q�5X      $��Center=�5Y      $
��Left=�5Z      �� 5[       �� Orientation$ 
Horizontal=�5\      $��Center=�5]      .+�5^      �� $��uz��6   $��Segoe UI)�5_      $
��18px(�5`      
�������$��	20 0 0 10q�5b      $��Center=�5c      $
��Left=�5d      �� 5e      -   5         ��Name$ 	txtTulSom��5e      $	��0.0��5f      $��Segoe UI)�5g      $
��18px(�5h      
�������$��	20 0 0 10q�5j      $��Center=�5k      $
��Left=�5l      5m      �� 5o      $ 
Horizontal=�5p      $��Center=�5q      .+�5r      �� $��$ ��6   $��Segoe UI)�5s      $
��18px(�5t      
�������$��	20 0 0 30q�5v      $��Center=�5w      $
��Left=�5x      �� 5y      -   5        $ txtTulDollar��5y      $	��0.0��5z      $��Segoe UI)�5{      $
��18px(�5|      
�������$��	20 0 0 30q�5~      $��Center=�5      $
��Left=�5�      5�      �� 5�      $	 10��5�      ���#6B778C$��1q�5�      $��	10 0 20 0q�5�      ._�5�      � .+�5�      �� -   5         ��Name$ 	txtClient��5�      #��[  5�      $	��275��5�      $
��Left=�5�      $
��14px(�5�      $��Oddiy klient��5�      �� 5�      $��Mijoz��6    $��Segoe UI)�5�      $
��15px(�5�      ���#6B778C$��-210 -60 0 0q�5�      ���#17223B$��Center=�5�      $��Center=�5�       �� TextAlignment$ Center=�5�      $��60��5�      �� 5�      -   5        $ 	btnChoose��5�        SotuvHeader#��[ 5�      $
��Auto��5�      $��40��5�      $��	279,5,5,5q�5�      .��5�      �� $	��...��6$   5�      5�      5�      �� 5�      -   5        $ StackKlient��5�      $y�	Collapsed=�6.   .+�5�      � $	��320��6   $��50��6#   $��	0 45 10 0q�6/   .+�5�      �� $	 10��6   ���#6B778C$��1q�6E   ._�5�      (  "System.Windows.Controls.DatePicker  -	   5          Name$ dateTimePicker1��5�   %   $��50��6?   $	��300��6K   
�������$��Center=�6j   5�      5�      � 5�      ���#17223B$��20��60   $	��130��6<   $��-150 -55 0 0q�6H   .+�5�      �� $��Qaytarish sanasi��6$   ���#6B778C$��Segoe UI)�6Q   $
��15px(�6g   $��Center=�6w   $��Center=�6�   5�      5�      �� 5�      $ 
Horizontal=�6   $��
10 40 20 0q�66   .+�5�      �� $��50��6   $	��315��6)   .��5�      �� $ 
Horizontal=�6%   .+�5�      �� $��uz��6(   
�������$��Segoe UI)�5�   $   $
��18px(�5�   $   $��Center=�5�   $   $
��Left=�5�   $   $��5 0 5 0q�5�   $   �� 5�      -
   5        $ txtNasiyaSom��5�   &   $	��230��5�   &   $��0 0 10 0q�5�   &    �� 
IsReadOnly . .��5�   8   ��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  �@J�SnapsToDevicePixels . 5�   )   �� 5�   *    �@�OverridesDefaultStyle . 5�   *   �� 5�   *    �@ TabNavigation$
 None=�5�   )   �� 5�   *    �@�FocusVisualStyle 5�   )   Z� �� 5�   *    � ��$	 120��5�   *   �� 5�   *    � ��$ 40��5�   )   �� 5�   *    �@J�	AllowDrop . 5�   )   �� 5�   *    � ��
 �����6G   �� 5�   *    � ��$ Segoe UI)�6G   �� 5�   *    � ��$
 16px(�6E   �� 5�   *    �@��
CaretBrush
 �����6G   �� 5�   *    � �� 5�   .   �� 5�   2   " ��6B   .R�5�   6   �� $��Border��6=   $	 10��5�   5   $
 30 10 10 10q�5�   5   $��1q�5�   5   ��5�   :   �� 5�   >   # �  6N   ��5�   :   �� 5�   >   $ #263859��6N   ._�5�   :   �� $ PART_ContentHost��5�   5   $��0q�5�   G   5�   5   5�   7   5�   3   5�   +   5�   '   .��5�   1   5�      �� 5�      $��Resources/nasiya.png��6$   $��28��6B   $��28��6M   $��0 0 13 0q�6Y   5�      ��5�      �� 5�      " ��6$   .�5�   "   ��  � �� �#2638596?   �� 5�   "    � ��
 �����6?   �� 5�   "    � �� 5�   &   �� 5�   *   " ��6:   .R�5�   .   �� $	 5��5�   -   #��z��5�   -   #��z��5�   -   ._�5�   2   �� $��Center=�6C   $��Center=�6^   5�   3   5�   /   5�   +   5�   #   5�      5      5     �� 5     $ 
Horizontal=�6   $��
10 40 20 0q�66   .+�5     �� $��50��6   $	��315��6)   .��5     �� $ 
Horizontal=�6%   .+�5     �� $��$��6(   
�������$��Segoe UI)�5  $   $
��18px(�5  $   $��Center=�5	  $   $
��Left=�5
  $   $��5 0 5 0q�5  $   �� 5     -   5        $ txtNasiyaDollar��5  &   $	��230��5  &   $��0 0 10 0q�5  &    . .��5  8   ��5  "   �� 5  &   " ��6,   .�5  *   ��  �@J�SnapsToDevicePixels . 5  )   �� 5  *    �@�OverridesDefaultStyle . 5  *   �� 5  *    �@ TabNavigation$
 None=�5  )   �� 5  *    �@�FocusVisualStyle 5  )   Z� �� 5  *    � ��$	 120��5  *   �� 5  *    � ��$ 40��5  )   �� 5  *    �@J�	AllowDrop . 5  )   �� 5   *    � ��
 �����6G   �� 5!  *    � ��$ Segoe UI)�6G   �� 5"  *    � ��$
 16px(�6E   �� 5#  *    �@��
CaretBrush
 �����6G   �� 5$  *    � �� 5%  .   �� 5&  2   " ��6B   .R�5'  6   �� $��Border��6=   $	 10��5(  5   $
 30 10 10 10q�5)  5   $��1q�5*  5   ��5+  :   �� 5,  >   # �  6N   ��5.  :   �� 5/  >   $ #263859��6N   ._�51  :   �� $ PART_ContentHost��52  5   $��0q�51  G   52  5   53  7   54  3   56  +   57  '   .��58  1   59     �� 5;     $��Resources/nasiya.png��6$   $��28��6B   $��28��6M   $��0 0 13 0q�6Y   5<     ��5=     �� 5>     " ��6$   .�5?  "   ��  � �� �#2638596?   �� 5@  "    � ��
 �����6?   �� 5A  "    � �� 5B  &   �� 5C  *   " ��6:   .R�5D  .   �� $	 5��5E  -   #��z��5F  -   #��z��5G  -   ._�5H  2   �� $��Center=�6C   $��Center=�6^   5J  3   5K  /   5L  +   5N  #   5O     5Q     5R     �� 5S     .+�5T     �� $ ��Mijozdan bizning haqqimiz:��6    
�������$��Segoe UI)�5V     $
��18px(�5W     $��	10 30 0 0q�5X     �� 5Z     $ 
Horizontal=�6!   $��0 20 0 0q�5[     .+�5\     �� $��uz��6$   
�������$��Segoe UI)�5^     $
��18px(�5_     $��Center=�5`     $
��Left=�5a     $��	10 0 20 0q�5b     �� 5c     -   5        $ 	txtXaqSom��5c  $   
�������$��Segoe UI)�5e     $
��18px(�5f     $	��280��5g     $��Center=�5h     $��0��5i     5j     �� 5m     $ 
Horizontal=�6!   $��0 20 0 0q�5n     .+�5o     �� $��$ ��6$   
�������$��Segoe UI)�5q     $
��18px(�5r     $��Center=�5s     $
��Left=�5t     $��	10 0 20 0q�5u     �� 5v     -   5        $ txtXaqDollar��5v  $   
�������$��Segoe UI)�5x     $
��18px(�5y     $	��280��5z     $��Center=�5{     $��0��5|     5}     5~     5     5�     � 5�  
   $��0��6    � RowDefinitions 5�     �� 5�     $
��Auto �6    �� 5�     $
��Auto �6    �� 5�     $��* �6    �� 5�     $
��Auto �6    .+�5�     �� $��0 27 0 0q�6   $��0��6+   $ 
Horizontal=�68   .+�5�     ��   BtnTulov#��[ 6   .��5�     �� $��88��6!   $	��140��6-   .+�5�     �� -   5         ��Name$ ckNaqd��5�     $��	120 5 0 0q�5�     �� 5�     $��Resources/naqd_pul.png��6    $��40��6@   $��40��6K   $��	0 -10 0 0q�6W   �� 5�     $��Naqd pul��6$   $��15(�64   $��Segoe UI)�6B   $��40 6 0 0q�6X   5�     5�     �� 5�     #��[ 6   .��5�     �� $��88��6!   $	��140��6-   .+�5�     �� -   5        $ chkKarta��5�     $��	120 5 0 0q�5�     5�     �� 5�     $��Resources/Kaarta.png��6    $��40��6>   $��40��6I   $��	0 -10 0 0q�6U   �� 5�     $��Karta��6$   $��15(�61   $��Segoe UI)�6?   $��52 6 0 0q�6U   5�     5�     �� 5�     #��[ 6   .��5�     �� $��88��6!   $	��140��6-   .+�5�     �� $��Resources/Nasiya.png��6    $��40��6>   $��40��6I   $��0 15 0 0q�6U   �� 5�     $��Nasiya��6$   $��15(�62   $��Segoe UI)�6@   $��48 6 0 0q�6V   5�     5�     5�     �� 5�     $��0 21 0 0q�6   $��1��6+   $ 
Horizontal=�68   .+�5�     �� #��[ 6   .��5�     �� $��88��6!   $	��140��6-   .+�5�     �� -   5        $ 
ckTransfer��5�     $��	120 5 0 0q�5�     �� 5�     $ ��Resources/Pul_utkazish.png��6    $��40��6D   $��40��6O   $��	0 -10 0 0q�6[   �� 5�     $��Pul o'tkazish��6$   $��15(�69   $��Segoe UI)�6G   $��30 6 0 0q�6]   5�     5�     �� 5�     #��[ 6   .��5�     �� $��88��6!   $	��140��6-   .+�5�     �� -   5        $ 	ckCurreny��5�     $��	120 5 0 0q�5�     �� 5�     $!��Resources/Valyuta_qabul.png��6    $��40��6E   $��40��6P   $��	0 -10 0 0q�6\   �� 5�     $��Valyuta qabul��6$   $��15(�69   $��Segoe UI)�6G   $��26 6 0 0q�6]   5�     5�     �� 5�     $��10 0 0 0q�6   $	��160��6.   $��90��6:   $��1��6F   ���#6B778D �� RadiusX$
 10px��6k    �� RadiusY$
 10px��6z   � 5�     $	��150��6   $	��100��6#   $��
-160 0 0 0q�60   .+�5�     �� -   5        $ txtTulovSumma��5�     $	��0.0��5�     
�������$��18(�5�     $��Segoe UI)�5�     $��Center=�5�     $��Center=�5�     $��0 0 0 20q�5�     �� 5�     $��uz��6    $��Segoe UI)�5�      $
��18px(�5�      
�������$��Center=�5�      $��Center=�5�      $��-120 0 0 20q�5�      �� 5�     -   5        $ txtTulovDollar��5�     $	��0.0��5�     
�������$��18(�5�     $��Segoe UI)�5�     $��Bottom=�5�     $��Center=�5�     $��0 0 0 20q�5�     �� 5�     $��$��6    $��Segoe UI)�5�      $
��18px(�5�      
�������$��Bottom=�5�      $��Center=�5�      $��-120 0 0 20q�5�      5�     �� 5�     $��-220 -95 0 0q�6   $��Center=�63   $��Center=�6P   .+�5�     ��  �� Padding$ 4q�6    $��
Jami summa��6,   $��20��6>   ���	#FF17223B���#6B778D$��80��6v   $
��Wrap=�6�   5�     5�     �� 5�     $��2��6   .+�5�     �� -   5        $ StackSkidka��5�     $y�Visible=�62   $��0 20 0 0q�6G   .+�5�     �� $��50��6   $	��478��6)   .��5�     �� $ 
Horizontal=�6%   .+�5�     �� -   5        $ 	txtSkidka��5�  !   $��0 0 10 0q�5�  !   {�.  .��5�  3   ��5�  "   �� 5�  &   " ��6,   .�5�  *   ��  �@J�SnapsToDevicePixels . 5�  )   �� 5�  *    �@�OverridesDefaultStyle . 5�  *   �� 5�  *    �@ TabNavigation$
 None=�5�  )   �� 5�  *    �@�FocusVisualStyle 5   )   Z� �� 5  *    � ��$	 150��5  *   �� 5  *    � ��$ 40��5  )   �� 5  *    �@J�	AllowDrop . 5  )   �� 5  *    � ��
 �����6G   �� 5  *    � ��$ Segoe UI)�6G   �� 5	  *    � ��$
 16px(�6E   �� 5
  *    �@��
CaretBrush
 �����6G   �� 5  *    � �� 5  .   �� 5  2   " ��6B   .R�5  6   �� $��Border��6=   $	 5��5  5   $
 30 10 10 10q�5  5   $��1q�5  5   ��5  :   �� 5  >   # �  6N   ��5  :   �� 5  >   $ #455A64��6N   ._�5  :   �� $ PART_ContentHost��5  5   $��0q�5  G   5  5   5  7   5  3   5  +   5  '   .��5  1   5      �� 5!     -   5        $ 	txtSSumma��5"  !    . $��0��5&  !   $��0 0 5 0q�5'  !   .��62   ��5(  "   �� 5)  &   " ��6,   .�5*  *   ��  �@J�SnapsToDevicePixels . 5+  )   �� 5,  *    �@�OverridesDefaultStyle . 5-  *   �� 5.  *    �@ TabNavigation$
 None=�5/  )   �� 50  *    �@�FocusVisualStyle 51  )   Z� �� 52  *    � ��$	 150��53  *   �� 54  *    � ��$ 40��55  )   �� 56  *    � ��$	 200��57  1   �� 58  *    �@J�	AllowDrop . 59  )   �� 5:  *    � ��
 �����6G   �� 5;  *    � ��$ Segoe UI)�6G   �� 5<  *    � ��$
 16px(�6E   �� 5=  *    �@��
CaretBrush
 �����6G   �� 5>  *    � �� 5?  .   �� 5@  2   " ��6B   .R�5A  6   �� $��Border��6=   $	 5��5B  5   $
 30 10 10 10q�5C  5   $��1q�5D  5   ��5E  :   �� 5F  >   # �  6N   ��5H  :   �� 5I  >   $ #455A64��6N   ._�5K  :   �� $ PART_ContentHost��5L  5   $��0q�5K  G   5L  5   5M  7   5N  3   5P  +   5Q  '   .��5R  1   5S     �� 5T     $��30��5U  !   $��uz��5V  !   
�������$��-255 -6 0 0q�5X  !   $	��Top=�5Y  !   $��Segoe UI)�5Z  !   $
��12px(�5[  !   $ Center=�5\  !   $��Center=�5]  !   ���#2638595^  !   �� 5`     -   5        $ 
txtSDollar��5a  !    . $��0��5c  !   $��5 0 0 0q�5d  !   .��62   ��5e  "   �� 5f  &   " ��6,   .�5g  *   ��  �@J�SnapsToDevicePixels . 5h  )   �� 5i  *    �@�OverridesDefaultStyle . 5j  *   �� 5k  *    �@ TabNavigation$
 None=�5l  )   �� 5m  *    �@�FocusVisualStyle 5n  )   Z� �� 5o  *    � ��$	 150��5p  *   �� 5q  *    � ��$ 40��5r  )   �� 5s  *    � ��$	 200��5t  1   �� 5u  *    �@J�	AllowDrop . 5v  )   �� 5w  *    � ��
 �����6G   �� 5x  *    � ��$ Segoe UI)�6G   �� 5y  *    � ��$
 16px(�6E   �� 5z  *    �@��
CaretBrush
 �����6G   �� 5{  *    � �� 5|  .   �� 5}  2   " ��6B   .R�5~  6   �� $��Border��6=   $	 5��5  5   $
 30 10 10 10q�5�  5   $��1q�5�  5   ��5�  :   �� 5�  >   # �  6N   ��5�  :   �� 5�  >   $ #455A64��6N   ._�5�  :   �� $ PART_ContentHost��5�  5   $��0q�5�  G   5�  5   5�  7   5�  3   5�  +   5�  '   .��5�  1   5�     �� 5�     $��30��5�  !   $��$��5�  !   
�������$��-250 -6 0 0q�5�  !   $	��Top=�5�  !   $��Segoe UI)�5�  !   $
��12px(�5�  !   $ Center=�5�  !   $��Center=�5�  !   ���#2638595�  !   5�     ��5�     �� 5�     " ��6$   .�5�  "   ��  � �� �#2638596?   �� 5�  "    � ��
 �����6?   �� 5�  "    � �� 5�  &   �� 5�  *   " ��6:   .R�5�  .   �� $	 5��5�  -   #��z��5�  -   #��z��5�  -   ._�5�  2   �� $��Center=�6C   $��Center=�6^   5�  3   5�  /   5�  +   5�  #   5�     5�     � 5�     ���#263859$��20��60   $	��100��6<   $��-360 -100 0 0q�6H   .+�5�     �� -   5        $ chSkidka��5�     $��5 0 0 0q�5�     �� 5�     $��Skidka %��5�     ���#6B778C$��Segoe UI)�5�     $
��15px(�5�     $��65��5�     $��25 0 0 0q�5�     $��Center=�5�     $��Center=�5�     5�     5�     �� 5�     -   5        $ 	StackNaqd��5�     $ 
Horizontal=�5�     $��
35 20 35 0q�5�     $y�	Collapsed=�5�     .+�5�     �� $��50��6   $	��478��6)   .��5�     �� $ 
Horizontal=�5�     .+�5�     �� -   5        $ txtNaqd��5�  !   $	��420��5�  !   $��0 0 10 0q�5�  !   .��63   ��5�  "   �� 5�  &   " ��6,   .�5�  *   ��  �@J�SnapsToDevicePixels . 5�  )   �� 5�  *    �@�OverridesDefaultStyle . 5�  *   �� 5�  *    �@ TabNavigation$
 None=�5�  )   �� 5�  *    �@�FocusVisualStyle 5�  )   Z� �� 5�  *    � ��$	 120��5�  *   �� 5�  *    � ��$ 40��5�  )   �� 5�  *    �@J�	AllowDrop . 5�  )   �� 5�  *    � ��
 �����6G   �� 5�  *    � ��$ Segoe UI)�6G   �� 5�  *    � ��$
 16px(�6E   �� 5�  *    �@��
CaretBrush
 �����6G   �� 5�  *    � �� 5�  .   �� 5�  2   " ��6B   .R�5�  6   �� $��Border��6=   $	 10��5�  5   $
 30 10 10 10q�5�  5   $��1q�5�  5   ��5�  :   �� 5�  >   # �  6N   ��5�  :   �� 5�  >   $ #263859��6N   ._�5�  :   �� $ PART_ContentHost��5�  5   $��0q�5�  G   5�  5   5�  7   5�  3   5�  +   5�  '   .��5�  1   5�     �� 5�     $��Resources/naqd_pul.png��6$   $��28��6D   $��28��6O   $��0 0 13 0q�6[   5�     ��5      �� 5     " ��6$   .�5  "   ��  � �� �#2638596?   �� 5  "    � ��
 �����6?   �� 5  "    � �� 5  &   �� 5  *   " ��6:   .R�5  .   �� $	 5��5  -   #��z��5	  -   #��z��5
  -   ._�5  2   �� $��Center=�6C   $��Center=�6^   5  3   5  /   5  +   5  #   5     5     5     �� 5     -   5        $ 
StackKarta��5  J   $ 
Horizontal=�6   $��
35 10 35 0q�66   $y�	Collapsed=�6^   .+�5     �� $��50��6   $	��478��6)   .��5     �� $ 
Horizontal=�6%   .+�5     �� -   5        $ txtKarta��5  &   $	��420��5  &   $��0 0 10 0q�5  &   .��68   ��5  "   �� 5  &   " ��6,   .�5  *   ��  �@J�SnapsToDevicePixels . 5   )   �� 5!  *    �@�OverridesDefaultStyle . 5"  *   �� 5#  *    �@ TabNavigation$
 None=�5$  )   �� 5%  *    �@�FocusVisualStyle 5&  )   Z� �� 5'  *    � ��$	 120��5(  *   �� 5)  *    � ��$ 40��5*  )   �� 5+  *    �@J�	AllowDrop . 5,  )   �� 5-  *    � ��
 �����6G   �� 5.  *    � ��$ Segoe UI)�6G   �� 5/  *    � ��$
 16px(�6E   �� 50  *    �@��
CaretBrush
 �����6G   �� 51  *    � �� 52  .   �� 53  2   " ��6B   .R�54  6   �� $��Border��6=   $	 10��55  5   $
 30 10 10 10q�56  5   $��1q�57  5   ��58  :   �� 59  >   # �  6N   ��5;  :   �� 5<  >   $ #263859��6N   ._�5>  :   �� $ PART_ContentHost��5?  5   $��0q�5>  G   5?  5   5@  7   5A  3   5C  +   5D  '   .��5E  1   5F     �� 5G     $��Resources/Kaarta.png��6$   $��28��6B   $��28��6M   $��0 0 13 0q�6Y   5H     ��5I     �� 5J     " ��6$   .�5K  "   ��  � �� �#2638596?   �� 5L  "    � ��
 �����6?   �� 5M  "    � �� 5N  &   �� 5O  *   " ��6:   .R�5P  .   �� $	 5��5Q  -   #��z��5R  -   #��z��5S  -   ._�5T  2   �� $��Center=�6C   $��Center=�6^   5V  3   5W  /   5X  +   5Z  #   5[     5]     5^     �� 5_     -   5        $ StackTransfer��5_  J   $ 
Horizontal=�6   $��
35 10 35 0q�66   $y�	Collapsed=�6a   .+�5`     �� $��50��6   $	��478��6)   .��5a     �� $ 
Horizontal=�6%   .+�5b     �� -   5        $ txtPulutkazish��5b  &   $	��420��5d  &   $��0 0 10 0q�5e  &   .��68   ��5f  "   �� 5g  &   " ��6,   .�5h  *   ��  �@J�SnapsToDevicePixels . 5i  )   �� 5j  *    �@�OverridesDefaultStyle . 5k  *   �� 5l  *    �@ TabNavigation$
 None=�5m  )   �� 5n  *    �@�FocusVisualStyle 5o  )   Z� �� 5p  *    � ��$	 120��5q  *   �� 5r  *    � ��$ 40��5s  )   �� 5t  *    �@J�	AllowDrop . 5u  )   �� 5v  *    � ��
 �����6G   �� 5w  *    � ��$ Segoe UI)�6G   �� 5x  *    � ��$
 16px(�6E   �� 5y  *    �@��
CaretBrush
 �����6G   �� 5z  *    � �� 5{  .   �� 5|  2   " ��6B   .R�5}  6   �� $��Border��6=   $	 10��5~  5   $
 30 10 10 10q�5  5   $��1q�5�  5   ��5�  :   �� 5�  >   # �  6N   ��5�  :   �� 5�  >   $ #263859��6N   ._�5�  :   �� $ PART_ContentHost��5�  5   $��0q�5�  G   5�  5   5�  7   5�  3   5�  +   5�  '   .��5�  1   5�     �� 5�     $ ��Resources/Pul_utkazish.png��6$   $��28��6H   $��28��6S   $��0 0 13 0q�6_   5�     ��5�     �� 5�     " ��6$   .�5�  "   ��  � �� �#2638596?   �� 5�  "    � ��
 �����6?   �� 5�  "    � �� 5�  &   �� 5�  *   " ��6:   .R�5�  .   �� $	 5��5�  -   #��z��5�  -   #��z��5�  -   ._�5�  2   �� $��Center=�6C   $��Center=�6^   5�  3   5�  /   5�  +   5�  #   5�     5�     5�     �� 5�     -   5        $ StackCurrency��5�  J   $ 
Horizontal=�6   $��
35 10 35 0q�66   $y�	Collapsed=�6a   .+�5�     �� $��50��6   $	��478��6)   .��5�     �� $ 
Horizontal=�6%   .+�5�     �� -    5        $ 	txtValSum��5�  &   $��0 0 10 0q�5�  &    . $��0��5�  &   .��6/   ��5�  "   �� 5�  &   " ��6,   .�5�  *   ��  �@J�SnapsToDevicePixels . 5�  )   �� 5�  *    �@�OverridesDefaultStyle . 5�  *   �� 5�  *    �@ TabNavigation$
 None=�5�  )   �� 5�  *    �@�FocusVisualStyle 5�  )   Z� �� 5�  *    � ��$	 150��5�  *   �� 5�  *    � ��$ 40��5�  )   �� 5�  *    �@J�	AllowDrop . 5�  )   �� 5�  *    � ��
 �����6G   �� 5�  *    � ��$ Segoe UI)�6G   �� 5�  *    � ��$
 16px(�6E   �� 5�  *    �@��
CaretBrush
 �����6G   �� 5�  *    � �� 5�  .   �� 5�  2   " ��6B   .R�5�  6   �� $��Border��6=   $	 5��5�  5   $
 30 10 10 10q�5�  5   $��1q�5�  5   ��5�  :   �� 5�  >   # �  6N   ��5�  :   �� 5�  >   $ #455A64��6N   ._�5�  :   �� $ PART_ContentHost��5�  5   $��0q�5�  G   5�  5   5�  7   5�  3   5�  +   5�  '   .��5�  1   5�     �� 5�     $��50��6(   $��So'mda��63   
�������$��-250 -6 0 0q�6T   $	��Top=�6i   $��Segoe UI)�6�   $
��12px(�6�   $ Center=�6�   $��Center=�6�   ���#2638596�   �� 5�     -!   5        $ txtKurs��5�  &   .��67   ��5�  "   �� 5�  &   " ��6,   .�5�  *   ��  �@J�SnapsToDevicePixels . 5�  )   �� 5�  *    �@�OverridesDefaultStyle . 5�  *   �� 5�  *    �@ TabNavigation$
 None=�5�  )   �� 5�  *    �@�FocusVisualStyle 5�  )   Z� �� 5�  *    � ��$	 100��5�  *   �� 5�  *    � ��$ 40��5�  )   �� 5�  *    � ��$	 100��5�  1   �� 5�  *    �@J�	AllowDrop . 5�  )   �� 5�  *    � ��
 �����6G   �� 5�  *    � ��$ Segoe UI)�6G   �� 5�  *    � ��$
 16px(�6E   �� 5�  *    �@��
CaretBrush
 �����6G   �� 5�  *    � �� 5�  .   �� 5�  2   " ��6B   .R�5�  6   �� $��Border��6=   $	 5��5�  5   $
 30 10 10 10q�5�  5   $��1q�5�  5   ��5�  :   �� 5�  >   # �  6N   ��5�  :   �� 5�  >   $ #455A64��6N   ._�5�  :   �� $ PART_ContentHost��5�  5   $��0q�5�  G   5�  5   5   7   5  3   5  +   5  '   .��5  1   5     �� 5     $��35��6(   $
��Kurs��63   
�������$��-150 -6 0 0q�6R   $	��Top=�6g   $��Segoe UI)�6   $
��12px(�6�   $ Center=�6�   $��Center=�6�   ���#2638596�   �� 5     -"   5        $ txtCurrency��5	  !   $	��200��5  !   $��10 0 0 0q�5  !   .��63   ��5  "   �� 5  &   " ��6,   .�5  *   ��  �@J�SnapsToDevicePixels . 5  )   �� 5  *    �@�OverridesDefaultStyle . 5  *   �� 5  *    �@ TabNavigation$
 None=�5  )   �� 5  *    �@�FocusVisualStyle 5  )   Z� �� 5  *    � ��$	 120��5  *   �� 5  *    � ��$ 40��5  )   �� 5  *    �@J�	AllowDrop . 5  )   �� 5  *    � ��
 �����6G   �� 5  *    � ��$ Segoe UI)�6G   �� 5  *    � ��$
 16px(�6E   �� 5   *    �@��
CaretBrush
 �����6G   �� 5!  *    � �� 5"  .   �� 5#  2   " ��6B   .R�5$  6   �� $��Border��6=   $	 5��5%  5   $
 30 10 10 10q�5&  5   $��1q�5'  5   ��5(  :   �� 5)  >   # �  6N   ��5+  :   �� 5,  >   $ #455A64��6N   ._�5.  :   �� $ PART_ContentHost��5/  5   $��0q�5.  G   5/  5   50  7   51  3   53  +   54  '   .��55  1   56     �� 57     $!��Resources/Valyuta_qabul.png��6$   $��28��6I   $��28��6T   $��
-45 0 13 0q�6`   5:     ��5;     �� 5<     " ��6$   .�5=  "   ��  � �� �#2638596?   �� 5>  "    � ��
 �����6?   �� 5?  "    � �� 5@  &   �� 5A  *   " ��6:   .R�5B  .   �� $	 5��5C  -   #��z��5D  -   #��z��5E  -   ._�5F  2   �� $��Center=�6C   $��Center=�6^   5H  3   5I  /   5J  +   5L  #   5M     5O     5P     5Q     �� 5S     $��3��6   .+�5T     �� -#   5        $ BtnTulov��5U     $��To'lov��5W     ��5X     �� 5Y     " ��6    .�5Z     ��  � ��$	 478��66   �� 5[      � ��$ 50��67   �� 5\      � ��$ 0 0 0 30q�67   �� 5]      � �� �#F759406;   �� 5^      � ��
 �����6;   �� 5_      � ��$ Segoe UI)�6;   �� 5`      � ��$ 20(�69   �� 5a      � �� 5b  "   �� 5c  &   " ��66   .R�5d  *   �� $	 5��5e  )   #��z��5f  )   #��z��5g  )   ._�5h  .   �� $��Center=�6?   $��Center=�6Z   5i  +   5j  '   5l      5m     P� 5n  "    �@J�IsMouseOver . . �5o  &   ��  � �� �#F599606C   5p  #   5r     5t     5u     5v     5w     5x     