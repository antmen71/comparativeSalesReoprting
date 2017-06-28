using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class regionList_cariYil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["cariKod"] != null)
            {

                GridView1.DataSourceID = "";
                GridView2.DataSourceID = "";

            }

            else if (Request.QueryString["cariUnvan"] != null)
            {

                GridView1.DataSourceID = "";
                GridView2.DataSourceID = "";
                GridView3.DataSourceID = "SqlDataSource4";
                SqlDataSource4.SelectParameters["cariUnvan"].DefaultValue = Request.QueryString["cariUnvan"];

            }

            else if (Request.QueryString["cariSehir"] != null && Request.QueryString["cariBolge"] != null)
            {
                GridView4.DataSourceID = "SqlDataSource6";
                SqlDataSource6.SelectCommand = "SELECT * FROM (SELECT CH_YETKI_KODU AS BOLGE, CH_SEHIR AS SEHIR,MONTH(TARIH)AS AY," +
              " SUM(KDV_MATRAHI)  AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR = @cariSehir GROUP BY TARIH,CH_SEHIR,CH_YETKI_KODU)" +
              " AS BOLGE  PIVOT ( SUM(TUTAR)  FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12]))AS pvt";
                //SqlDataSource6.SelectParameters.Remove(SqlDataSource6.SelectParameters["cariSehir"]);

                SqlDataSource6.SelectParameters["cariSehir"].DefaultValue = Request.QueryString["cariSehir"];

                SqlDataSource3.SelectCommand = "SELECT * FROM (SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,MONTH(TARIH)AS AY,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR" +
    " FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR=@cariSehir AND CH_YETKI_KODU=@cariBolge GROUP BY CH_YETKI_KODU, TARIH,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS CARI" +
    " PIVOT (SUM(TUTAR) FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12]))AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["cId"]);
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["cariSehir"]);

                SqlDataSource3.SelectParameters.Add("cariSehir", Request.QueryString["cariSehir"]); 
                SqlDataSource3.SelectParameters.Add("cariBolge", Request.QueryString["cariBolge"]);
            }


            else if (Request.QueryString["cariBolge"] != null)
            {
                GridView2.DataSourceID = "";
                GridView1.DataSourceID = "SqlDataSource5";
                SqlDataSource5.SelectParameters["cariBolge"].DefaultValue = Request.QueryString["cariBolge"];
                GridView4.DataSourceID = "SqlDataSource7";
                SqlDataSource7.SelectParameters["cariBolge"].DefaultValue = Request.QueryString["cariBolge"];


            }
            else if (Request.QueryString["cariSehir"] != null)
            {
                GridView2.DataSourceID = "";
                GridView1.DataSourceID = "";
                GridView3.DataSourceID = "SqlDataSource6";
                SqlDataSource6.SelectParameters["cariSehir"].DefaultValue = Request.QueryString["cariSehir"];

            }

          

            else { }
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView1, e);
            gridViewTotals.gridViewTotals1(GridView1, e);
        }

        protected void GridView4_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView4, e);

            gridViewTotals.gridViewTotals1(GridView4, e);


        }

        protected void GridView3_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView3, e);
            gridViewTotals.gridViewTotals1(GridView3, e);


            //string txt;
            //txt = GridView3.Rows[0].Cells[3].Text;

        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView2, e);

            gridViewTotals.gridViewTotals1(GridView2, e);

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView4.SelectedValue != null)
            {
                GridView4.DataSourceID = "SqlDataSource6";
                SqlDataSource6.SelectCommand = "SELECT * FROM (SELECT CH_SEHIR AS SEHIR,MONTH(TARIH)AS AY," +
              " SUM(KDV_MATRAHI)  AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR = @cariSehir GROUP BY TARIH,CH_SEHIR)" +
              " AS BOLGE  PIVOT ( SUM(TUTAR)  FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12]))AS pvt";
                //SqlDataSource6.SelectParameters.Remove(SqlDataSource6.SelectParameters["cariSehir"]);

                SqlDataSource6.SelectParameters["cariSehir"].DefaultValue = GridView4.SelectedValue.ToString();

                SqlDataSource3.SelectCommand = "SELECT * FROM (SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,MONTH(TARIH)AS AY,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR" +
    " FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR=@cariSehir AND CH_YETKI_KODU=@cariBolge GROUP BY CH_YETKI_KODU, TARIH,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS CARI" +
    " PIVOT (SUM(TUTAR) FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12]))AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["cId"]);
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["cariSehir"]);

                SqlDataSource3.SelectParameters.Add("cariSehir", GridView4.SelectedValue.ToString());
                SqlDataSource3.SelectParameters.Add("cariBolge", Request.QueryString["cariBolge"]);


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView4.DataSourceID = "SqlDataSource7";
            string cariBolge = GridView1.SelectedValue.ToString();
            SqlDataSource7.SelectParameters["cariBolge"].DefaultValue = cariBolge;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void SqlDataSource6_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void SqlDataSource7_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void SqlDataSource8_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void SqlDataSource9_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }
    }
}

//Request.QueryString["cariKod"] != "" || 