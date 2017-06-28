using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class invoiceDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

             if (Request.QueryString["fTuru"] == null && Request.QueryString["cKodu"] == null &&  Request.QueryString["fNo"] == null)
            {
                Response.Redirect("customerList.aspx");
            }


            else if (Request.QueryString["fTuru"] == null || Request.QueryString["cKodu"] == null && Request.QueryString["fNo"] != null)
            {
                //GridView grd = new GridView();
                //grd = (GridView)Page.FindControl("GridView1");
                //grd.Columns[0].ItemStyle.Width = Unit.Percentage(100);

                string chKodu = Request.QueryString["cKodu"];
                string chUnvan = Request.QueryString["cUnvan"];
                cKodu.Text = "Cari Hesap: " + chKodu + " - " + chUnvan;

            }
            else if (Request.QueryString["fTuru"] == null || Request.QueryString["cKodu"] == null )
            {
                Response.Redirect("customerList.aspx");
            }

            else if (Request.QueryString["fTuru"] == null || Request.QueryString["cKodu"] == null && Request.QueryString["fNo"] == null)
            {
                Response.Redirect("customerList.aspx");
            }

            else 
            {
                string chKodu = Request.QueryString["cKodu"];
                string chUnvan = Request.QueryString["cUnvan"];

                cKodu.Text = "Cari Hesap: " + chKodu + " - " + chUnvan;

            }
        }


        protected void href_click(Object sender, EventArgs e)
        {
            Response.Redirect("customerDetails.aspx?cId=" + Request.QueryString["cKodu"]);
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals1(GridView1, e);
        }
    }
    }

