   M S B A M L   `   `   `  ����N  JWpfAppTestAPIClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WpfAppTestAPIClientWpfAppTestAPIClient  5   	   (    "WpfAppTestAPIClient.WindowEditUser   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WpfAppTestAPIClient     5   	     � Title$  Afegir Reponsable��5	      $	��250��6"   $	��400��62   .��5
      � $��10,10,10,10q�6   ���	#FFA9A9A9 � RowDefinitions 5   
   �� 5      $
��7.54 �6   �� 5      $��29 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��18 �6   �� 5      $��33 �6   �� 5      $	��21* �6   �� 5      $	��16* �6    � ColumnDefinitions 5   
   �� 5      $��17 �6   �� 5      $	��130 �6   �� 5      $	��109 �6   �� 5      $��69 �6   �� 5      $��36 �6   �� 5      .+�5   
   �� $	��Id:��6   $
��Bold"�6   $��1��60   $��0,1,0,2q�6@   $��1��6Q   �� 5    
   -   5        $��Id��5       $
��Bold"�6   $��1��61   $��2��6>   $��6,1,0,2q�6b   $��2��6s   ��6N   �� *Id+6s   �� 5"   
   $
��Nom:��6   $
��Bold"�6   $��2��61   $��1��6>   $��0,1,0,3q�6N   �� 5#   
   -   5        $
��Name��5#      $
��Bold"�6   $��2��60   $��2��6=   $��5,4,1,4q�6c    J� RenderTransformOrigin$ 0.5,0.5&�6t   $��2��6�   ��6M   �� *Name+6�   �� 5%   
   $��Cognom:��6   $
��Bold"�6"   $��3��64   $��1��6A   $��0,2,0,3q�6Q   �� 5&   
   -   5        $��LastName��5&      $
��Bold"�6"   $��3��64   $��2��6A   $��5,4,1,4q�6k   $��2��6|   ��6Q   �� *
LastName+6|   �� 5(   
   $��Data Naixement:��6   $
��Bold"�6*   $��4��6<   $��1��6I   $��0,2,0,4q�6Y   (  "System.Windows.Controls.DatePicker  5)   
   -   5        $��Birthday��5)      $
��Bold"�6%   $��4��67   $��2��6D      SelectedDateFormat$ Short=�6w   $��5,2,1,4q�6�   ���	#FF250505$��2��6�      SelectedDate 6T   �� *
Birthday+6�   �� 5+   
   -   5        $��	btnUpdate��5+      $��Desar��6"   $
��Bold"�62   $��6��6E   $��2��6R   $��0,0,0,1q�6z   5-      5.      