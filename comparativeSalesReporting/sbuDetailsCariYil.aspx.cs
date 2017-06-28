using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class sbuDetailsCariYil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["sbuId"] == null && Request.QueryString["seId"] == null && Request.QueryString["sbsbId"] == null && Request.QueryString["sbscId"] == null && Request.QueryString["refNo"] == null && Request.QueryString["refNoAra"] == null)
            {

            }


            else if (Request.QueryString["sbuId"] != null)
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SE,PS16.SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI)" +
           " AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SBU_Bez_ENG = @sbuId" +
           " GROUP BY SLS16.Firma,PS16.SE,PS16.SE_Bez_ENG, TARIH) AS SBU PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);

                SqlDataSource3.SelectCommand = "SELECT* FROM (SELECT MONTH(TARIH) AS AY, PS16.SBS_B, PS16.SBS_B_Bez_ENG, SUM(SLS16.KDV_MATRAHI)" +
            " AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SBU_Bez_ENG = @sbuId"+
            " GROUP BY SLS16.Firma, PS16.SBS_B, PS16.SBS_B_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR)      FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["sbsbId"]);
                SqlDataSource3.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);

                SqlDataSource4.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI)"+
            " AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SBU_Bez_ENG = @sbuId"+
            " GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource4.SelectParameters.Remove(SqlDataSource4.SelectParameters["sbscId"]);
                SqlDataSource4.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);

                SqlDataSource5.SelectCommand = "WITH SALESTOTALS AS"+
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Kenz_2005 AS RefNo, PS16.KZ_2005_Bez_ENGL AS RefName, SUM(SLS16.KDV_MATRAHI) AS TUTAR"+
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material"+
" WHERE PS16.SBU_Bez_ENG = @sbuId GROUP BY SLS16.Firma, PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL, TARIH) AS RefNo"+
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt),"+
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Kenz_2005 AS RefNo, PS16.KZ_2005_Bez_ENGL AS RefName, SUM(NET_MIKTAR) AS MIKTAR"+
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBU_Bez_ENG = @sbuId" +
 " GROUP BY SLS16.Firma, PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL, TARIH) AS RefNo  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)"+
 " SELECT SA.RefNo,SA.RefName,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]"+
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]"+
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]"+
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.RefNo = ST.RefNo";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["refNo"]);
                SqlDataSource5.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);

                SqlDataSource6.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.SBU_Bez_ENG = @sbuId GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS Material" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBU_Bez_ENG = @sbuId" +
 " GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS mATERİAL  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.Material,SA.STOK_ADI,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]" +
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.Material = ST.Material";
                SqlDataSource6.SelectParameters.Remove(SqlDataSource6.SelectParameters["sId"]);
                SqlDataSource6.SelectParameters.Add("sbuId", Request.QueryString["sbuId"]);
            }

            else if (Request.QueryString["seId"] != null)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH)AS AY,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE = @seId GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG,TARIH) AS SBU  PIVOT(SUM(TUTAR)    FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["sbuId"]);
                SqlDataSource1.SelectParameters.Add("seId", Request.QueryString["seId"]);

                SqlDataSource3.SelectCommand = "SELECT* FROM (SELECT MONTH(TARIH) AS AY, PS16.SBS_B, PS16.SBS_B_Bez_ENG, SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE = @seId GROUP BY SLS16.Firma, PS16.SBS_B, PS16.SBS_B_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR)      FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["sbsbId"]);
                SqlDataSource3.SelectParameters.Add("seId", Request.QueryString["seId"]);

                SqlDataSource4.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE = @seId GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource4.SelectParameters.Remove(SqlDataSource4.SelectParameters["sbscId"]);
                SqlDataSource4.SelectParameters.Add("seId", Request.QueryString["seId"]);

                SqlDataSource5.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Kenz_2005 AS RefNo, PS16.KZ_2005_Bez_ENGL AS RefName, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.SE = @seId GROUP BY SLS16.Firma, PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL, TARIH) AS RefNo" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Kenz_2005 AS RefNo, PS16.KZ_2005_Bez_ENGL AS RefName, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE = @seId" +
 " GROUP BY SLS16.Firma, PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL, TARIH) AS RefNo  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.RefNo,SA.RefName,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]" +
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.RefNo = ST.RefNo";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["refNo"]);
                SqlDataSource5.SelectParameters.Add("seId", Request.QueryString["seId"]);

                SqlDataSource6.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.SE = @seId GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS Material" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE = @seId" +
 " GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS mATERİAL  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.Material,SA.STOK_ADI,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]"+
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.Material = ST.Material";
                SqlDataSource6.SelectParameters.Remove(SqlDataSource6.SelectParameters["sId"]);
                SqlDataSource6.SelectParameters.Add("seId", Request.QueryString["seId"]);
            }
            else if (Request.QueryString["sbsbId"] != null)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH)AS AY,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG,TARIH) AS SBU  PIVOT(SUM(TUTAR)    FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["sbuId"]);
                SqlDataSource1.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);

                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SE,PS16.SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma,PS16.SE,PS16.SE_Bez_ENG, TARIH) AS SBU PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);

                SqlDataSource4.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource4.SelectParameters.Remove(SqlDataSource4.SelectParameters["sbscId"]);
                SqlDataSource4.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);

                SqlDataSource5.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Kenz_2005 AS RefNo, PS16.KZ_2005_Bez_ENGL AS RefName, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma, PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL, TARIH) AS RefNo" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Kenz_2005 AS RefNo, PS16.KZ_2005_Bez_ENGL AS RefName, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId" +
 " GROUP BY SLS16.Firma, PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL, TARIH) AS RefNo  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.RefNo,SA.RefName,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]" +
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.RefNo = ST.RefNo";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["refNo"]);
                SqlDataSource5.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);

                SqlDataSource6.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.SBS_B = @sbsbId GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS Material" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B = @sbsbId" +
 " GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS mATERİAL  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.Material,SA.STOK_ADI,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]" +
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.Material = ST.Material";
                SqlDataSource6.SelectParameters.Remove(SqlDataSource6.SelectParameters["sId"]);
                SqlDataSource6.SelectParameters.Add("sbsbId", Request.QueryString["sbsbId"]);
            }

            else if (Request.QueryString["sbscId"] != null)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH)AS AY,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_C = @sbscId GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG,TARIH) AS SBU  PIVOT(SUM(TUTAR)    FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["sbuId"]);
                SqlDataSource1.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);

                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SE,PS16.SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_C = @sbscId GROUP BY SLS16.Firma,PS16.SE,PS16.SE_Bez_ENG, TARIH) AS SBU PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);

                SqlDataSource3.SelectCommand = "SELECT* FROM (SELECT MONTH(TARIH) AS AY, PS16.SBS_B, PS16.SBS_B_Bez_ENG, SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_C = @sbscId GROUP BY SLS16.Firma, PS16.SBS_B, PS16.SBS_B_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR)      FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["sbsbId"]);
                SqlDataSource3.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);

                SqlDataSource5.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Kenz_2005 AS RefNo, PS16.KZ_2005_Bez_ENGL AS RefName, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.SBS_C = @sbscId GROUP BY SLS16.Firma, PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL, TARIH) AS RefNo" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Kenz_2005 AS RefNo, PS16.KZ_2005_Bez_ENGL AS RefName, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_C = @sbscId" +
 " GROUP BY SLS16.Firma, PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL, TARIH) AS RefNo  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.RefNo,SA.RefName,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]" +
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.RefNo = ST.RefNo";
                SqlDataSource5.SelectParameters.Remove(SqlDataSource5.SelectParameters["refNo"]);
                SqlDataSource5.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);

                SqlDataSource6.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.SBS_C = @sbscId GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS Material" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_C = @sbscId" +
 " GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS mATERİAL  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.Material,SA.STOK_ADI,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]" +
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.Material = ST.Material";
                SqlDataSource6.SelectParameters.Remove(SqlDataSource6.SelectParameters["sId"]);
                SqlDataSource6.SelectParameters.Add("sbscId", Request.QueryString["sbscId"]);
            }


            else if (Request.QueryString["refNo"] != null)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH)AS AY,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG,TARIH) AS SBU  PIVOT(SUM(TUTAR)    FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["sbuId"]);
                SqlDataSource1.SelectParameters.Add("refNo", Request.QueryString["refNo"]);

                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SE,PS16.SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma,PS16.SE,PS16.SE_Bez_ENG, TARIH) AS SBU PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("refNo", Request.QueryString["refNo"]);

                SqlDataSource3.SelectCommand = "SELECT* FROM (SELECT MONTH(TARIH) AS AY, PS16.SBS_B, PS16.SBS_B_Bez_ENG, SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma, PS16.SBS_B, PS16.SBS_B_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR)      FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["sbsbId"]);
                SqlDataSource3.SelectParameters.Add("refNo", Request.QueryString["refNo"]);

                SqlDataSource4.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource4.SelectParameters.Remove(SqlDataSource4.SelectParameters["sbscId"]);
                SqlDataSource4.SelectParameters.Add("refNo", Request.QueryString["refNo"]);

                SqlDataSource6.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS Material" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 = @refNo" +
 " GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS mATERİAL  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.Material,SA.STOK_ADI,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]" +
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.Material = ST.Material";
                SqlDataSource6.SelectParameters.Remove(SqlDataSource6.SelectParameters["sId"]);
                SqlDataSource6.SelectParameters.Add("refNo", Request.QueryString["refNo"]);
            }

            else if (Request.QueryString["refNoAra"] != null)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH)AS AY,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG,TARIH) AS SBU  PIVOT(SUM(TUTAR)    FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource1.SelectParameters.Remove(SqlDataSource1.SelectParameters["sbuId"]);
                SqlDataSource1.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);

                SqlDataSource2.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SE,PS16.SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma,PS16.SE,PS16.SE_Bez_ENG, TARIH) AS SBU PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource2.SelectParameters.Remove(SqlDataSource2.SelectParameters["seId"]);
                SqlDataSource2.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);

                SqlDataSource3.SelectCommand = "SELECT* FROM (SELECT MONTH(TARIH) AS AY, PS16.SBS_B, PS16.SBS_B_Bez_ENG, SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma, PS16.SBS_B, PS16.SBS_B_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR)      FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource3.SelectParameters.Remove(SqlDataSource3.SelectParameters["sbsbId"]);
                SqlDataSource3.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);

                SqlDataSource4.SelectCommand = "SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG, TARIH) AS SBU  PIVOT(SUM(TUTAR) FOR AY IN([01],[02],[03],[04], [05], [06], [07],[08],[09],[10],[11],[12]))AS pvt";
                SqlDataSource4.SelectParameters.Remove(SqlDataSource4.SelectParameters["sbscId"]);
                SqlDataSource4.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);

                SqlDataSource6.SelectCommand = "WITH SALESTOTALS AS" +
"(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(SLS16.KDV_MATRAHI) AS TUTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material" +
" WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS Material" +
 " PIVOT (SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  )AS pvt)," +
" SALESAMOUNT AS (SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(NET_MIKTAR) AS MIKTAR" +
" FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005 LIKE '%' + @refNoAra + '%' " +
 " GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS mATERİAL  PIVOT(SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])) AS pvt)" +
 " SELECT SA.Material,SA.STOK_ADI,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]" +
 " ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]" +
 " ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]" +
  " FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.Material = ST.Material";
                SqlDataSource6.SelectParameters.Remove(SqlDataSource6.SelectParameters["sId"]);
                SqlDataSource6.SelectParameters.Add("refNoAra", Request.QueryString["refNoAra"]);
            }

        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals1(GridView1, e);
        }
    }
}