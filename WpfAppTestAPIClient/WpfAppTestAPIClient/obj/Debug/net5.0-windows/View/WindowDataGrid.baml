   M S B A M L   `   `   `  ����N  JWpfAppTestAPIClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WpfAppTestAPIClientWpfAppTestAPIClient  5   	   (    "WpfAppTestAPIClient.WindowDataGrid   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WpfAppTestAPIClient     5   	   -   5          � Title$  Responsables��5   	   $	��300��6   $	��460��6+   .��5
      � ���	#FFA9A9A9.+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgUsers��5      $	��Top=�6$   $
��Left=�6<   $
��Auto��6W      AutoGenerateColumns$ False��5         CanUserResizeColumns$
 True��6'      CanUserAddRows$ False��6C      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      
IsReadOnly$
 True��61      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 6Z   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6C   �� *Id+6Z     5      $	 Nom��6%   $
 True��62   $
 Auto 6]   	 6D   �� *Name+6]     5      $ Cognom��6%   $
 True��65   $
 Auto 6d   	 6G   �� *
LastName+6d     5      $ Data Naixement��6%   $
 True��6=   $
 Auto 6l   	 6O   �� *
Birthday+6l   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ 	Modificar��6)   $ 60 6<   
   CellTemplate
 5      �� 5      .R�5      �� -   5        $��	Modificar��5   %   69   5      5        5      $ Eliminar��6)   $ 60 6;   
 5      �� 5       .R�5!      �� -   5        $��Eliminar��5!   %   68   5"      5$      50      52      53      