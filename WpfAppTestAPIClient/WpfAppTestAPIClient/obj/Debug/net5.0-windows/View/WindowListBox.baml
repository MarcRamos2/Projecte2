   M S B A M L   `   `   `  ����N  JWpfAppTestAPIClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WpfAppTestAPIClient.ViewWpfAppTestAPIClient.View  5   	   ,    &WpfAppTestAPIClient.View.WindowListBox   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:WpfAppTestAPIClient.View     5   	   -   5          � Title$  Tasca��5   	   $	��300��6   $	��750��6$   .��5
      � ���	#FFA9A9A9.+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgTasca��5      $	��Top=�6$   $
��Left=�6<   $
��Auto��6W      AutoGenerateColumns$ False��5         CanUserResizeColumns$
 True��6'      CanUserAddRows$ False��6C      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Codi��6%      
IsReadOnly$
 True��63      Width5  /System.Windows.Controls.DataGridLengthConverter$ 40 6^   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6E   �� *Codi+6^     5      $	 Nom��6%   $
 True��62   $
 Auto 6\   	 6D   �� *Nom+6\     5      $ 
Descripcio��6%   $
 True��69   $
 Auto 6j   	 6K   �� *
Descripcio+6j     5      $ Responsable��6%   $
 True��6:   $
 Auto 6l   	 6L   �� *Responsable+6l     5      $ Colors��6&   $
 Auto 6Q   	 66   �� *Colors+6Q     5      $ 
Data Inici��6%   $
 True��69   $
 Auto 6j   	 6K   �� *
Data_Inici+6j     5      $ 
Data Final��6%   $
 True��69   $
 Auto 6j   	 6K   �� *
Data_Final+6j     5      $ Estat��6%   $
 True��64   $ 50 6`   	 6F   �� *Estat+6`   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ 	Modificar��6)   $ 60 6<   
   CellTemplate
 5      �� 5      .R�5      �� -   5        $��	Modificar��5   %   69   5      5         5"      $ Eliminar��6)   $ 60 6;   
 5#      �� 5$      .R�5%      �� -   5        $��Eliminar��5%   %   68   5&      5(      54      56      58      