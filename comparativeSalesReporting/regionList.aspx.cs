using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Text;

namespace comparativeSalesReporting
{
    public partial class regionList : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["cariKod"] != null)
            {
                //Button1.Visible = true;
                GridView3.DataSourceID = "sqlDataSource5";
                GridView1.DataSourceID = "";
            }
            else
            if (Request.QueryString["cariUnvan"] != null)
            {
                //Button1.Visible = true;
                GridView3.DataSourceID = "sqlDataSource6";
                GridView1.DataSourceID = "";
            }


            else if (Request.QueryString["cariSehir"] != null)
            {

                //Button1.Visible = true;
                GridView3.DataSourceID = "SqlDataSource7";

            }

            else if (Request.QueryString["cariBolge"] != null)
            {
                //Button1.Visible = true;
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT Firma,BOLGE,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T" +
                    " WHERE BOLGE LIKE '%' + @cariBolge + '%'  AND DAHIL=0 GROUP BY Firma,BOLGE UNION SELECT Firma,CH_YETKI_KODU,SUM(KDV_MATRAHI)AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_YETKI_KODU LIKE '%' + @cariBolge + '%'  AND MALZEME_OZEL_KODU<>'DİĞER GLR' GROUP BY CH_YETKI_KODU, Firma) AS BOLGE" +
 " PIVOT (SUM(TUTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource1.SelectParameters.Add("cariBolge", Request.QueryString["cariBolge"]);

                GridView2.DataSourceID = "SqlDataSource2";

                SqlDataSource2.SelectParameters["cBolge"].DefaultValue = Request.QueryString["cariBolge"];

            }
            else if (Request.QueryString["cariKodlar"] != null)
            {


                string cariKodlar = Request.QueryString["cariKodlar"];
                cariKodlar = cariKodlar.TrimEnd(',');
                string[] UserList = cariKodlar.Split(',');

                GridView3.DataSourceID = "SqlDataSource10";

                StringBuilder sb = new StringBuilder();
                int i = 0;

                foreach (string user in UserList)
                {
                    // IN clause
                    sb.Append("@UserId" + i.ToString() + ",");

                    i++;

                }

                string sbL = sb.ToString();
                sbL = sbL.TrimEnd(',');
                SqlDataSource10.SelectCommand = "SELECT * FROM (SELECT CH_KODU,CH_UNVAN,Firma,SEHIR,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE  DAHIL=0  AND CH_KODU IN (" + @sbL + ") GROUP BY CH_KODU,CH_UNVAN,Firma,SEHIR UNION SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,Firma,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU<>'DİĞER GLR' and CARI_HESAP_KODU IN(" + @sbL + ") GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS BOLGE  PIVOT(SUM(TUTAR)   FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt";
                i = 0;
                foreach (string user in UserList)
                {
                    // parameter
                    SqlDataSource10.SelectParameters.Add("UserId" + i.ToString(), UserList[i]);
                    SqlDataSource10.SelectParameters["UserId" + i.ToString()].DefaultValue = UserList[i];

                    i++;
                }

            }

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridView2.DataSourceID = "SqlDataSource4";

            string bolge = GridView2.SelectedRow.Cells[2].Text;
            string sehir = GridView2.SelectedRow.Cells[1].Text;
            SqlDataSource4.SelectParameters["cBolge"].DefaultValue = bolge;
            SqlDataSource4.SelectParameters["cSehir"].DefaultValue = sehir;

            SqlDataSource3.SelectParameters["cBolge"].DefaultValue = bolge;
            SqlDataSource3.SelectParameters["cSehir"].DefaultValue = sehir;


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.DataSourceID = "SqlDataSource2";

        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, EventArgs e)
        {

        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView1, e);
            gridViewTotals.gridViewTotals1(GridView1, e);

        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView2, e);
            gridViewTotals.gridViewTotals1(GridView2, e);
        }

        protected void GridView3_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView3, e);
            gridViewTotals.gridViewTotals1(GridView3, e);
            Button1.Visible = true;
            Button2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string chKodu = string.Empty;

            foreach (GridViewRow row in GridView3.Rows)
            {
                CheckBox chk = (CheckBox)row.FindControl("CheckBox1");
                if (chk != null && chk.Checked)
                {

                    chKodu += GridView3.DataKeys[row.RowIndex].Values[0].ToString() + ',';

                }
            }

            Response.Redirect("regionList.aspx?cariKodlar=" + chKodu.ToString().Replace("\n\r", ""));
        }

        protected void SqlDataSource10_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            string fileName = Request.Url.ToString();
            //int order = fileName.IndexOf("-", 0, 4);
            //fileName = fileName.Substring(order,fileName.Length-order);
            Response.AddHeader("content-disposition", "attachment; filename=" + fileName + ".xls");
            Response.ContentType = "application/excel";
            System.IO.StringWriter sw = new System.IO.StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView3.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String currUrl = "http://192.168.51.12/salesreportsobm" + Request.RawUrl.ToString() + ".aspx";
            Response.Redirect(currUrl);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string green = "#33cc33";
            string red = "#ff0000";

            Button4.BorderColor = System.Drawing.ColorTranslator.FromHtml(green);
            Button3.BorderColor = System.Drawing.ColorTranslator.FromHtml(red);

            SqlDataSource1.SelectCommand = @"SELECT * FROM (SELECT Firma,BOLGE,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE DAHIL=0 AND BOLGE<>'IC'   GROUP BY Firma,BOLGE UNION SELECT Firma,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU<> 'DİĞER GLR'   AND CH_YETKI_KODU<>'IC' GROUP BY CH_YETKI_KODU, Firma) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017])
)AS pvt
";


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string green = "#33cc33";
            string red = "#ff0000";

            Button3.BorderColor = System.Drawing.ColorTranslator.FromHtml(green);
            Button4.BorderColor = System.Drawing.ColorTranslator.FromHtml(red);


            SqlDataSource1.SelectCommand = @"SELECT * FROM (SELECT Firma,BOLGE,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE DAHIL=0 AND BOLGE=BOLGE  GROUP BY Firma,BOLGE UNION SELECT Firma,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU<> 'DİĞER GLR'   AND CH_YETKI_KODU = CH_YETKI_KODU GROUP BY CH_YETKI_KODU, Firma) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017])
)AS pvt
 ";

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }
    }
}







