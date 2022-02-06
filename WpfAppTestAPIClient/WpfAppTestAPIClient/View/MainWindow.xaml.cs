using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfAppTestAPIClient.Model;
using WpfAppTestAPIClient.APIClient;
using WpfAppTestAPIClient.View;

namespace WpfAppTestAPIClient
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        UsersApiClient api = new UsersApiClient();

        public MainWindow()
        {
            InitializeComponent();
        }

        // VEURE RESPONSABLE
        private void VeureResponsables_Button_Click(object sender, RoutedEventArgs e)
        {
            WindowDataGrid form = new WindowDataGrid();
            form.ShowDialog();
        }

        // AFEGIR RESPONSBLE
        private void AfegirResponsable_Button_Click(object sender, RoutedEventArgs e)
        {
            WindowEditUser form = new WindowEditUser();
            form.ShowDialog();

        }

        // VEURE TASCA
        private void VeureTotesTasca_Button_Click(object sender, RoutedEventArgs e)
        {
            WindowListBox form = new WindowListBox();
            form.ShowDialog();

        }

        private void AfegirTasca_Button_Click(object sender, RoutedEventArgs e)
        {
            WindowEditTasca form = new WindowEditTasca();
            form.ShowDialog();
        }

    }
}
