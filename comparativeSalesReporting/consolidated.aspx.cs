using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class consolidated : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240;
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            //GridView1.CellPadding= 5;
            gridViewTotals.gridViewTotals5(GridView1, e);
            gridViewTotals.gridViewTotals1(GridView1, e);
        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView2, e);
            gridViewTotals.gridViewTotals1(GridView2, e);
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.CommandTimeout = 240 ;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            string fileName = Request.Url.ToString();
            //int order = fileName.IndexOf("-", 0, 4);
            //fileName = fileName.Substring(order,fileName.Length-order);
            Response.AddHeader("content-disposition", "attachment; filename="+ fileName +".xls");
            Response.ContentType = "application/excel";
            System.IO.StringWriter sw = new System.IO.StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView1.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
    }
}