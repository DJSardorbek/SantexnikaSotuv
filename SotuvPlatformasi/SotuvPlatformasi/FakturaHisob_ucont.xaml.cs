using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
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
    /// Interaction logic for FakturaHisob_ucont.xaml
    /// </summary>
    public partial class FakturaHisob_ucont : UserControl
    {
        public FakturaHisob_ucont()
        {
            InitializeComponent();
            comboFilial.Items.Add("Filial1");
            comboFilial.Items.Add("Filial2");
            comboFilial.Items.Add("Filial3");
        }

        public FakturaHisob FakturaHisobs = new FakturaHisob();

        public class Result
        {
            public int id { get; set; }
            public string date { get; set; }
            public double summa { get; set; }
            public double filial { get; set; }
            public double status { get; set; }
            public double difference { get; set; }
            public string message { get; set; }
        }

        public class FakturaHisob
        {
            public int count { get; set; }
            public object next { get; set; }
            public object previous { get; set; }
            public IList<Result> results { get; set; }
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

        private void BtnAsosiy_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = (MainWindow)Application.Current.MainWindow;
            main.TabMenu.SelectedIndex = 1;
        }

        private void dataGridFakturaHisob_LoadingRow(object sender, DataGridRowEventArgs e)
        {
        }
        void Simulator()
        {
            for (int i = 0; i < 200; i++)
                Thread.Sleep(5);
        }
        BlurEffect myEffect = new BlurEffect();
        private async void comboFilial_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                string url = "http://santexnika.backoffice.uz/api/faktura/st2/?fil=" + (comboFilial.SelectedIndex + 3).ToString();
                string FakturaContent = await GetObject(url);
                myEffect.Radius = 10;
                Effect = myEffect;
                using (LoadingWindow lw = new LoadingWindow(Simulator))
                {
                    lw.ShowDialog();
                }
                myEffect.Radius = 0;
                Effect = myEffect;
                FakturaHisobs = JsonConvert.DeserializeObject<FakturaHisob>(FakturaContent);
                dataGridFakturaHisob.ItemsSource = FakturaHisobs.results.ToList();
                double difference = 0;
                foreach(var item in FakturaHisobs.results)
                {
                    difference += item.difference;
                }
                txtUmumiyFarq.Text = difference.ToString();
                if (FakturaHisobs.next != null)
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
            if (FakturaHisobs.previous != null)
            {
                try
                {
                    string urlFakturaHisobs = FakturaHisobs.previous.ToString();
                    string FakturaHisobsContent = await GetObject(urlFakturaHisobs);
                    myEffect.Radius = 10;
                    Effect = myEffect;
                    using (LoadingWindow lw = new LoadingWindow(Simulator))
                    {
                        lw.ShowDialog();
                    }
                    myEffect.Radius = 0;
                    Effect = myEffect;
                    FakturaHisobs = JsonConvert.DeserializeObject<FakturaHisob>(FakturaHisobsContent);
                    dataGridFakturaHisob.ItemsSource = FakturaHisobs.results.ToList();
                    double difference = 0;
                    foreach (var item in FakturaHisobs.results)
                    {
                        difference += item.difference;
                    }
                    txtUmumiyFarq.Text = difference.ToString();
                    if (FakturaHisobs.previous == null)
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
                catch (Exception ex)
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

        private async void btnNext_Click(object sender, RoutedEventArgs e)
        {
            if (FakturaHisobs.next != null)
            {
                try
                {
                    string urlFakturaHisobs = FakturaHisobs.next.ToString();
                    string FakturaHisobsContent = await GetObject(urlFakturaHisobs);
                    myEffect.Radius = 10;
                    Effect = myEffect;
                    using (LoadingWindow lw = new LoadingWindow(Simulator))
                    {
                        lw.ShowDialog();
                    }
                    myEffect.Radius = 0;
                    Effect = myEffect;
                    FakturaHisobs = JsonConvert.DeserializeObject<FakturaHisob>(FakturaHisobsContent);
                    dataGridFakturaHisob.ItemsSource = FakturaHisobs.results.ToList();
                    double difference = 0;
                    foreach (var item in FakturaHisobs.results)
                    {
                        difference += item.difference;
                    }
                    txtUmumiyFarq.Text = difference.ToString();
                    if (FakturaHisobs.next == null)
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
                catch (Exception ex)
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
