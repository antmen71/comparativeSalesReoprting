using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace comparativeSalesReporting
{
    public partial class reklamasyonFormu : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Server = TRISSRV05;Database=reklamasyon_web; Trusted_Connection = yes; ");
        bool firmaKaydiYapildi;
        bool reklamasyonKaydiYapildi;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                firmaKaydiYapildi = false;
                reklamasyonKaydiYapildi = false;

                Label6.Text = DateTime.Today.ToShortDateString();
                TextBox3.Text = "antmen";
                TextBox4.Text = "02163804170";
                TextBox5.Text = "Orkun antmen";
                //drpUrunKodu.SelectedValue = "3r78";
                txtSeriNo.Text = "1234567890";
                txtFatura.Text = "123456-17.02.2016";


                SqlConnection cnn2 = new SqlConnection("Data Source=TRISSRV05;Initial Catalog=reklamasyon_web;Integrated Security=True");
                SqlCommand cmd1 = new SqlCommand("SELECT MAX(reklamasyon_no) FROM reklamasyon", cnn2);
                cnn2.Open();


                int reklamasyonNo = Convert.ToInt16(cmd1.ExecuteScalar()) + 1;
                Label5.Text = "R-" + reklamasyonNo.ToString();

                cnn2.Close();
                SqlConnection cnn1 = new SqlConnection("Data Source=TRISSRV05;Initial Catalog=reklamasyon_web;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("SELECT * FROM urunler WHERE reklamasyon_no=@rekNo", cnn1);
                cmd.Parameters.AddWithValue("rekNo", reklamasyonNo);
                cnn1.Open();


                SqlDataReader rdr = cmd.ExecuteReader();

                GridView1.DataSource = rdr;
                GridView1.DataBind();




                cnn1.Close();

            }
            else
            {
                firmaKaydiYapildi = true;
                reklamasyonKaydiYapildi = true;

            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
            string urunKodu = drpUrunKodu.SelectedValue.ToString();
            string seriNo = txtSeriNo.Text;
            string faturaNo = txtFatura.Text;
            string firmaAdi = TextBox3.Text;
            string firmaTel = TextBox4.Text;
            string firmailgili = TextBox5.Text;
            int reklamasyonNo = Convert.ToInt16(Label5.Text.Substring(2, Label5.Text.Length - 2));
            string faturaTarihi = Calendar1.SelectedDate.ToShortDateString();
            string reklamasyonTarihi = DateTime.Now.ToShortDateString();
            string reklamasyonTarihi1 = reklamasyonTarihi.Substring(6, 4) + "-" + reklamasyonTarihi.Substring(3, 2) + "-" + reklamasyonTarihi.Substring(0, 2);
            string faturaTarihi1 = faturaTarihi.Substring(6, 4) + "-" + faturaTarihi.Substring(3, 2) + "-" + faturaTarihi.Substring(0, 2);


            if (firmaKaydiYapildi == false && reklamasyonKaydiYapildi == false)
            {
                SqlCommand firmaCmd = new SqlCommand("INSERT INTO firmalar VALUES (@fAd,@fTel,@filgili)", cnn);
                firmaCmd.Parameters.AddWithValue("fAd", firmaAdi);
                firmaCmd.Parameters.AddWithValue("fTel", firmaTel);
                firmaCmd.Parameters.AddWithValue("filgili", firmailgili);

                SqlCommand reklamasyonCmd = new SqlCommand("INSERT INTO reklamasyon VALUES(@rekNo,@rekTarih,@rekFirma)", cnn);
                reklamasyonCmd.Parameters.AddWithValue("rekNo", reklamasyonNo);
                reklamasyonCmd.Parameters.AddWithValue("rekTarih", reklamasyonTarihi1);
                reklamasyonCmd.Parameters.AddWithValue("rekFirma", firmaAdi);

                SqlCommand urunCmd = new SqlCommand("INSERT INTO urunler VALUES (@rekNo,@urunKodu,@urunSeriNo,@faturaNo,@faturaTarihi)", cnn);
                urunCmd.Parameters.AddWithValue("rekNo", reklamasyonNo);
                urunCmd.Parameters.AddWithValue("urunKodu", urunKodu);
                urunCmd.Parameters.AddWithValue("urunSeriNo", seriNo);
                urunCmd.Parameters.AddWithValue("faturaNo", faturaNo);
                urunCmd.Parameters.AddWithValue("faturaTarihi", faturaTarihi1);

                cnn.Open();

                firmaCmd.ExecuteNonQuery();
                firmaKaydiYapildi = true;
                reklamasyonCmd.ExecuteNonQuery();
                reklamasyonKaydiYapildi = true;
                urunCmd.ExecuteNonQuery();
                cnn.Close();
            }
            else
            {
                SqlCommand urunCmd = new SqlCommand("INSERT INTO urunler VALUES (@rekNo,@urunKodu,@urunSeriNo,@faturaNo,@faturaTarihi)", cnn);
                urunCmd.Parameters.AddWithValue("rekNo", reklamasyonNo);
                urunCmd.Parameters.AddWithValue("urunKodu", urunKodu);
                urunCmd.Parameters.AddWithValue("urunSeriNo", seriNo);
                urunCmd.Parameters.AddWithValue("faturaNo", faturaNo);
                urunCmd.Parameters.AddWithValue("faturaTarihi", faturaTarihi1);
                cnn.Open();
                urunCmd.ExecuteNonQuery();
            }
            SqlConnection cnn1 = new SqlConnection("Data Source=TRISSRV05;Initial Catalog=reklamasyon_web;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM urunler WHERE reklamasyon_no=@rekNo", cnn1);
            cmd.Parameters.AddWithValue("rekNo", reklamasyonNo);
            cnn1.Open();

            SqlDataReader rdr = cmd.ExecuteReader();

            GridView1.DataSource = rdr;
            GridView1.DataBind();
            cnn1.Close();







        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            Label lbldeleteid = (Label)row.FindControl("lblID");

            cnn.Open();

            SqlCommand cmd = new SqlCommand("delete FROM detail where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", cnn);

            cmd.ExecuteNonQuery();

            cnn.Close();


        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            string rekNo = Label5.Text.Substring(2, Label5.Text.Length - 2);

            SqlCommand cmd = new SqlCommand("SELECT firma_ad, firma_tel, firma_ilgili FROM firmalar JOIN reklamasyon ON firma_ad=firma WHERE reklamasyon_no=@rekNo", cnn);
            cmd.Parameters.AddWithValue("rekNo", rekNo);
            cnn.Open();




        }
    }

}








