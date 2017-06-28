using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class stockListSales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["stokAdi"] == null && Request.QueryString["stokKodu"] == null)
            {

                SqlDataSource1.SelectCommand = "SELECT* FROM (SELECT Firma, STOK_KODU, STOK_ADI, SUM(KDV_MATRAHI)AS TUTAR"+
                    " FROM SATISLAR_T  GROUP BY Firma,STOK_KODU,STOK_ADI" +
" UNION SELECT Firma, STOK_KODU, STOK_ADI, SUM(KDV_MATRAHI)AS TUTAR" +
  " FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU = CODE  GROUP BY Firma, STOK_KODU, STOK_ADI) AS CARI" +
  " PIVOT (SUM(TUTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt" +
 " UNION SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(NET_MIKTAR) AS MIKTAR" +
                    " FROM SATISLAR_T  GROUP BY Firma,STOK_KODU,STOK_ADI" +
" UNION SELECT Firma, STOK_KODU, STOK_ADI, SUM(NET_MIKTAR)AS MIKTAR" +
  " FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU = CODE  GROUP BY Firma, STOK_KODU, STOK_ADI) AS CARI" +
  " PIVOT (SUM(MIKTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["sId"]);

            }
            else if(Request.QueryString["stokAdi"]!=null)
            {
                GridView1.DataSourceID = "SqlDataSource2";

            }

            else if (Request.QueryString["stokKodu"] != null)
            {
                GridView1.DataSourceID = "SqlDataSource3";


            }
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView1, e);
            gridViewTotals.gridViewTotals1(GridView1, e);
            
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowState == DataControlRowState.Alternate)
            {

            }
        }
    }
}