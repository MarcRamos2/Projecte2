using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using WpfAppTestAPIClient.Model;
using System.Configuration;

namespace WpfAppTestAPIClient.APIClient
{
    class TascasApiClient
    {
        string BaseUri;

        public TascasApiClient()
        {
            BaseUri = ConfigurationManager.AppSettings["BaseUri"];
        }
        // MOSTRAR TOTES LES TASQUES 
        public async Task<List<Tasca>> GetTascasAsync()
        {
            List<Tasca> tasca = new List<Tasca>();

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(BaseUri);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Enviem una petició GET al endpoint /tasca}
                HttpResponseMessage response = await client.GetAsync("tasca");
                if (response.IsSuccessStatusCode)
                {
                    //Obtenim el resultat i el carreguem al objecte llista d'usuaris
                    tasca = await response.Content.ReadAsAsync<List<Tasca>>();
                    response.Dispose();
                }
                else
                {
                    //TODO: que fer si ha anat malament? retornar null? missatge?
                }
            }
            return tasca;
        }

        // AFEGIR TASCA 
        public async Task AddAsync(Tasca tasca)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(BaseUri);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Enviem una petició POST al endpoint /tasca}
                HttpResponseMessage response = await client.PostAsJsonAsync("tasca", tasca);
                response.EnsureSuccessStatusCode();
            }
        }

        //MODIFICAR TASCA
        public async Task UpdateAsync(Tasca tasca)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(BaseUri);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Enviem una petició PUT al endpoint /tasca/Codi
                HttpResponseMessage response = await client.PutAsJsonAsync($"tasca/{tasca.Codi}", tasca);
                response.EnsureSuccessStatusCode();
            }
        }

        //DELETE TASCA
        public async Task DeleteAsync(int Codi)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(BaseUri);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Enviem una petició DELETE al endpoint /tasca/Codi
                HttpResponseMessage response = await client.DeleteAsync($"tasca/{Codi}");
                response.EnsureSuccessStatusCode();
            }
        }

    }
}
