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
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json.Linq;
using System.Globalization;
using Newtonsoft.Json;
using System.Windows.Media.Effects;
using System.Threading;

namespace SotuvPlatformasi
{
    /// <summary>
    /// Interaction logic for xaml
    /// </summary>
    public partial class fakt_qab_ucont : UserControl
    {
        public fakt_qab_ucont()
        {
            InitializeComponent();
        }
        DBAccess objDBAccess = new DBAccess();
        MainWindow main1 = (MainWindow)Application.Current.MainWindow;
        public static DataTable tbFaktura;
        public static MySqlCommand cmdUpdateProd;

        private void kurish_Click(object sender, RoutedEventArgs e)
        {
            main1.TabMenu.SelectedIndex = 5;
            Faktura selectedFaktura = dataGridFaktura.SelectedItems[0] as Faktura;
            faktura_kurish_ucont.faktura_id = selectedFaktura.id.ToString();
        }
        private void BtnAsosiy_Click(object sender, RoutedEventArgs e)
        {
            main1.TabMenu.SelectedIndex = 1;
        }

        

        public List<Faktura> fakturas = new List<Faktura>();

        public class Faktura
        {
            public int id { get; set; }
            public string date { get; set; }
            public double som { get; set; }
            public double dollar { get; set; }
        }

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
            public double body_som { get; set; }
            public double body_dollar { get; set; }
            public double som { get; set; }
            public double dollar { get; set; }
            public double quantity { get; set; }
            public string barcode { get; set; }
            public int faktura { get; set; }
            public int group { get; set; }
        }
        List<FakturaItem> fakturaItems = new List<FakturaItem>();
        public List<Faktura> Get_Faktura()
        {
            fakturas = (from DataRow dr in tbFaktura.Rows
                        select new Faktura()
                        {
                            id = Convert.ToInt32(dr["id"]),
                            date = dr["date"].ToString(),
                            som = Convert.ToDouble(dr["som"]),
                            dollar = Convert.ToDouble(dr["dollar"])
                        }).ToList();
            return fakturas;
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
        public string FakturaContent = "";
        void Simulator()
        {
            for (int i = 0; i < 250; i++)
                Thread.Sleep(5);
        }
        BlurEffect myEffect = new BlurEffect();
        private async void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            if (MainWindow.fakt_qab_click)
            {
                if (MainWindow.Recieve == false)
                {
                    try
                    {
                       tbFaktura = new DataTable();
                       tbFaktura.Columns.Add("id", typeof(int));
                       tbFaktura.Columns.Add("date");
                       tbFaktura.Columns.Add("som");
                       tbFaktura.Columns.Add("dollar");

                        string urlFaktura = "http://santexnika.backoffice.uz/api/faktura/st1/?fil=" + MainWindow.filial_id;
                        FakturaContent = await GetObject(urlFaktura);
                        myEffect.Radius = 10;
                        Effect = myEffect;
                        using (LoadingWindow lw = new LoadingWindow(Simulator))
                        {
                            lw.ShowDialog();
                        }
                        myEffect.Radius = 0;
                        Effect = myEffect;
                        JArray arrayFaktura = JArray.Parse(FakturaContent);
                        if (arrayFaktura != null)
                        {
                            foreach (var item in arrayFaktura)
                            {
                                DataRow rowFaktura = tbFaktura.NewRow();
                                rowFaktura["id"] = item["id"];
                                rowFaktura["date"] = item["date"];
                                rowFaktura["som"] = item["som"];
                                rowFaktura["dollar"] = item["dollar"];
                                tbFaktura.Rows.Add(rowFaktura);
                            }

                        }
                        tbFaktura.Dispose();
                        dataGridFaktura.ItemsSource = Get_Faktura();
                        MainWindow.Recieve = true;
                    }
                    catch (Exception ex)
                    {
                        System.Windows.Forms.MessageBox.Show(ex.Message, "Сообщение", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                        return;
                    }
                }
            }
        }

        private async void btnQabul_qilish_Click(object sender, RoutedEventArgs e)
        {
            if (tbFaktura.Rows.Count == 0) return;
            string faktura = "0";
            try
            {
                Faktura selectedFaktura = dataGridFaktura.SelectedItems[0] as Faktura;
                faktura = selectedFaktura.id.ToString();
                string filial = MainWindow.filial_id;
                Uri u = new Uri("http://santexnika.backoffice.uz/api/productfilial/add/");
                string payload = "{\"faktura\": \"" + faktura + "\",\"filial\": \"" + filial + "\"}";
                HttpContent content = new StringContent(payload, Encoding.UTF8, "application/json");
                var t = Task.Run(() => PostURI(u, content));
                t.Wait();
                if (t.Result == "Error!")
                {
                    System.Windows.Forms.MessageBox.Show("Server bilan bog'lanishda xatolik, iltimos internetni tekshiring!", "Xatolik", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                    return;
                }

            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message, "Сообщение", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                return;
            }
            try
            {
                string urlFakturaItem = "http://santexnika.backoffice.uz/api/fakturaitem/st1/?fak=" + faktura;
                string FakturaItemContent = await GetObject(urlFakturaItem);
                fakturaItems = JsonConvert.DeserializeObject<List<FakturaItem>>(FakturaItemContent);
            }
            catch(Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message, "Сообщение", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                return;
            }
            //Dastlab Fakturada kelgan tovarlarni maxsulot jadvaliga qabul qilamiz
            int CountRecieve = tbFaktura.Rows.Count;
            string Recieve_barcode = "", Recieve_price_som = "", Recieve_price_dollar="", Recieve_tan_dollar="", Recieve_tan_som="", Recieve_quantity = "", Recieve_minCount=""; // GetObject();
            string product_quantiy = "", val_id="", recieve_price="", recieve_tan_price="";
            DataTable tbProductOne = new DataTable();
            foreach (var item in fakturaItems)
            {
                Recieve_barcode = item.barcode.ToString();

                Recieve_price_som = item.som.ToString();
                Recieve_price_som = DoubleToStr(Recieve_price_som);

                Recieve_price_dollar = item.dollar.ToString();
                Recieve_price_dollar = DoubleToStr(Recieve_price_dollar);

                Recieve_quantity = item.quantity.ToString();//
                Recieve_quantity = DoubleToStr(Recieve_quantity);

                Recieve_minCount = item.product.min_count.ToString();
                Recieve_minCount = DoubleToStr(Recieve_minCount);

                Recieve_tan_som = item.body_som.ToString();//
                Recieve_tan_som = DoubleToStr(Recieve_tan_som);

                Recieve_tan_dollar = item.body_dollar.ToString();//
                Recieve_tan_dollar = DoubleToStr(Recieve_tan_dollar);

                string queryProductOne = "select * from product where barcode='" + Recieve_barcode + "'";
                objDBAccess.readDatathroughAdapter(queryProductOne, tbProductOne);
                //Agar ushbu maxsulotdan avval olingan bo'lsa uni miqdorini , narxini update qilamiz, min_countini update qilamiz
                if (tbProductOne.Rows.Count > 0)
                {
                    product_quantiy = tbProductOne.Rows[0]["quantity"].ToString();//
                    product_quantiy = DoubleToStr(product_quantiy);

                    val_id = tbProductOne.Rows[0]["val_id"].ToString();

                    double Dproduct_quantity = double.Parse(product_quantiy, CultureInfo.InvariantCulture);
                    double Drecieve_quantity = double.Parse(Recieve_quantity, CultureInfo.InvariantCulture);
                    double result_quantity = Dproduct_quantity + Drecieve_quantity; // natijaviy miqdor
                    string str_result_quantity = result_quantity.ToString();
                    str_result_quantity = DoubleToStr(str_result_quantity);

                    
                    if (val_id == "1")
                    {
                        recieve_price = Recieve_price_som;
                        recieve_price = DoubleToStr(recieve_price);

                        recieve_tan_price = Recieve_tan_som;
                    }
                    else
                    {
                        recieve_price = Recieve_price_dollar;
                        recieve_price = DoubleToStr(recieve_price);

                        recieve_tan_price = Recieve_tan_dollar;
                    }
                    cmdUpdateProd = new MySqlCommand("update product set price='" + recieve_price + "',t_price='"+DoubleToStr(recieve_tan_price)+"', quantity='" + str_result_quantity + "', min_count='"+Recieve_minCount+"' where barcode='" + Recieve_barcode + "'");
                    objDBAccess.executeQuery(cmdUpdateProd);
                    cmdUpdateProd.Dispose();
                }
                //Agar ushbu maxsulotdan avval olinmagan bo'lsa, product jadvaliga kiritamiz
                else
                {
                    string Recieve_prodId = item.product.id.ToString();
                    string Recieve_name = item.product.name;
                    string Recieve_group = item.group.ToString();
                    string Recieve_measurement = item.product.measurement;
                    string Recieve_preparer = item.product.preparer;
                    if(double.Parse(DoubleToStr(Recieve_price_som), CultureInfo.InvariantCulture) > 0)
                    {
                        recieve_price = Recieve_price_som;
                        recieve_price = DoubleToStr(recieve_price);
                        val_id = "1";
                        recieve_tan_price = Recieve_tan_som;
                    }
                    if(double.Parse(DoubleToStr(Recieve_price_dollar), CultureInfo.InvariantCulture) > 0)
                    {
                        recieve_price = Recieve_price_dollar;
                        recieve_price = DoubleToStr(recieve_price);
                        val_id = "2";
                        recieve_tan_price = Recieve_tan_dollar;
                    }
                    string queryProduct_id = "select * from product order by id desc limit 1";
                    DataTable tbProduct_id = new DataTable();
                    objDBAccess.readDatathroughAdapter(queryProduct_id, tbProduct_id);
                    if (tbProduct_id.Rows.Count == 0)
                    {
                        cmdUpdateProd = new MySqlCommand("insert into product (id,product_id,name,t_price,price,val_id,quantity,barcode,gurux, measurement, preparer, min_count) values(1,'" + Recieve_prodId + "','" + Recieve_name + "','"+DoubleToStr(recieve_tan_price)+"','" + DoubleToStr(recieve_price) + "','"+val_id+"','" + Recieve_quantity + "','" + Recieve_barcode + "','" + Recieve_group + "','"+Recieve_measurement+"','"+Recieve_preparer+"','"+Recieve_minCount+"')");
                        MessageBox.Show("insert into product (id,product_id,name,t_price,price,val_id,quantity,barcode,gurux, measurement, preparer, min_count) values(1,'" + Recieve_prodId + "','" + Recieve_name + "','" + DoubleToStr(recieve_tan_price) + "','" + DoubleToStr(recieve_price) + "','" + val_id + "','" + Recieve_quantity + "','" + Recieve_barcode + "','" + Recieve_group + "','" + Recieve_measurement + "','" + Recieve_preparer + "','" + Recieve_minCount + "')");
                        objDBAccess.executeQuery(cmdUpdateProd);
                    }
                    else
                    {
                        cmdUpdateProd = new MySqlCommand("insert into product (product_id,name,t_price,price,val_id,quantity,barcode,gurux, measurement, preparer, min_count) values('" + Recieve_prodId + "','" + Recieve_name + "','"+DoubleToStr(recieve_tan_price)+"','" + DoubleToStr(recieve_price) + "','"+val_id+"','" + Recieve_quantity + "','" + Recieve_barcode + "','" + Recieve_group + "','" + Recieve_measurement + "','" + Recieve_preparer + "','" + Recieve_minCount + "')");
                        objDBAccess.executeQuery(cmdUpdateProd);
                    }
                    tbProduct_id.Clear();
                    tbProduct_id.Dispose();
                }
                tbProductOne.Clear();
                tbProductOne.Dispose();
            }

            System.Windows.Forms.MessageBox.Show("Faktura muvaffaqiyatli qabul qilindi!", "Xabar", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Information);

            ShowRecieve();
        }

        public string DoubleToStr(string s)
        {
            

            if (s.IndexOf('.') > -1)
            {
                int index = s.IndexOf('.');
                string first = s.Substring(0, index);
                string last = s.Substring(index + 1);
                if (last == "0" || last == "00")
                {
                    s = first;
                }
                else
                {
                    s = first + "." + last;
                }
            }

            if (s.IndexOf(',') > -1)
            {
                int index = s.IndexOf(',');
                string first = s.Substring(0, index);
                string last = s.Substring(index + 1);
                if (last == "0" || last == "00")
                {
                    s = first;
                }
                else
                {
                    s = first + "." + last;
                }
            }



            return s;

        }

        static async Task<string> PostURI(Uri u, HttpContent c)
        {
            var response = string.Empty;
            using (var client = new HttpClient())
            {
                client.DefaultRequestHeaders.Add("Authorization", "token 28aeccd6cbbb18b16fddf2967d0b35242ad6a0a3");
                try
                {
                    HttpResponseMessage result = await client.PostAsync(u, c);
                    if (result.IsSuccessStatusCode)
                    {
                        using (HttpContent content = result.Content)
                        {
                            response = await content.ReadAsStringAsync();
                        }
                    }
                    else
                    {
                        response = "Error!";
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            return response;
        }

        public async void ShowRecieve()
        {
            try
            {
                if (MainWindow.Recieve) { tbFaktura.Clear(); }
                else
                {
                    tbFaktura = new DataTable();
                    tbFaktura.Columns.Add("id", typeof(int));
                    tbFaktura.Columns.Add("date");
                    tbFaktura.Columns.Add("som");
                    tbFaktura.Columns.Add("dollar");
                }
                string urlFaktura = "http://santexnika.backoffice.uz/api/faktura/st1/?fil=" + MainWindow.filial_id;
                string FakturaContent = await GetObject(urlFaktura);
                JArray arrayFaktura = JArray.Parse(FakturaContent);
                if (arrayFaktura != null)
                {
                    foreach (var item in arrayFaktura)
                    {
                        DataRow rowFaktura = tbFaktura.NewRow();
                        rowFaktura["id"] = item["id"];
                        rowFaktura["date"] = item["date"];
                        rowFaktura["som"] = item["som"];
                        rowFaktura["dollar"] = item["dollar"];
                        tbFaktura.Rows.Add(rowFaktura);
                    }

                }

                tbFaktura.Dispose();
                dataGridFaktura.ItemsSource = Get_Faktura();
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message, "Сообщение", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                return;
            }
        }

        private async void btnBekor_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Faktura selectedFaktura = dataGridFaktura.SelectedItems[0] as Faktura;
                string selectedFakturaId = selectedFaktura.id.ToString();
                string url = "http://santexnika.backoffice.uz/api/faktura/otkaz/?fak=" + selectedFakturaId;
                string response = await GetObject(url);
                try
                {
                    if (MainWindow.Recieve) { tbFaktura.Clear(); }
                    else
                    {
                        tbFaktura = new DataTable();
                        tbFaktura.Columns.Add("id", typeof(int));
                        tbFaktura.Columns.Add("date");
                        tbFaktura.Columns.Add("som");
                        tbFaktura.Columns.Add("dollar");
                    }
                    string urlFaktura = "http://santexnika.backoffice.uz/api/faktura/st1/?fil=" + MainWindow.filial_id;
                    string FakturaContent = await GetObject(urlFaktura);
                    JArray arrayFaktura = JArray.Parse(FakturaContent);
                    if (arrayFaktura != null)
                    {
                        foreach (var item in arrayFaktura)
                        {
                            DataRow rowFaktura = tbFaktura.NewRow();
                            rowFaktura["id"] = item["id"];
                            rowFaktura["date"] = item["date"];
                            rowFaktura["som"] = item["som"];
                            rowFaktura["dollar"] = item["dollar"];
                            tbFaktura.Rows.Add(rowFaktura);
                        }

                    }

                    tbFaktura.Dispose();
                    dataGridFaktura.ItemsSource = Get_Faktura();
                }
                catch (Exception ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message, "Сообщение", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                    return;
                }
                System.Windows.Forms.MessageBox.Show("Faktura bekor qilindi!", "Xabar", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Information);

            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message, "Сообщение", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                return;
            }
        }
    }
}
