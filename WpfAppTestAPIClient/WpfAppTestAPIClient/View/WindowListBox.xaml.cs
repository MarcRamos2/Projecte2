using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfAppTestAPIClient.APIClient;
using WpfAppTestAPIClient.Model;

namespace WpfAppTestAPIClient.View
{
    /// <summary>
    /// Interaction logic for WindowListBox.xaml
    /// </summary>
    public partial class WindowListBox : Window
    {
        TascasApiClient api;
        public WindowListBox()
        {
            InitializeComponent();
            api = new TascasApiClient();
        }

        private void Window_Loaded2(object sender, RoutedEventArgs e)
        {
            refresh();
        }


        // AFEGIR TASCA
        private void AfegirTasca(object sender, RoutedEventArgs e)
        {

        }

        // MODIFICAR TASCA
        private void ModificarTasca(object sender, RoutedEventArgs e)
        {
            WindowEditTasca form = new WindowEditTasca();
            form.ShowDialog();
        }

        // ELIMINAR TASCA
        private async void EliminarTasca(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("¿Eliminar usuario seleccionado?", "Eliminar", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    //Agafem les dades del item seleccionat
                    Tasca oTasca = (Tasca)dgTasca.SelectedItem;

                    //Eliminen usuari
                    await api.DeleteAsync(oTasca.Codi);

                    //Actualitzem dades del grid
                    refresh();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }




        // REFRESH
        public async void refresh()
        {
            Mouse.OverrideCursor = System.Windows.Input.Cursors.Wait;
            dgTasca.ItemsSource = await api.GetTascasAsync();
            Mouse.OverrideCursor = System.Windows.Input.Cursors.Arrow;
        }

    }
}
