<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stockListSales.aspx.cs" Inherits="comparativeSalesReporting.stockListSales" MasterPageFile="~/Site.Master"%>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">



    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="30" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" CssClass="gridview" Width="100%" OnDataBound="GridView1_DataBound" ShowFooter="True" FooterStyle-CssClass="gv-footer" OnRowDataBound="GridView1_RowDataBound">



        <Columns>
            <asp:TemplateField HeaderText="KODU" SortExpression="KODU">
                <EditItemTemplate>
                   <a href="stockDetails.aspx?sId=<%# Eval("STOK_KODU") %>"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("STOK_KODU") %>'></asp:Label></a>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href="stockDetails.aspx?sId=<%# Eval("STOK_KODU") %>">  <asp:Label ID="Label1" runat="server" Text='<%# Bind("STOK_KODU") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="STOK_ADI" HeaderText="AD" ReadOnly="True" SortExpression="AD" />
            <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="TOPLAM">
                <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>
        </Columns>


         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
      

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<RowStyle CssClass="gv-row"></RowStyle>



      

    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE STOK_KODU LIKE '%' + @sId + '%'
GROUP BY Firma,STOK_KODU,STOK_ADI
UNION SELECT Firma,STOK_KODU,STOK_ADI,SUM(KDV_MATRAHI) AS TUTAR

FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE WHERE STOK_KODU LIKE '%' + @sId + '%' GROUP BY Firma,STOK_KODU,STOK_ADI) AS CARI
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
UNION
SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(NET_MIKTAR) AS MIKTAR from SATISLAR_T WHERE STOK_KODU LIKE '%' + @sId + '%'
GROUP BY Firma,STOK_KODU,STOK_ADI
UNION SELECT Firma,STOK_KODU,STOK_ADI,SUM(NET_MIKTAR) AS MIKTAR

FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE WHERE STOK_KODU LIKE '%' + @sId + '%' GROUP BY Firma,STOK_KODU,STOK_ADI) AS CARI
  PIVOT
(
SUM(MIKTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="sId" QueryStringField="sId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(KDV_MATRAHI)AS TUTAR from SATISLAR_T WHERE STOK_ADI LIKE '%' + @stokAdi + '%'
GROUP BY Firma,STOK_KODU,STOK_ADI
UNION SELECT Firma,STOK_KODU ,STOK_ADI,SUM(KDV_MATRAHI) AS TUTAR 
FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE WHERE STOK_ADI LIKE '%' + @stokAdi + '%' 
GROUP BY Firma,STOK_KODU,STOK_ADI) AS CARI
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
UNION
SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(NET_MIKTAR)AS MIKTAR from SATISLAR_T WHERE STOK_ADI LIKE '%' + @stokAdi + '%'
GROUP BY Firma,STOK_KODU,STOK_ADI
UNION SELECT Firma,STOK_KODU ,STOK_ADI,SUM(NET_MIKTAR)AS MIKTAR 
FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE WHERE STOK_ADI LIKE '%' + @stokAdi + '%' 
GROUP BY Firma,STOK_KODU,STOK_ADI) AS CARI
  PIVOT
(
SUM(MIKTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="stokAdi" QueryStringField="stokAdi" />
        </SelectParameters>
    </asp:SqlDataSource>



    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(KDV_MATRAHI)AS TUTAR from SATISLAR_T WHERE STOK_KODU LIKE '%' + @stokKodu + '%'
GROUP BY Firma,STOK_KODU,STOK_ADI
UNION SELECT Firma,STOK_KODU ,STOK_ADI,SUM(KDV_MATRAHI) AS TUTAR 
FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE WHERE STOK_KODU LIKE '%' + @stokKodu + '%' 
GROUP BY Firma,STOK_KODU,STOK_ADI) AS CARI
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
UNION
SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(NET_MIKTAR)AS MIKTAR from SATISLAR_T WHERE STOK_KODU LIKE '%' + @stokKodu + '%'
GROUP BY Firma,STOK_KODU,STOK_ADI
UNION SELECT Firma,STOK_KODU ,STOK_ADI,SUM(NET_MIKTAR)AS MIKTAR 
FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE WHERE STOK_KODU LIKE '%' + @stokKodu + '%' 
GROUP BY Firma,STOK_KODU,STOK_ADI) AS CARI
  PIVOT
(
SUM(MIKTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="stokKodu" QueryStringField="stokKodu" />
        </SelectParameters>
    </asp:SqlDataSource>



</asp:Content>