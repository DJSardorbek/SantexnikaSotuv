using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SotuvPlatformasi
{
    /// <summary>
    /// Interaction logic for Filiallar_bazasi_ucont.xaml
    /// </summary>
    public partial class Filiallar_bazasi_ucont : UserControl
    {
        public Filiallar_bazasi_ucont()
        {
            InitializeComponent();
            comboFilial.Items.Add("Filial1");
            comboFilial.Items.Add("Filial2");
            comboFilial.Items.Add("Filial3");
            comboFilial.Items.Add("Filial4");
        }
        public class Product
        {
            public int id { get; set; }
            public string name { get; set; }
            public string measurement { get; set; }
            public string preparer { get; set; }
        }

        public class Result
        {
            public int id { get; set; }
            public Product product { get; set; }
            public int price { get; set; }
            public double quantity { get; set; }
            public string barcode { get; set; }
            public int filial { get; set; }
        }

        public class ProductFilial
        {
            public int count { get; set; }
            public string next { get; set; }
            public object previous { get; set; }
            public IList<Result> results { get; set; }
        }

        public static async Task<string> GetObject(string restCallURL)
        {
            HttpClient apiCallClient = new HttpClient();
            string authToken = "token 28aeccd6cbbb18b16fddf2967d0b35242ad6a0a3";
            HttpRequestMessage apirequest = new HttpRequestMessage(HttpMethod.Get, restCallURL);
            apirequest.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            apirequest.Headers.Add("Authorization", authToken);
            HttpResponseMessage apiCallResponse = await apiCallClient.SendAsync(apirequest);

            string requestresponse = await apiCallResponse.Content.ReadAsStringAsync();
            return requestresponse;
        }

        private void BtnAsosiy_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = (MainWindow)Application.Current.MainWindow;
            main.TabMenu.SelectedIndex = 1;
        }
        public string ProductFilialContent="", combo_sel_index="";
        void Simulator()
        {
            for(int i = 0; i<200; i++)
            Thread.Sleep(5);
        }
        ProductFilial productFilial;
        
        BlurEffect myEffect = new BlurEffect();

        private async void comboFilial_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                
                string urlProductfilial = "http://santexnika.backoffice.uz/api/productfilial/by_filial/?f=" + (comboFilial.SelectedIndex + 1).ToString();
                combo_sel_index = (comboFilial.SelectedIndex + 1).ToString();
                ProductFilialContent = await GetObject(urlProductfilial);
                myEffect.Radius = 10;
                Effect = myEffect;
                using (LoadingWindow lw = new LoadingWindow(Simulator))
                {
                    lw.ShowDialog();
                }
                myEffect.Radius = 0;
                Effect = myEffect;
                productFilial = JsonConvert.DeserializeObject<ProductFilial>(ProductFilialContent);
                dataGridFilillar.ItemsSource = productFilial.results.ToList();
                if (dataGridFilillar.Items.Count != 0)
                    GridPage.Visibility = Visibility.Visible;
                else
                    GridPage.Visibility = Visibility.Collapsed;
            }
            catch(Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message, "Exception", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                
            }
        }

        private async void btnPrevius_Click(object sender, RoutedEventArgs e)
        {
            if (productFilial.previous != null)
            {
                try
                {
                    string urlProductfilial = productFilial.previous.ToString();
                    string ProductFilialContent = await GetObject(urlProductfilial);
                    myEffect.Radius = 10;
                    Effect = myEffect;
                    using (LoadingWindow lw = new LoadingWindow(Simulator))
                    {
                        lw.ShowDialog();
                    }
                    myEffect.Radius = 0;
                    Effect = myEffect;
                    productFilial = JsonConvert.DeserializeObject<ProductFilial>(ProductFilialContent);
                    dataGridFilillar.ItemsSource = productFilial.results.ToList();
                    if(productFilial.previous == null)
                    {
                        btnPrevius.IsEnabled = false;
                        btnPrevius.Opacity = 0.5;
                    }
                    if (btnNext.IsEnabled == false)
                    {
                        btnNext.IsEnabled = true;
                        btnNext.Opacity = 1;
                    }
                }
                catch(Exception ex)
                {
                     System.Windows.Forms.MessageBox.Show(ex.Message, "Exception", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                }
            }
            else
            {
                btnPrevius.IsEnabled = false;
                btnPrevius.Opacity = 0.5;
            }
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                var tbx = sender as TextBox;
                if (dataGridFilillar.Items.Count != 0)
                {
                    if (tbx.Text != null)
                    {
                        var filterList = productFilial.results.ToList().Where(x => x.product.name.Contains(tbx.Text));
                        dataGridFilillar.ItemsSource = null;
                        dataGridFilillar.ItemsSource = filterList;
                    }
                    else
                    {
                        dataGridFilillar.ItemsSource = productFilial.results.ToList();
                    }
                }
            }
            catch(Exception) { }
        }

        private async void btnNext_Click(object sender, RoutedEventArgs e)
        {
            if(productFilial.next != null)
            {
                try
                {
                    string urlProductfilial = productFilial.next;
                    string ProductFilialContent = await GetObject(urlProductfilial);
                    myEffect.Radius = 10;
                    Effect = myEffect;
                    using (LoadingWindow lw = new LoadingWindow(Simulator))
                    {
                        lw.ShowDialog();
                    }
                    myEffect.Radius = 0;
                    Effect = myEffect;
                    productFilial = JsonConvert.DeserializeObject<ProductFilial>(ProductFilialContent);
                    dataGridFilillar.ItemsSource = productFilial.results.ToList();
                    if(productFilial.next == null)
                    {
                        btnNext.IsEnabled = false;
                        btnNext.Opacity = 0.5;
                    }
                    if (btnPrevius.IsEnabled == false)
                    {
                        btnPrevius.IsEnabled = true;
                        btnPrevius.Opacity = 1;
                    }
                }
                catch(Exception ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message, "Exception", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                }
            }
            else
            {
                btnNext.IsEnabled = false;
                btnNext.Opacity = 0.5;
            }
        }
    }
}
