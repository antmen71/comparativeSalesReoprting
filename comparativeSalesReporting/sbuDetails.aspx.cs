using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class sbuDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["sbuId"] != null)
            {
                SqlDataSource5.SelectParameters["sbuId"].DefaultValue = Request.QueryString["sbuId"];

                //SE
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT Firma,SE,SE_N,sum(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND SBU=@sbuId GROUP BY Firma,SE,SE_N  UNION SELECT SLS16.Firma,PS16.SE,SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SBU_Bez_ENG = @sbuId AND MALZEME_OZEL_KODU<>'DİĞER GLR' GROUP BY SLS16.Firma,PS16.SE,SE_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt"; 
                    SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["seId"]);
                SqlDataSource1.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);

                //SBS_B
                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT Firma,SBS_B,SBS_B_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE DAHIL=0 AND SBU = @sbuId GROUP BY Firma,SBS_B,SBS_B_N UNION SELECT SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBU_Bez_ENG = @sbuId GROUP BY SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);

                //SBS_C
                SqlDataSource3.SelectCommand = "SELECT * FROM (SELECT Firma,SBS_C,SBS_C_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE  DAHIL=0 AND  SBU = @sbuID  GROUP BY Firma,SBS_C,SBS_C_N UNION SELECT SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBU_Bez_ENG = @sbuID GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["seId"]);
                SqlDataSource3.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);

                //RefNo
                SqlDataSource4.SelectCommand = "SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE DAHIL=0 AND  SBU =@sbuId  GROUP BY Firma,RefNo,RefNo_N UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SBU_Bez_ENG = @sbuId GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt UNION SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(NET_MIKTAR) AS MIKTAR FROM SATISLAR_T WHERE DAHIL=0 AND  SBU =@sbuId  GROUP BY Firma,RefNo,RefNo_N  UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.NET_MIKTAR) AS MIKTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SBU_Bez_ENG = @sbuId GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(MIKTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource4.SelectParameters.Remove(SqlDataSource4.SelectParameters["seId"]);
                SqlDataSource4.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);

            }

            else if (Request.QueryString["seId"] != null)
            {

                SqlDataSource5.SelectCommand = "SELECT * FROM (SELECT Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR FROM  SATISLAR_T WHERE DAHIL=0 AND SE = @seId  GROUP BY Firma,SBU  UNION SELECT SLS16.Firma,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE = @seId  GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG) AS SBU   PIVOT ( SUM(TUTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["sbuId"]);
                SqlDataSource5.SelectParameters.Add("seId", Request.QueryString["seId"]);



            }



            else if (Request.QueryString["sbsbId"]!=null)
            {
                GridView2.DataSourceID = "SqlDataSource6";
                SqlDataSource6.SelectParameters["sbsbId"].DefaultValue = Request.QueryString["sbsbId"];

                //SE
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT Firma,SE,SE_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND SBS_B = @sbsbId  GROUP BY Firma,SE,SE_N   UNION SELECT SLS16.Firma,PS16.SE,SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma,PS16.SE,SE_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["seId"]);
                SqlDataSource1.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);

                //SBU
                SqlDataSource5.SelectCommand = "SELECT * FROM (SELECT Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR FROM  SATISLAR_T WHERE DAHIL=0 AND SBS_B = @sbsbId GROUP BY Firma,SBU UNION SELECT SLS16.Firma,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.SBS_B = @sbsbId   GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG) AS SBU   PIVOT ( SUM(TUTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["sbuId"]);
                SqlDataSource5.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);

                //SBS_C
                SqlDataSource3.SelectCommand = "SELECT * FROM (SELECT Firma,SBS_C,SBS_C_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE DAHIL=0 AND SBS_B = @sbsbId GROUP BY Firma,SBS_C,SBS_C_N  UNION SELECT SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["seId"]);
                SqlDataSource3.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);

                //RefNo
                SqlDataSource4.SelectCommand = "SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND  SBS_B = @sbsbId  GROUP BY Firma,RefNo,RefNO_N  UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt UNION SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(NET_MIKTAR) AS MIKTAR FROM SATISLAR_T WHERE DAHIL=0 AND  SBS_B = @sbsbId  GROUP BY Firma,RefNo,RefNO_N  UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.NET_MIKTAR) AS MIKTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(MIKTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource4.SelectParameters.Remove(SqlDataSource4.SelectParameters["seId"]);
                SqlDataSource4.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);



            }

            else if (Request.QueryString["sbscId"] != null)
            {
                GridView3.DataSourceID = "SqlDataSource7";
                SqlDataSource7.SelectParameters["sbscId"].DefaultValue = Request.QueryString["sbscId"];

                //SE
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT Firma,SE,SE_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND SBS_C = @sbscId  GROUP BY  Firma,SE,SE_N UNION SELECT SLS16.Firma,PS16.SE,SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_C = @sbscId GROUP BY SLS16.Firma,PS16.SE,SE_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["seId"]);
                SqlDataSource1.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);

                //SBU
                SqlDataSource5.SelectCommand = "SELECT * FROM (SELECT Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR FROM  SATISLAR_T WHERE DAHIL=0 AND SBS_C = @sbscId GROUP BY Firma,SBU UNION SELECT SLS16.Firma,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.SBS_C = @sbscId   GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG) AS SBU   PIVOT ( SUM(TUTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["sbuId"]);
                SqlDataSource5.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);

                //SBS_B
                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT Firma,SBS_B,SBS_B_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND SBS_C = @sbscId  GROUP BY  Firma,SBS_B,SBS_B_N  UNION SELECT SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_C = @sbscId  GROUP BY SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);

                //RefNo
                SqlDataSource4.SelectCommand = "SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND SBS_C = @sbscId  GROUP BY Firma,RefNo,RefNo_N  UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.SBS_C = @sbscId GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt UNION SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(NET_MIKTAR) AS MIKTAR FROM SATISLAR_T WHERE DAHIL=0 AND SBS_C = @sbscId  GROUP BY Firma,RefNo,RefNo_N  UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.NET_MIKTAR) AS MIKTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.SBS_C = @sbscId GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(MIKTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource4.SelectParameters.Remove(SqlDataSource4.SelectParameters["seId"]);
                SqlDataSource4.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);                
            }



            else if (Request.QueryString["refNo"] != null)
            {
                GridView4.DataSourceID = "SqlDataSource8";
                SqlDataSource8.SelectParameters["refNo"].DefaultValue = Request.QueryString["refNo"];

                SqlDataSource9.SelectParameters["refNo"].DefaultValue = Request.QueryString["refNo"];

                //SE
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT Firma,SE,SE_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE DAHIL=0 AND RefNo = @refNo GROUP BY Firma,SE,SE_N  UNION SELECT Firma,PS16.SE,SE_Bez_ENG,SUM (SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma,PS16.SE,SE_Bez_ENG) AS SBU PIVOT (SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) ) AS pvt ";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["seId"]);
                SqlDataSource1.SelectParameters.Add("refNo", Request.QueryString["refNo"]);

                //SBU
                SqlDataSource5.SelectCommand = "SELECT * FROM (SELECT Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR FROM  SATISLAR_T WHERE DAHIL=0 AND RefNo = @refNo GROUP BY Firma,SBU  UNION SELECT SLS16.Firma,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.Kenz_2005 = @refNo  GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG) AS SBU   PIVOT ( SUM(TUTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["sbuId"]);
                SqlDataSource5.SelectParameters.Add("refNo", Request.QueryString["refNo"]);

                //SBS_B
                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT Firma,SBS_B,SBS_B_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0  AND RefNo = @refNo  GROUP BY  Firma,SBS_B,SBS_B_N UNION SELECT SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 = @refNo  GROUP BY SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("refNo", Request.QueryString["refNo"]);

                //SBS_C
                SqlDataSource3.SelectCommand = "SELECT * FROM (SELECT Firma,SBS_C,SBS_C_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND RefNo = @refNo  GROUP BY  Firma,SBS_C,SBS_C_N UNION SELECT SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["seId"]);
                SqlDataSource3.SelectParameters.Add("refNo", Request.QueryString["refNo"]);


            }

            else if (Request.QueryString["refNoAra"] != null)
            {
                GridView4.DataSourceID = "SqlDataSource8";




                SqlDataSource8.SelectCommand = "SELECT * FROM ( SELECT Firma,RefNo,RefNo_N,SUM(NET_MIKTAR) AS MIKTAR FROM SATISLAR_T WHERE DAHIL = 0 AND RefNo LIKE '%' + @refNoAra + '%' GROUP BY Firma,RefNo,RefNo_N  UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.NET_MIKTAR) AS MIKTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(MIKTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt UNION SELECT *FROM(SELECT Firma, RefNo, RefNo_N, SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE DAHIL = 0 AND RefNo LIKE '%' + @refNoAra + '%' GROUP BY Firma, RefNo, RefNo_N UNION SELECT SLS16.Firma, Kenz_2005, KZ_2005_Bez_ENGL, SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma, Kenz_2005, KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource8.SelectParameters.Remove(SqlDataSource8.SelectParameters["refNo"]);
                SqlDataSource8.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);
                SqlDataSource8.SelectParameters["refNoAra"].DefaultValue = Request.QueryString["refNoAra"];

                SqlDataSource9.SelectCommand = "SELECT * FROM  (SELECT Firma, STOK_KODU, STOK_ADI, SUM(NET_MIKTAR) AS MIKTAR FROM SATISLAR_T WHERE RefNo LIKE '%' + @refNoAra + '%'  GROUP BY Firma, STOK_KODU, STOK_ADI  UNION SELECT SLS16.Firma, STOK_KODU, STOK_ADI, SUM(SLS16.NET_MIKTAR) AS MIKTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%'  GROUP BY SLS16.Firma, STOK_KODU, STOK_ADI) AS SBU PIVOT(SUM(MIKTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt UNION  SELECT *FROM ( SELECT Firma,STOK_KODU,STOK_ADI, SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND RefNo LIKE '%' + @refNoAra + '%'   GROUP BY Firma,STOK_KODU,STOK_ADI UNION SELECT SLS16.Firma,STOK_KODU,STOK_ADI,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%'  GROUP BY SLS16.Firma, STOK_KODU,STOK_ADI) AS SBU PIVOT(SUM(TUTAR)FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource9.SelectParameters.Remove(SqlDataSource9.SelectParameters["refNo"]);
                SqlDataSource9.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);
                SqlDataSource9.SelectParameters["refNoAra"].DefaultValue = Request.QueryString["refNoAra"];

                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT Firma,SE,SE_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE DAHIL=0 AND RefNo LIKE '%' + @refNoAra + '%' GROUP BY Firma,SE,SE_N  UNION SELECT SLS16.Firma,PS16.SE,SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma,PS16.SE,SE_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["seId"]);
                SqlDataSource1.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);

                SqlDataSource5.SelectCommand = "SELECT * FROM (SELECT Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR FROM  SATISLAR_T WHERE DAHIL=0 AND  RefNo LIKE '%' + @refNoAra + '%'  GROUP BY Firma,SBU UNION SELECT SLS16.Firma,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.Kenz_2005 LIKE '%' + @refNoAra + '%'  GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG) AS SBU   PIVOT ( SUM(TUTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["sbuId"]);
                SqlDataSource5.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);

                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT Firma,SBS_B,SBS_B_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE  DAHIL=0 AND RefNo LIKE '%' + @refNoAra + '%'   GROUP BY  Firma,SBS_B,SBS_B_N  UNION SELECT SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%'  GROUP BY SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);

                SqlDataSource3.SelectCommand = "SELECT * FROM (SELECT Firma,SBS_C,SBS_C_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE DAHIL=0 AND RefNo LIKE '%' + @refNoAra + '%' GROUP BY Firma,SBS_C,SBS_C_N  UNION SELECT SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["seId"]);
                SqlDataSource3.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);


            }

            else
            {
                SqlDataSource5.SelectCommand = "SELECT * FROM (SELECT Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR FROM  SATISLAR_T WHERE  DAHIL=0 GROUP BY Firma,SBU "+
"UNION SELECT Firma,SU AS SBU,SUM(KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES WHERE  MALZEME_OZEL_KODU<> 'DİĞER GLR'  GROUP BY Firma,SU) AS SBU "+
  "PIVOT (SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["sbuId"]);
                GridView1.DataSourceID = "";
                GridView2.DataSourceID = "";
                GridView3.DataSourceID = "";


            }

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView5_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView5, e);

            gridViewTotals.gridViewTotals1(GridView5, e);
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals1(GridView1, e);
        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals1(GridView2, e);
        }

        protected void GridView3_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals1(GridView3, e);
        }

        protected void GridView4_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals1(GridView4, e);
        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
    