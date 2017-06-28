<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stockListSalescariYil.aspx.cs" Inherits="comparativeSalesReporting.stockListSales_cariYil" MasterPageFile="~/Site.Master"%>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">


     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" CssClass="gridview" Width="100%" OnDataBound="GridView1_DataBound" ShowFooter="True" FooterStyle-CssClass="gv-footer">



        <Columns>
            <asp:BoundField DataField="Material" HeaderText="STOK KODU" SortExpression="Material" />
            <asp:BoundField DataField="STOK_ADI" HeaderText="STOK ADI" SortExpression="STOK_ADI">
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="01" HeaderText="Ocak" ReadOnly="True" SortExpression="01" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="02" HeaderText="Şubat" ReadOnly="True" SortExpression="02" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="03" HeaderText="Mart" ReadOnly="True" SortExpression="03" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="04" HeaderText="Nisan" ReadOnly="True" SortExpression="04" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="05" HeaderText="Mayıs" ReadOnly="True" SortExpression="05" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="06" HeaderText="Haziran" ReadOnly="True" SortExpression="06" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="07" HeaderText="Temmuz" ReadOnly="True" SortExpression="07" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="08" HeaderText="Ağustos" ReadOnly="True" SortExpression="08" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="09" HeaderText="Eylül" ReadOnly="True" SortExpression="09" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="10" HeaderText="Ekim" ReadOnly="True" SortExpression="10" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="11" HeaderText="Kasım" ReadOnly="True" SortExpression="11" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>

            <asp:BoundField DataField="12" HeaderText="Aralık" ReadOnly="True" SortExpression="12" DataFormatString="{0:N2}"> <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>

            <asp:TemplateField HeaderText="TOPLAM">
                <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>

        </Columns>



      

<FooterStyle CssClass="gv-footer"></FooterStyle>



      

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<RowStyle CssClass="gv-row"></RowStyle>



      

    </asp:GridView>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM  (SELECT MONTH(TARIH) AS AY,PS16.Material,STOK_ADI,SUM(SLS16.KDV_MATRAHI) AS TUTAR 
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE Material LIKE '%' + @sId + '%' GROUP BY SLS16.Firma,
PS16.Material,TARIH,STOK_ADI) AS SBU
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([01] ,[02] ,[03] ,[04], [05], [06], [07] ,[08],[09],[10],[11],[12])
)AS pvt">
         <SelectParameters>
             <asp:QueryStringParameter Name="sId" QueryStringField="sId" />
         </SelectParameters>
     </asp:SqlDataSource>

</asp:Content>