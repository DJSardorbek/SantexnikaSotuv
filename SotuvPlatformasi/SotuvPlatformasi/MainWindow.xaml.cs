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
using MySql.Data.MySqlClient;
using System.Data;
using System.Net.NetworkInformation;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Windows.Threading;
using System.Threading;
using System.Windows.Forms;
using System.Globalization;

namespace SotuvPlatformasi
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        DispatcherTimer timer = new DispatcherTimer();
        public MainWindow()
        {
            InitializeComponent();
            
        }
        DataTable tbShopId;
        CurrencyManager managertb;
        public static MySqlCommand cmdShopId;
        public static string filial_id = "", filial = "";
        public static DataTable tbFilial_id;
        public static bool Recieve = false;
        public static string header = "";
        public static string footer = "";
        public static bool fakt_qab_click = false;
        DBAccess objDBAccess = new DBAccess();

        /// <summary>
        /// To start sending data to the internet in each 10 secund
        /// </summary>
        public void startTimer()
        {
            string send = "select * from send";
            DataTable tbSend = new DataTable();
            objDBAccess.readDatathroughAdapter(send, tbSend);
            if (tbSend.Rows.Count > 0)
            {
                string password = tbSend.Rows[0]["password"].ToString();
                if (password == Kirish_ucont.password1)
                {
                    timer.Tick += new EventHandler(WaitingEvent);
                    timer.Interval = new TimeSpan(0, 0, 10);
                    timer.Start();
                }
            }
            tbSend.Dispose();
            
        }
        public string DoubleToStr(string s)
        {
            if(s.IndexOf(',') > -1)
            {
                int index = s.IndexOf(',');
                string first = s.Substring(0, index);
                string last = s.Substring(index + 1);
                s = first + "." + last;
            }
            return s;
        }

        public void WaitingEvent(object Source, EventArgs e)
        {
            if (send_finish)
            {
                send_finish = false;

                #region Nasiyasiz savdolar uchun
                string querySoldShop = "select * from shop where status_tulov = 1 and debt = 0 and status_server = 0";
                tbSoldShop = new DataTable();
                objDBAccess.readDatathroughAdapter(querySoldShop, tbSoldShop);
                if (tbSoldShop.Rows.Count > 0)
                {
                    int CountSoldShop = tbSoldShop.Rows.Count;
                    string naqd_som = "", naqd_dollar = "", plastik = "", transfer = "", skidka_som = "", skidka_dollar = "", saler = ""; //shop jadvali
                    for (int i = 0; i < CountSoldShop; i++)
                    {

                        naqd_som = tbSoldShop.Rows[i]["naqd"].ToString();//
                        naqd_som = DoubleToStr(naqd_som);

                        naqd_dollar = tbSoldShop.Rows[i]["currency"].ToString();//
                        naqd_dollar= DoubleToStr(naqd_dollar);

                        plastik = tbSoldShop.Rows[i]["plastik"].ToString();//
                        plastik = DoubleToStr(plastik);

                        transfer = tbSoldShop.Rows[i]["transfer"].ToString();//
                        transfer = DoubleToStr(transfer);

                        
                        skidka_som = tbSoldShop.Rows[i]["difference_som"].ToString();//
                        double Dskidka_som = double.Parse(DoubleToStr(skidka_som), CultureInfo.InvariantCulture);

                        skidka_dollar = tbSoldShop.Rows[i]["difference_dollar"].ToString();//
                        double Dskidka_dollar = double.Parse(DoubleToStr(skidka_dollar), CultureInfo.InvariantCulture);

                        saler = tbSoldShop.Rows[i]["sellar_id"].ToString();

                        Uri u = new Uri("http://santexnika.backoffice.uz/api/shop/add/");

                        var payload = "{\"naqd_som\": \"" + naqd_som + "\",\"naqd_dollar\": \""+naqd_dollar+"\",\"plastik\": \"" + plastik + "\",\"nasiya_som\": \"0\",\"nasiya_dollar\": \"0\",\"transfer\": \"" + transfer + "\",\"skidka_som\": \""+skidka_som+"\",\"skidka_dollar\": \"" + skidka_dollar+ "\",\"filial\": \"" + filial_id + "\",\"saler\": \"" + saler + "\"}";
                        HttpContent content = new StringContent(payload, Encoding.UTF8, "application/json");
                        var t = Task.Run(() => PostURI(u, content));
                        t.Wait();
                        if (t.Result == "Error!")
                        {
                            Title = "Server bilan bog'lanishda xatolik, iltimos internetni tekshiring!";
                        }
                        else if (t.Result != "Error!")
                        {
                            Title = "Savdo jo'natilmoqda...";
                            cmdSendShop = new MySqlCommand("update shop set status_server=1 where id='" + tbSoldShop.Rows[i]["id"] + "'");
                            objDBAccess.executeQuery(cmdSendShop);
                            cmdSendShop.Dispose();
                        }
                    }
                }
                else
                {
                    Title = "Savdo jo'natilgan...";
                }
                tbSoldShop.Clear();
                tbSoldShop.Dispose();
                #endregion

                #region Nasiya aralash savdo uchun
                string queryMixShop = "select * from shop where status_tulov = 1 and debt = 1 and status_server = 0";
                tbMixShop = new DataTable();
                objDBAccess.readDatathroughAdapter(queryMixShop, tbMixShop);
                if (tbMixShop.Rows.Count > 0)
                {
                    int CountMixShop = tbMixShop.Rows.Count;
                    string naqd_som = "", naqd_dollar = "", plastik = "", transfer = "", skidka_som = "", skidka_dollar = "", saler = ""; //shop jadvali
                    string fio = "", phone = "", nasiya_som="", nasiya_dollar=""; // debtor jadvali
                    for (int i = 0; i < CountMixShop; i++)
                    {


                        naqd_som = tbMixShop.Rows[i]["naqd"].ToString();//
                        naqd_som = DoubleToStr(naqd_som);

                        naqd_dollar = tbMixShop.Rows[i]["currency"].ToString();//
                        naqd_dollar = DoubleToStr(naqd_dollar);

                        plastik = tbMixShop.Rows[i]["plastik"].ToString();//
                        plastik = DoubleToStr(plastik);

                        transfer = tbMixShop.Rows[i]["transfer"].ToString();//
                        transfer = DoubleToStr(transfer);


                        skidka_som = tbMixShop.Rows[i]["difference_som"].ToString();//
                        double Dskidka_som = double.Parse(DoubleToStr(skidka_som), CultureInfo.InvariantCulture);

                        skidka_dollar = tbMixShop.Rows[i]["difference_dollar"].ToString();//
                        double Dskidka_dollar = double.Parse(DoubleToStr(skidka_dollar), CultureInfo.InvariantCulture);

                        nasiya_som = tbMixShop.Rows[0]["nasiya_som"].ToString();//
                        nasiya_som = DoubleToStr(nasiya_som);

                        nasiya_dollar = tbMixShop.Rows[0]["nasiya_dollar"].ToString();//
                        nasiya_dollar = DoubleToStr(nasiya_dollar);

                        saler = tbMixShop.Rows[i]["sellar_id"].ToString();

                        string queryDebtDebtor = "select debtor.mijoz_fish, debtor.tel_1 from debtor inner join debt on debtor.id = debt.debtor_id where debt.shop_id='" + tbMixShop.Rows[i]["id"] + "'";
                        tbDebtDebtor = new DataTable();
                        objDBAccess.readDatathroughAdapter(queryDebtDebtor, tbDebtDebtor);
                        
                        fio = tbDebtDebtor.Rows[0]["mijoz_fish"].ToString();
                        phone = tbDebtDebtor.Rows[0]["tel_1"].ToString();

                        tbDebtDebtor.Clear();
                        tbDebtDebtor.Dispose();

                        Uri u = new Uri("http://santexnika.backoffice.uz/api/shop/add/");

                        var payload = "{\"naqd_som\": \"" + naqd_som + "\",\"naqd_dollar\": \"" + naqd_dollar + "\",\"plastik\": \"" + plastik + "\",\"nasiya_som\": \""+nasiya_som+"\",\"nasiya_dollar\": \""+nasiya_dollar+"\",\"transfer\": \"" + transfer + "\",\"skidka_som\": \"" + skidka_som + "\",\"skidka_dollar\": \"" + skidka_dollar + "\",\"filial\": \"" + filial_id + "\",\"saler\": \"" + saler + "\",\"fio\": \""+fio+"\",\"phone\": \""+phone+"\"}";
                        HttpContent content = new StringContent(payload, Encoding.UTF8, "application/json");
                        var t = Task.Run(() => PostURI(u, content));
                        t.Wait();
                        if (t.Result == "Error!")
                        {
                            Title = "Server bilan bog'lanishda xatolik, iltimos internetni tekshiring!";
                        }
                        else if (t.Result != "Error!")
                        {
                            Title = "Savdo jo'natilmoqda...";
                            cmdSendShop = new MySqlCommand("update shop set status_server=1 where id='" + tbMixShop.Rows[i]["id"] + "'");
                            objDBAccess.executeQuery(cmdSendShop);
                            cmdSendShop.Dispose();
                        }
                    }
                }
                else
                {
                    Title = "Savdo jo'natilgan...";
                }
                tbMixShop.Clear();
                tbMixShop.Dispose();
                #endregion

                #region Nasiya uchun
                string queryDebtShop = "select * from shop where status_tulov = 0 and debt = 1 and status_server = 0";
                tbDebtShop = new DataTable();
                objDBAccess.readDatathroughAdapter(queryDebtShop, tbDebtShop);
                if (tbDebtShop.Rows.Count > 0)
                {
                    int CountDebtShop = tbDebtShop.Rows.Count;
                    string skidka_som = "", skidka_dollar = "", saler = ""; //shop jadvali
                    string fio = "", phone = "", nasiya_som = "", nasiya_dollar = ""; // debtor jadvali
                    for (int i = 0; i < CountDebtShop; i++)
                    {

                        nasiya_som = tbDebtShop.Rows[i]["nasiya_som"].ToString();//
                        nasiya_som = DoubleToStr(nasiya_som);

                        nasiya_dollar = tbDebtShop.Rows[i]["nasiya_dollar"].ToString();//
                        nasiya_dollar = DoubleToStr(nasiya_dollar);

                        skidka_som = tbDebtShop.Rows[i]["skidka_som"].ToString();//
                        skidka_som = DoubleToStr(skidka_som);

                        skidka_dollar = tbDebtShop.Rows[i]["skidka_dollar"].ToString();//
                        skidka_dollar = DoubleToStr(skidka_dollar);

                        saler = tbDebtShop.Rows[i]["sellar_id"].ToString();

                        string queryDebtDebtor = "select debtor.mijoz_fish, debtor.tel_1 from debtor inner join debt on debtor.id = debt.debtor_id where debt.shop_id='" + tbDebtShop.Rows[i]["id"] + "'";
                        tbDebtDebtor = new DataTable();
                        objDBAccess.readDatathroughAdapter(queryDebtDebtor, tbDebtDebtor);
                        fio = tbDebtDebtor.Rows[0]["mijoz_fish"].ToString();
                        phone = tbDebtDebtor.Rows[0]["tel_1"].ToString();
                        tbDebtDebtor.Clear();
                        tbDebtDebtor.Dispose();

                        Uri u = new Uri("http://santexnika.backoffice.uz/api/shop/add/");

                        var payload = "{\"naqd_som\": \"0\",\"naqd_dollar\": \"0\",\"plastik\": \"0\",\"nasiya_som\": \"" + nasiya_som + "\",\"nasiya_dollar\": \"" + nasiya_dollar + "\",\"transfer\": \"0\",\"skidka_som\": \"" + skidka_som + "\",\"skidka_dollar\": \"" + skidka_dollar + "\",\"filial\": \"" + filial_id + "\",\"saler\": \"" + saler + "\",\"fio\": \"" + fio + "\",\"phone\": \"" + phone + "\"}";
                        HttpContent content = new StringContent(payload, Encoding.UTF8, "application/json");
                        var t = Task.Run(() => PostURI(u, content));
                        t.Wait();
                        if (t.Result == "Error!")
                        {
                            Title = "Server bilan bog'lanishda xatolik, iltimos internetni tekshiring!";
                        }
                        else if (t.Result != "Error!")
                        {
                            Title = "Savdo jo'natilmoqda...";
                            cmdSendShop = new MySqlCommand("update shop set status_server=1 where id='" + tbDebtShop.Rows[i]["id"] + "'");
                            objDBAccess.executeQuery(cmdSendShop);
                            cmdSendShop.Dispose();
                        }
                    }
                }
                else
                {
                    Title = "Savdo jo'natilgan...";
                }
                tbDebtShop.Clear();
                tbDebtShop.Dispose();
                #endregion

                #region Payhistory uchun
                string queryPayHistory = "select * from payhistory where status_server = 0";
                tbSendPayHistory = new DataTable();
                objDBAccess.readDatathroughAdapter(queryPayHistory, tbSendPayHistory);
                if (tbSendPayHistory.Rows.Count > 0)
                {
                    int CountPayHistory = tbSendPayHistory.Rows.Count;
                    string given_som = "", given_dollar=""; //payhistory jadvali
                    string fio = "", phone1 = ""; // debtor va debt jadvali
                    for (int i = 0; i < CountPayHistory; i++)
                    {
                        given_som = tbSendPayHistory.Rows[i]["given_som"].ToString();//
                        given_som = DoubleToStr(given_som);

                        given_dollar = tbSendPayHistory.Rows[i]["given_dollar"].ToString();//
                        given_dollar = DoubleToStr(given_dollar);

                        string queryPayDebtor = "select debtor.mijoz_fish,debtor.tel_1 from debtor inner join payhistory on debtor.id = payhistory.debtor_id where debtor.id='" + tbSendPayHistory.Rows[i]["debtor_id"] + "'";
                        tbPayDebtor = new DataTable();
                        objDBAccess.readDatathroughAdapter(queryPayDebtor, tbPayDebtor);
                        fio = tbPayDebtor.Rows[0]["mijoz_fish"].ToString();
                        phone1 = tbPayDebtor.Rows[0]["tel_1"].ToString();
                        tbPayDebtor.Clear();
                        tbPayDebtor.Dispose();
                        Uri u = new Uri("http://santexnika.backoffice.uz/api/payhistory/add/");

                        var payload = "{\"filial\": \"" + filial_id + "\",\"som\": \"" + given_som + "\",\"dollar\": \""+given_dollar+"\",\"fio\": \"" + fio + "\",\"phone1\": \"" + phone1 + "\"}";
                        //MessageBox.Show(payload);
                        HttpContent content = new StringContent(payload, Encoding.UTF8, "application/json");
                        var t = Task.Run(() => PostURI(u, content));
                        t.Wait();
                        if (t.Result == "Error!")
                        {
                            Title = "Server bilan bo'glanishda xatolik, iltimos internetni tekshiring!";
                        }
                        else if (t.Result != "Error!")
                        {
                            Title = "Savdo jo'natilmoqda...";
                            cmdSendShop = new MySqlCommand("update payhistory set status_server=1 where id='" + tbSendPayHistory.Rows[i]["id"] + "'");
                            objDBAccess.executeQuery(cmdSendShop);
                            cmdSendShop.Dispose();
                        }
                    }
                }
                else
                {
                    Title = "Savdo jo'natilgan...";
                }
                tbSendPayHistory.Clear();
                tbSendPayHistory.Dispose();
                #endregion

                #region ReturnProduct savdo uchun status 0 jo'natiladi
                string queryReturnProduct = "select * from returnproduct where sold = 1 and status_server=0";
                tbSoldRetPro = new DataTable();
                objDBAccess.readDatathroughAdapter(queryReturnProduct, tbSoldRetPro);
                if (tbSoldRetPro.Rows.Count > 0)
                {
                    int CountSoldRetPro = tbSoldRetPro.Rows.Count;
                    string return_quan = "", som = "0",dollar="0", difference = "", barcode = "", val_id=""; // returnproduct jadvali
                    for (int i = 0; i < CountSoldRetPro; i++)
                    {
                        return_quan = tbSoldRetPro.Rows[i]["return_quantity"].ToString(); //
                        return_quan = DoubleToStr(return_quan);

                        val_id = tbSoldRetPro.Rows[i]["val_id"].ToString();
                        if (val_id == "1") 
                        { 
                            som = tbSoldRetPro.Rows[i]["summa"].ToString();
                            som = DoubleToStr(som);
                        }
                        else { som = "0"; }

                        if (val_id == "2")
                        {
                            dollar = tbSoldRetPro.Rows[i]["summa"].ToString();
                            dollar = DoubleToStr(dollar);
                        }
                        else { dollar = "0"; }

                        difference = tbSoldRetPro.Rows[i]["difference"].ToString(); //
                        difference = DoubleToStr(difference);
                        barcode = tbSoldRetPro.Rows[i]["barcode"].ToString();

                        Uri u = new Uri("http://santexnika.backoffice.uz/api/returnproduct/add/");

                        var payload = "{\"return_quan\": \"" + return_quan + "\",\"som\": \"" + som + "\",\"dollar\": \""+dollar+ "\",\"filial\": \"" + filial_id + "\",\"difference\": \"" + difference + "\",\"status\": \"0\",\"barcode\": \"" + barcode + "\"}";
                        //MessageBox.Show(payload);
                        HttpContent content = new StringContent(payload, Encoding.UTF8, "application/json");
                        var t = Task.Run(() => PostURI(u, content));
                        t.Wait();
                        if (t.Result == "Error!")
                        {
                            Title = "Server bilan bo'glanishda xatolik, iltimos internetni tekshiring!";
                        }
                        else if (t.Result != "Error!")
                        {
                            Title = "Savdo jo'natilmoqda...";
                            cmdSendShop = new MySqlCommand("update returnproduct set status_server=1 where id='" + tbSoldRetPro.Rows[i]["id"] + "'");
                            objDBAccess.executeQuery(cmdSendShop);
                            cmdSendShop.Dispose();
                        }
                    }
                }
                else
                {
                    Title = "Savdo jo'natilgan...";
                }
                tbSoldRetPro.Clear();
                tbSoldRetPro.Dispose();
                #endregion

                #region ReturnProduct nasiya uchun
                string queryDebtRetPro = "select * from returnproduct where debt = 1 and status_server = 0";
                tbDebtRetPro = new DataTable();
                objDBAccess.readDatathroughAdapter(queryDebtRetPro, tbDebtRetPro);
                if (tbDebtRetPro.Rows.Count > 0)
                {
                    int CountDebtRetPro = tbDebtRetPro.Rows.Count;
                    string return_quan = "", som = "0", dollar = "0", difference = "", barcode = "", val_id = ""; // returnproduct jadvali
                    string fio = "", phone1 = "";
                    for (int i = 0; i < CountDebtRetPro; i++)
                    {
                        return_quan = tbSoldRetPro.Rows[i]["return_quantity"].ToString(); //
                        return_quan = DoubleToStr(return_quan);

                        val_id = tbSoldRetPro.Rows[i]["val_id"].ToString();
                        if (val_id == "1")
                        {
                            som = tbSoldRetPro.Rows[i]["summa"].ToString();
                            som = DoubleToStr(som);
                        }
                        else { som = "0"; }

                        if (val_id == "2")
                        {
                            dollar = tbSoldRetPro.Rows[i]["summa"].ToString();
                            dollar = DoubleToStr(dollar);
                        }
                        else { dollar = "0"; }

                        difference = tbSoldRetPro.Rows[i]["difference"].ToString(); //
                        difference = DoubleToStr(difference);
                        barcode = tbSoldRetPro.Rows[i]["barcode"].ToString();

                        string queryDebtRetDebtor = "select debtor.mijoz_fish, debtor.tel_1 from debtor inner join debt on debtor.id = debt.debtor_id where debt.shop_id='" + tbDebtRetPro.Rows[i]["shop_id"] + "'";
                        tbDebtRetDebtor = new DataTable();
                        objDBAccess.readDatathroughAdapter(queryDebtRetDebtor, tbDebtRetDebtor);
                        
                        fio = tbDebtRetDebtor.Rows[0]["mijoz_fish"].ToString();
                        phone1 = tbDebtRetDebtor.Rows[0]["tel_1"].ToString();
                        tbDebtRetDebtor.Clear();
                        tbDebtRetDebtor.Dispose();
                        
                        Uri u = new Uri("http://santexnika.backoffice.uz/api/returnproduct/add/");

                        var payload = "{\"return_quan\": \"" + return_quan + "\",\"som\": \"" + som + "\",\"dollar\": \"" + dollar + "\",\"filial\": \"" + filial_id + "\",\"difference\": \"" + difference + "\",\"status\": \"1\",\"barcode\": \"" + barcode + "\",\"fio\": \""+fio+"\",\"phone1\": \""+phone1+"\"}";
                        HttpContent content = new StringContent(payload, Encoding.UTF8, "application/json");
                        var t = Task.Run(() => PostURI(u, content));
                        t.Wait();
                        if (t.Result == "Error!")
                        {
                            Title = "Server bilan bo'lanishda xatolik, iltimos internetni tekshiring!";
                        }
                        else if (t.Result != "Error!")
                        {
                            Title = "Savdo jo'natilmoqda...";
                            cmdSendShop = new MySqlCommand("update returnproduct set status_server=1 where id='" + tbDebtRetPro.Rows[i]["id"] + "'");
                            objDBAccess.executeQuery(cmdSendShop);
                            cmdSendShop.Dispose();
                        }
                    }
                }
                else
                {
                    Title = "Savdo jo'natilgan...";
                }
                tbDebtRetPro.Clear();
                tbDebtRetPro.Dispose();
                #endregion

                send_finish = true;
            }
        }

        private void Window_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            if (e.Key == Key.Escape)
            {
                esc++;
                if (esc == 2)
                {
                    TabMenu.SelectedIndex = 0;
                    esc = 0;
                }
            }
            if (TabMenu.SelectedIndex != 0)
            {
                //Sotuv oynasi
                if (e.Key == Key.F1)
                {
                    TabMenu.SelectedIndex = 2;
                }

                //Navbat oynasi
                if (e.Key == Key.F2)
                {
                    TabMenu.SelectedIndex = 3;
                }

                //Tovar qoldiq
                if (e.Key == Key.F4)
                {
                    TabMenu.SelectedIndex = 10;
                }

                //Qarzdorlar
                if (e.Key == Key.F5)
                {
                    TabMenu.SelectedIndex = 9;
                }

                //Faktura qabul
                if (e.Key == Key.F6)
                {
                    TabMenu.SelectedIndex = 5;
                }

                //Faktura hisob
                if (e.Key == Key.F7)
                {
                    TabMenu.SelectedIndex = 7;
                }

                //Hisobot
                if (e.Key == Key.F8)
                {
                    TabMenu.SelectedIndex = 11;
                }

                //Filiallar bazasi
                if (e.Key == Key.F9)
                {
                    TabMenu.SelectedIndex = 8;
                }

                //Sozlamalar
                if (e.Key == Key.F10)
                {
                    TabMenu.SelectedIndex = 6;
                }
            }
        }

        int esc = 0;

        /// <summary>
        /// The form closing
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        /*private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            string queryShopId = "select * from shopId where password='" + Kirish_ucont.password1 + "'";
            tbShopId = new DataTable();
            objDBAccess.readDatathroughAdapter(queryShopId, tbShopId);
            if (tbShopId.Rows.Count > 0)
            {
                cmdShopId = new MySqlCommand("update shopId set shop_id='" + Sotuv_ucont.shopID + "' where password='" + Kirish_ucont.password1 + "'");
                objDBAccess.executeQuery(cmdShopId);
            }
            else
            {
                string queryId = "select * from shopid order by id desc limit 1";
                DataTable tbSId = new DataTable();
                objDBAccess.readDatathroughAdapter(queryId, tbSId);
                if (tbSId.Rows.Count == 0)
                {
                    cmdShopId = new MySqlCommand("insert into shopId values(1,'" + Sotuv_ucont.shopID + "','" + Kirish_ucont.mac_address + "','" + Kirish_ucont.password1 + "')");
                    objDBAccess.executeQuery(cmdShopId);
                }
                else
                {
                    cmdShopId = new MySqlCommand("insert into shopId (shop_id,mac_address,password) values('" + Sotuv_ucont.shopID + "','" + Kirish_ucont.mac_address + "','" + Kirish_ucont.password1 + "')");
                    objDBAccess.executeQuery(cmdShopId);
                }
                try
                {
                    tbSId.Clear();
                    tbSId.Dispose();
                }
                catch (Exception) { }
            }
            tbShopId.Clear();
            tbShopId.Dispose();

            Sotuv_ucont.shopID = 0;
            Sotuv_ucont.shop = false;
        }
        */
        

        /// <summary>
        /// The form Loaded
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        /// 

        public void SetShop()
        {
            try
            {
                string ShopId = "select * from shopId where password='" + Kirish_ucont.password1 + "'";
                tbShopId = new DataTable();
                objDBAccess.readDatathroughAdapter(ShopId, tbShopId);
                if (tbShopId.Rows.Count > 0)
                {
                    Sotuv_ucont.shopID = int.Parse(tbShopId.Rows[0]["shop_id"].ToString());
                    if (int.Parse(tbShopId.Rows[0]["shop_id"].ToString()) != 0)
                    {
                        Sotuv_ucont.shop = true;
                        cmdShopId = new MySqlCommand("update shopId set mac_address='" + Kirish_ucont.mac_address + "' where password='" + Kirish_ucont.password1 + "'");
                        objDBAccess.executeQuery(cmdShopId);
                        cmdShopId.Dispose();
                        string queryDebtor = "select debtor_id from shop where id='" + Sotuv_ucont.shopID + "'";
                        DataTable tbDebtor = new DataTable();
                        objDBAccess.readDatathroughAdapter(queryDebtor, tbDebtor);
                        Sotuv_ucont.debtor_id = tbDebtor.Rows[0]["debtor_id"].ToString();
                        tbDebtor.Clear();
                        tbDebtor.Dispose();
                    }
                    else
                    {
                        Sotuv_ucont.shop = false;
                    }
                }
                tbShopId.Clear();
                tbShopId.Dispose();
            }
            catch (Exception ex)
            {

            }
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            string queryChek = "select * from chek";
            DataTable tbChek = new DataTable();
            objDBAccess.readDatathroughAdapter(queryChek, tbChek);
            header = tbChek.Rows[0]["header"].ToString();
            footer = tbChek.Rows[0]["footer"].ToString();
            string queryFilial_id = "select * from filial";
            tbFilial_id = new DataTable();
            objDBAccess.readDatathroughAdapter(queryFilial_id, tbFilial_id);
            filial_id = tbFilial_id.Rows[0]["id"].ToString();
            filial = tbFilial_id.Rows[0]["name"].ToString();
            tbFilial_id.Dispose();
        }


        static async Task<string> PostURI(Uri u, HttpContent c)
        {
            var response = string.Empty;
            using (var client = new HttpClient())
            {
                client.DefaultRequestHeaders.Add("Authorization", "token 62115f83e1c1e8b588fa419330976ea6012d1cd4");
                try
                {
                    HttpResponseMessage result = await client.PostAsync(u, c);
                    if (result.IsSuccessStatusCode)
                    {
                        response = result.StatusCode.ToString();
                    }
                    else
                    {
                        response = "Error!";
                    }
                }
                catch (Exception ex)
                {
                    System.Windows.MessageBox.Show(ex.Message, "Xatolik", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            return response;
        }


        public static MySqlCommand cmdSendShop, cmdSendPayHistory, cmdSendReturnProduct, cmdChangeDebtor;
        
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

        public static DataTable tbSoldShop, tbSendPayHistory, tbSendReturnProduct;
        public static DataTable tbDebtShop, tbDebtDebtor, tbMixShop, tbPayDebtor;
        public static DataTable tbSoldRetPro, tbSoldRetDebtor, tbDebtRetPro, tbDebtRetDebtor, tbChangeDebtor;
        public static CurrencyManager managerChangeDebtor;
        public static bool send_finish = true;
    }
}
