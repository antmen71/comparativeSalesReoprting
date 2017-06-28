using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class stockList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string sbuRol = Session["sbu"].ToString();

            if (Request.QueryString["stokKodu"] != null)
            {
                stockList1.DataSourceID = "SqlDataSource2";
            }

            else if (Request.QueryString["stokAdi"] != null)
            {
                stockList1.DataSourceID = "SqlDataSource3";
            }


            else if (Request.QueryString["stokSBU"] != null)
            {
                stockList1.DataSourceID = "SqlDataSource4";
            }


            else if (Request.QueryString["stokSE"] != null)
            {
                stockList1.DataSourceID = "SqlDataSource5";
            }
            

            else if (Request.QueryString["stokSbs_b"] != null)
            {
                stockList1.DataSourceID = "SqlDataSource6";
            }

            else if (Request.QueryString["stokSbs_c"] != null)
            {
                stockList1.DataSourceID = "SqlDataSource7";
            }

            else if (Request.QueryString["refNo"] != null)
            {
                stockList1.DataSourceID = "SqlDataSource8";
            }
            else if (Request.QueryString["refNoAra"] != null)
            {
                stockList1.DataSourceID = "SqlDataSource9";
            }

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}