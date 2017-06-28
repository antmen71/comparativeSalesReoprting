using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class regionListByDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView1, e);
            //gridViewTotals.gridViewTotals2(GridView1, e);

        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView2, e);
            gridViewTotals.gridViewTotals1(GridView2, e);
        }

        protected void GridView3_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView3, e);
            gridViewTotals.gridViewTotals1(GridView3, e);
        }

        protected void GridView4_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView4, e);
            gridViewTotals.gridViewTotals1(GridView4, e);
        }
    }
}