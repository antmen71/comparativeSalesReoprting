using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public static class gridViewTotals
    {

        public static void gridViewTotals1(object sender, EventArgs e)
        {
            var grdview = (GridView)sender;
            decimal[,] rowAndColumns = new decimal[grdview.Rows.Count, grdview.Columns.Count];
            decimal n;
            decimal[] totalSalesArray = new decimal[grdview.Columns.Count];
            for (int i = 0; i < grdview.Columns.Count; i++)
            {
                for (int j = 0; j < grdview.Rows.Count; j++)


                    if (decimal.TryParse(grdview.Rows[j].Cells[i].Text, out n))
                    {
                        rowAndColumns[j, i] = Convert.ToDecimal(grdview.Rows[j].Cells[i].Text);
                    }

            }
            GridViewRow footerRow = grdview.FooterRow;

            for (int k = 0; k < grdview.Columns.Count; k++)
            {
                decimal totalSales = 0;
                for (int l = 0; l < grdview.Rows.Count; l++)
                {
                    totalSales += rowAndColumns[l, k];
                    totalSalesArray[k] = totalSales;
                    footerRow.Cells[k].Text = String.Format("{0:N2}", totalSales);


                }

            }

        }

        public static void gridViewTotals2(object sender, EventArgs e)
        {
            var grdview = (GridView)sender;
            decimal[,] rowAndColumns = new decimal[grdview.Rows.Count, grdview.Columns.Count];
            decimal n;
            decimal[] totalSalesArray = new decimal[grdview.Columns.Count];
            for (int i = 0; i < grdview.Columns.Count; i++)
            {
                for (int j = 0; j < grdview.Rows.Count; j++)

                    if (grdview.HeaderRow.Cells[i].Text == "KODU")
                    {
                    }
                    else if (decimal.TryParse(grdview.Rows[j].Cells[i].Text, out n))
                    {
                        rowAndColumns[j, i] = Convert.ToDecimal(grdview.Rows[j].Cells[i].Text);
                    }

            }

            for (int l = 0; l < grdview.Rows.Count; l++)

            {
                decimal totalSales = 0;
                for (int k = 0; k < grdview.Columns.Count; k++)
                {
                    totalSales += rowAndColumns[l, k];
                    totalSalesArray[k] = totalSales;


                    if (k == grdview.Columns.Count - 1)
                    {
                        grdview.Rows[l].Cells[k].Text = String.Format("{0:N2}", totalSales);
                    }


                }

            }

        }

        public static void gridViewTotals3(object sender, EventArgs e)
        {
            var grdview = (GridView)sender;
            decimal[,] rowAndColumns = new decimal[grdview.Rows.Count, grdview.Columns.Count];
            decimal n;
            decimal[] totalSalesArray = new decimal[grdview.Columns.Count];
            for (int i = 1; i < grdview.Columns.Count; i++)
            {
                for (int j = 0; j < grdview.Rows.Count; j++)

                    if (grdview.HeaderRow.Cells[i].Text == "KODU")
                    {
                    }
                    else if (decimal.TryParse(grdview.Rows[j].Cells[i].Text, out n))
                    {
                        rowAndColumns[j, i] = Convert.ToDecimal(grdview.Rows[j].Cells[i].Text);
                    }

            }

            for (int l = 0; l < grdview.Rows.Count; l++)

            {
                decimal totalSales = 0;
                for (int k = 1; k < grdview.Columns.Count; k++)
                {
                    totalSales += rowAndColumns[l, k];
                    totalSalesArray[k] = totalSales;


                    if (k == grdview.Columns.Count - 1)
                    {
                        grdview.Rows[l].Cells[k].Text = String.Format("{0:N2}", totalSales);
                    }


                }

            }

        }

        public static void gridViewTotals4(object sender, EventArgs e)
        {
            var grdview = (GridView)sender;
            decimal[,] rowAndColumns = new decimal[grdview.Rows.Count, grdview.Columns.Count];
            decimal n;
            decimal[] totalSalesArray = new decimal[grdview.Columns.Count];
            for (int i = 0; i < grdview.Columns.Count; i++)
            {
                for (int j = 0; j < grdview.Rows.Count; j++)

                    if (grdview.HeaderRow.Cells[i].Text == "KODU")
                    {
                    }
                    else if (decimal.TryParse(grdview.Rows[j].Cells[i].Text, out n))
                    {
                        rowAndColumns[j, i] = Convert.ToDecimal(grdview.Rows[j].Cells[i].Text);
                    }

            }

            for (int l = 0; l < grdview.Rows.Count; l++)

            {
                decimal totalSales = 0;
                for (int k = 0; k < grdview.Columns.Count; k++)
                {
                    totalSales += rowAndColumns[l, k];
                    totalSalesArray[k] = totalSales;


                    if (k == grdview.Columns.Count - 1)
                    {
                        grdview.Rows[l].Cells[k].Text = String.Format("{0:N2}", totalSales);
                    }


                }

            }

        }

        public static void gridViewTotals5(object sender, EventArgs e)
        {
            var grdview = (GridView)sender;
            decimal[,] rowAndColumns = new decimal[grdview.Rows.Count, grdview.Columns.Count];
            decimal n;
            decimal[] totalSalesArray = new decimal[grdview.Columns.Count];
            for (int i = 0; i < grdview.Columns.Count; i++)
            {
                for (int j = 0; j < grdview.Rows.Count; j++)

                    if (grdview.HeaderRow.Cells[i].Text == "Firma")
                    {
                    }
                    else if (decimal.TryParse(grdview.Rows[j].Cells[i].Text, out n))
                    {
                        rowAndColumns[j, i] = Convert.ToDecimal(grdview.Rows[j].Cells[i].Text);
                    }

            }

            for (int l = 0; l < grdview.Rows.Count; l++)

            {
                decimal totalSales = 0;
                for (int k = 0; k < grdview.Columns.Count; k++)
                {
                    totalSales += rowAndColumns[l, k];
                    totalSalesArray[k] = totalSales;


                    if (k == grdview.Columns.Count - 1)
                    {
                        grdview.Rows[l].Cells[k].Text = String.Format("{0:N2}", totalSales);
                    }


                }

            }

        }
    }
}
