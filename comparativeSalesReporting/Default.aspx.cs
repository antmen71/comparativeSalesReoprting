using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace comparativeSalesReporting
{
    public partial class _Default : Page
    {
        string kullaniciAdi = System.Web.HttpContext.Current.User.Identity.Name;

        protected void Page_Load(object sender, EventArgs e)
        {

            //Session["sbu"] = DBNull.Value;
            Session["sbu"] = "MedicalCare";

            //if (Session["sbu"] == null)
            //{
            //    SqlDataSource3.SelectCommand = "SELECT DISTINCT(SBU_Bez_ENG) FROM PS16";
            //    SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["sbu"]);
            //}

        }

        protected void cariKod_Click(object sender, EventArgs e)
        {
            Response.Redirect("customerList.aspx?cariKod=" + cariKodu.Text);

        }

        protected void cariUnvan_Click(object sender, EventArgs e)
        {
            Response.Redirect("customerList.aspx?cariUnvan=" + cariUnvan.Text);

        }

        protected void cariBolge_Click(object sender, EventArgs e)
        {

            Response.Redirect("customerList.aspx?cariBolge=" + cariBolge.SelectedValue);

        }

        protected void cariSehir_Click(object sender, EventArgs e)
        {

            Response.Redirect("customerList.aspx?cariSehir=" + cariSehir.SelectedValue);

        }

        protected void stokKodu_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockList.aspx?stokKodu=" + stokKodu.Text);

        }

        protected void stokAdi_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockList.aspx?stokAdi=" + stokAdi.Text);

        }

        protected void stokSBU_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockList.aspx?stokSBU=" + stokSBU.Text);

        }

        protected void stokSe_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockList.aspx?stokSE=" + stokSe.SelectedValue);

        }

        protected void sbs_B_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockList.aspx?stokSbs_b=" + stokSBS_B.SelectedValue);

        }

        protected void sbs_c_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockList.aspx?stokSbs_c=" + stokSBS_C.SelectedValue);

        }

        protected void stokSBU_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void refNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockList.aspx?refNo=" + refNo.SelectedValue);
        }

        protected void cariKodSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("regionList.aspx?cariKod=" + cariKodu.Text);

        }

        protected void cariUnvanSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("regionList.aspx?cariUnvan=" + cariUnvan.Text);
        }

        protected void bolgeSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("regionList.aspx?cariBolge=" + cariBolge.Text);

        }

        protected void sehirSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("regionList.aspx?cariSehir=" + cariSehir.Text);

        }

        protected void stokKoduSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockListSales.aspx?stokKodu=" + stokKodu.Text);

        }

        protected void stokAdiSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockListSales.aspx?stokAdi=" + stokAdi.Text);

        }

        protected void cariKoduCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("regionListcariYil.aspx?cariKod=" + cariKodu.Text);
        }

        protected void cariUnvanıCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("regionListcariYil.aspx?cariUnvan=" + cariUnvan.Text);

        }

        protected void bolgeSatislarCarilYil_Click(object sender, EventArgs e)
        {
            Response.Redirect("regionListcariYil.aspx?cariBolge=" + cariBolge.Text);

        }

        protected void sehirSatislarCariYil_Click(object sender, EventArgs e)
        {
            Response.Redirect("regionListcariYil.aspx?cariSehir=" + cariSehir.Text);

        }

        protected void sbuSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetails.aspx?sbuId=" + stokSBU.Text);

        }

        protected void seSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetails.aspx?seId=" + stokSe.Text);

        }

        protected void sbsbSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetails.aspx?sbsbId=" + stokSBS_B.Text);

        }

        protected void sbscSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetails.aspx?sbscId=" + stokSBS_C.Text);

        }

        protected void refNoSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetails.aspx?refNo=" + refNo.Text);

        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockList.aspx?refNoAra=" + refNoAra.Text);

        }

        protected void Button29_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetails.aspx?refNoAra=" + refNoAra.Text);

        }

        protected void stokKoduCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockListSalescariYil.aspx?sId=" + stokKodu.Text);
        }

        protected void stokAdiCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockListSalescariYil.aspx?stokAdi=" + stokAdi.Text);

        }

        protected void sbuCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetailscariYil.aspx?sbuId=" + stokSBU.Text);

        }

        protected void seCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetailscariYil.aspx?seId=" + stokSe.Text);

        }

        protected void sbsbCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetailscariYil.aspx?sbsbId=" + stokSBS_B.Text);

        }

        protected void sbscCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetailscariYil.aspx?sbscId=" + stokSBS_C.Text);

        }

        protected void refNoCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetailscariYil.aspx?refNo=" + refNo.Text);

        }

        protected void refNoAraCariYilSatislar_Click(object sender, EventArgs e)
        {
            Response.Redirect("sbuDetailscariYil.aspx?refNoAra=" + refNoAra.Text);

        }

        protected void Button38_Click(object sender, EventArgs e)
        {

            Response.Redirect("deneme00.aspx?refNo=" + refNo.Text);

        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView1, e);
            gridViewTotals.gridViewTotals1(GridView1, e);
            GridView1.FooterRow.Cells[0].Text = "Toplam";
            GridView1.Columns[0].FooterStyle.HorizontalAlign = HorizontalAlign.Left;
        }

        protected void stokSe_DataBound(object sender, EventArgs e)
        {
            string sqlcmd = SqlDataSource4.SelectCommand;
            string par = SqlDataSource4.SelectParameters["sbu"].ToString();
        }

        protected void stokSBU_DataBinding(object sender, EventArgs e)
        {
           
        }
    }
}