using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class stockListSales_cariYil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["sId"]!=null)
            { }
            else if (Request.QueryString["stokAdi"]!=null)
            {

                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["sId"]);
                SqlDataSource1.SelectCommand = "SELECT * FROM  (SELECT MONTH(TARIH) AS AY,PS16.Material,STOK_ADI,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE STOK_ADI LIKE '%' + @stokAdi + '%' GROUP BY SLS16.Firma,PS16.Material,TARIH,STOK_ADI) AS SBU   PIVOT (SUM(TUTAR)  FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource1.SelectParameters.Add("stokAdi", Request.QueryString["stokAdi"]);
                

            }
        }


        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView1, e);
            gridViewTotals.gridViewTotals1(GridView1, e);
        }
    }
}