<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stockList.aspx.cs" Inherits="comparativeSalesReporting.stockList" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">


    <asp:ListView ID="stockList1" runat="server" DataSourceID="SqlDataSource1">

        <LayoutTemplate>
            <table>
                <tr>

                    <td style="width: 150px; font-size: larger; font-family: 'OBO Office Serif'">Stok Kodu
                    </td>
                    <td style="width: 500px; font-size: larger; font-family: 'OBO Office Serif'">Stok Adı
                    </td>
                    <td style="width: 50px; font-size: larger; font-family: 'OBO Office Serif'">Stok
                    </td>
                    <td style="width: 50px; font-size: larger; font-family: 'OBO Office Serif'">Rezerve
                    </td>

                </tr>
                <tr runat="server" id="itemPlaceholder">
                </tr>
            </table>
            <asp:DataPager ID="ItemDataPager" runat="server" PageSize="30">
                <Fields>
                    <asp:NumericPagerField ButtonCount="10" />
                </Fields>
            </asp:DataPager>
        </LayoutTemplate>

        <ItemTemplate>
            <table border="0">
                <tr>

                    <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                        <asp:Label ID="kod" runat="server"><a href="stockDetails.aspx?sId=<%# Eval("code")%>"><%# Eval("CODE") %></a></asp:Label></td>
                    <td style="width: 500px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                        <asp:Label ID="unvan" runat="server"><%# Eval("NAME") %></asp:Label></td>
                    <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                        <asp:Label ID="stok" runat="server"><%# Eval("Stok") %></asp:Label>
                    </td>
                    <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                        <asp:Label ID="rezerve" runat="server"><%# Eval("Rezerve") %></asp:Label>
                    </td>

                </tr>
            </table>
        </ItemTemplate>

        <AlternatingItemTemplate>
            <table border="0">
                <tr>
                    <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                        <asp:Label ID="kod" runat="server"><a href="stockDetails.aspx?sId=<%# Eval("code")%>"><%# Eval("CODE") %></a></asp:Label></td>
                    <td style="width: 500px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                        <asp:Label ID="unvan" runat="server"><%# Eval("NAME") %></asp:Label></td>
                    <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                        <asp:Label ID="stok" runat="server"><%# Eval("Stok") %></asp:Label>
                    </td>
                    <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                        <asp:Label ID="rezerve" runat="server"><%# Eval("Rezerve") %></asp:Label>
                    </td>
                </tr>
            </table>
        </AlternatingItemTemplate>

        <SelectedItemTemplate>
            <table border="0">
                <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: red; font-family: 'OBO Office Sans'">
                    <asp:Label ID="kod" runat="server"><a href="customerDetails.aspx?cId=<%# Eval("code")%>"><%# Eval("CODE") %></a></asp:Label></td>
                <td style="width: 500px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: red; font-family: 'OBO Office Sans'">
                    <asp:Label ID="unvan" runat="server"><%# Eval("DEFINITION_") %></asp:Label></td>
                <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: red; font-family: 'OBO Office Sans'">
                    <asp:LinkButton ID="SelectButton" runat="server" Text="Select" CommandName="Select">Özet</asp:LinkButton>
                <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: red; font-family: 'OBO Office Sans'">
                    <asp:Label ID="stok" runat="server"><%# Eval("Stok") %></asp:Label>
                </td>
                <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: red; font-family: 'OBO Office Sans'">
                    <asp:Label ID="rezerve" runat="server"><%# Eval("Rezerve") %></asp:Label>
            </table>

        </SelectedItemTemplate>





    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF WHERE ACTIVE=0 AND EXPCTGNO&lt;&gt;'Demirbaş'  AND INVENNO=-1 AND EXPCTGNO=CASE WHEN @sbu IS NULL THEN EXPCTGNO ELSE @sbu END
GROUP BY CODE, NAME
" OnSelecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:SessionParameter Name="sbu" SessionField="sbu" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS LEFT  JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF
WHERE (ACTIVE=0    AND EXPCTGNO&lt;&gt;'Demirbaş'  AND CODE LIKE  '%' + '@sbu' + '%'   AND EXPCTGNO=CASE WHEN @sbu IS NULL THEN EXPCTGNO ELSE @sbu END )
GROUP BY CODE, NAME ORDER BY CODE 
">
        <SelectParameters>
            <asp:QueryStringParameter Name="STOKkODU" QueryStringField="stokKodu" />
            <asp:SessionParameter Name="sbu" SessionField="sbu" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF WHERE ACTIVE=0    AND EXPCTGNO&lt;&gt;'Demirbaş'  AND NAME LIKE  '%' + @stokadi + '%'  AND INVENNO=-1 GROUP BY CODE, NAME ORDER BY CODE 
">
        <SelectParameters>
            <asp:QueryStringParameter Name="stokAdi" QueryStringField="stokAdi" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF JOIN PS16 ON LG_017_ITEMS.CODE=PS16.Material WHERE ACTIVE=0    AND EXPCTGNO&lt;&gt;'Demirbaş'  AND SBU_Bez_ENG LIKE  '%' + @stokSbu + '%'  AND INVENNO=-1 GROUP BY CODE, NAME ORDER BY CODE 
">
        <SelectParameters>
            <asp:QueryStringParameter Name="stokSBU" QueryStringField="stokSBU" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF JOIN PS16 ON LG_017_ITEMS.CODE=PS16.Material WHERE ACTIVE=0    AND EXPCTGNO&lt;&gt;'Demirbaş'  AND SE LIKE  '%' + @stokSe + '%'  AND INVENNO=-1 GROUP BY CODE, NAME ORDER BY CODE 
">
        <SelectParameters>
            <asp:QueryStringParameter Name="stokSE" QueryStringField="stokSE" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF JOIN PS16 ON LG_017_ITEMS.CODE=PS16.Material WHERE ACTIVE=0    AND EXPCTGNO&lt;&gt;'Demirbaş'  AND SBS_B LIKE  '%' + @stokSbs_b + '%'  AND INVENNO=-1 GROUP BY CODE, NAME ORDER BY CODE ">
        <SelectParameters>
            <asp:QueryStringParameter Name="stoksBS_B" QueryStringField="stokSbs_b" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF JOIN PS16 ON LG_017_ITEMS.CODE=PS16.Material WHERE ACTIVE=0    AND EXPCTGNO&lt;&gt;'Demirbaş'  AND SBS_C LIKE  '%' + @stokSbs_c + '%'  AND INVENNO=-1 GROUP BY CODE, NAME ORDER BY CODE ">
        <SelectParameters>
            <asp:QueryStringParameter Name="stoksBS_C" QueryStringField="stokSbs_c" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF JOIN PS16 ON LG_017_ITEMS.CODE=PS16.Material WHERE ACTIVE=0    AND EXPCTGNO&lt;&gt;'Demirbaş'  AND  Kenz_2005=@refNo  AND INVENNO=-1 GROUP BY CODE, NAME ORDER BY CODE ">
        <SelectParameters>
            <asp:QueryStringParameter Name="refNo" QueryStringField="refNo" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, NAME,SUM(ONHAND) AS STOK,SUM(RESERVED) AS REZERVE FROM LG_017_ITEMS JOIN LV_017_01_STINVTOT ON LG_017_ITEMS.LOGICALREF=STOCKREF JOIN PS16 ON LG_017_ITEMS.CODE=PS16.Material WHERE ACTIVE=0    AND EXPCTGNO&lt;&gt;'Demirbaş'  AND Kenz_2005  LIKE  '%' + @refNoAra + '%'  AND INVENNO=-1 GROUP BY CODE, NAME ORDER BY CODE ">
        <SelectParameters>
            <asp:QueryStringParameter Name="refNoAra" QueryStringField="refNoAra" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
