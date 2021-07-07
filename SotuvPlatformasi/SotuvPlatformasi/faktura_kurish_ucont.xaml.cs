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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using MySql.Data.MySqlClient;
using Newtonsoft.Json.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;
using System.Windows.Media.Effects;
using System.Threading;

namespace SotuvPlatformasi
{
    /// <summary>
    /// Interaction logic for faktura_kurish_ucont.xaml
    /// </summary>
    public partial class faktura_kurish_ucont : UserControl
    {
        public faktura_kurish_ucont()
        {
            InitializeComponent();
        }
        MainWindow main = (MainWindow)Application.Current.MainWindow;
        public static string faktura_id = "";
        public static List<FakturaItem> fakturaItems;
        public class Product
        {
            public int id { get; set; }
            public string name { get; set; }
            public string measurement { get; set; }
            public string preparer { get; set; }
            public double min_count { get; set; }
        }

        public class FakturaItem
        {
            public int id { get; set; }
            public Product product { get; set; }
            public string name { get; set; }
            public double som { get; set; }
            public double dollar { get; set; }
            public double quantity { get; set; }
            public string barcode { get; set; }
            public int faktura { get; set; }
            public int group { get; set; }
        }
       
        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            main.TabMenu.SelectedIndex = 4;
        }

        private void BtnAsosiy_Click(object sender, RoutedEventArgs e)
        {
            main.TabMenu.SelectedIndex = 1;
        }

        public static async Task<string> GetObject(string restCallURL)
        {
            HttpClient apiCallClient = new HttpClient();
            string authToken = "token 62115f83e1c1e8b588fa419330976ea6012d1cd4";
            HttpRequestMessage apirequest = new HttpRequestMessage(HttpMethod.Get, restCallURL);
            apirequest.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            apirequest.Headers.Add("Authorization", authToken);
            HttpResponseMessage apiCallResponse = await apiCallClient.SendAsync(apirequest);

            string requestresponse = await apiCallResponse.Content.ReadAsStringAsync();
            return requestresponse;
        }
        void Simulator()
        {
            for (int i = 0; i < 300; i++)
                Thread.Sleep(5);
        }
        BlurEffect myEffect = new BlurEffect();
        private async void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            if (MainWindow.fakt_qab_click)
            {
                try
                {
                    string urlFakturaItem = "http://santexnika.backoffice.uz/api/fakturaitem/st1/?fak=" + faktura_id;
                    string FakturaItemContent = await GetObject(urlFakturaItem);
                    myEffect.Radius = 10;
                    Effect = myEffect;
                    using (LoadingWindow lw = new LoadingWindow(Simulator))
                    {
                        lw.ShowDialog();
                    }
                    myEffect.Radius = 0;
                    Effect = myEffect;
                    fakturaItems = JsonConvert.DeserializeObject<List<FakturaItem>>(FakturaItemContent);
                    dataGridFaktura.ItemsSource = fakturaItems;
                }
                catch (Exception ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message, "Сообщение", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                    return;
                }
            }
            
        }
    }
}
