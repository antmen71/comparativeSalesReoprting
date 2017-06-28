<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consolidated.aspx.cs" Inherits="comparativeSalesReporting.consolidated"  MasterPageFile="~/Site.Master"%>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">



    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="standard-gridview" Width="100%" ShowFooter="True"  RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected" AllowSorting="True" OnDataBound="GridView1_DataBound">
        <Columns>
            <asp:BoundField DataField="Firma" HeaderText="Firma" />
            <asp:BoundField DataField="01" DataFormatString="{0:N2}" HeaderText="Ocak">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="02" HeaderText="Şubat" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="03" HeaderText="Mart" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="04" HeaderText="Nisan" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="05" HeaderText="Mayıs" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="06" HeaderText="Haziran" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="07" HeaderText="Temmuz" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="08" HeaderText="Ağustos" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="09" HeaderText="Eylül" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="10" HeaderText="Ekim" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="11" HeaderText="Kasım" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="12" HeaderText="Aralık" DataFormatString="{0:N2}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="TOPLAM">
                <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>
        </Columns>
<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Excel'e aktar" />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="standard-gridview" Width="100%" ShowFooter="True"  RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected" AllowSorting="True" OnDataBound="GridView2_DataBound">
        <Columns>
            <asp:BoundField DataField="Firma" HeaderText="Firma" SortExpression="Firma" />
           <asp:BoundField DataField="01" HeaderText="Ocak" />
            <asp:BoundField DataField="02" HeaderText="Şubat" />
            <asp:BoundField DataField="03" HeaderText="Mart" />
            <asp:BoundField DataField="04" HeaderText="Nisan" />
            <asp:BoundField DataField="05" HeaderText="Mayıs" />
            <asp:BoundField DataField="06" HeaderText="Haziran" />
            <asp:BoundField DataField="07" HeaderText="Temmuz" />
            <asp:BoundField DataField="08" HeaderText="Ağustos" />
            <asp:BoundField DataField="09" HeaderText="Eylül" />
            <asp:BoundField DataField="10" HeaderText="Ekim" />
            <asp:BoundField DataField="11" HeaderText="Kasım" />
            <asp:BoundField DataField="12" HeaderText="Aralık" />
       <asp:TemplateField HeaderText="TOPLAM">
                <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
    <br />

    <asp:GridView ID="GridView3" runat="server">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT 'OBT SATIŞLAR' AS Firma,MONTH(TARIH) AS AY, (SUM(KDV_MATRAHI)) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' AND CH_YETKI_KODU &lt;&gt; 'IC' GROUP BY Firma,TARIH UNION SELECT 'OBT CİRO PRİMİ' AS Firma, MONTH_ AS AY,(SUM(CREDIT)-SUM(DEBIT)) AS TUTAR FROM LG_017_01_EMFLINE WHERE ACCOUNTCODE='611.003.004' GROUP BY  MONTH_,YEAR_ UNION SELECT 'OBM SATIŞLAR' AS Firma,MONTH(TARIH) AS AY, SUM(KDV_MATRAHI)  AS TUTAR FROM LNX_STD_6_117_01_SLSINVOICES WHERE MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR'  AND CH_YETKI_KODU &lt;&gt; 'IC'   GROUP BY Firma,TARIH UNION SELECT 'OBM CİRO PRİMİ' AS Firma, MONTH_ AS AY,(SUM(CREDIT)-SUM(DEBIT)) AS TUTAR FROM LG_117_01_EMFLINE WHERE ACCOUNTCODE='611.003.004' GROUP BY  MONTH_,YEAR_ ) AS PVT PIVOT (SUM(TUTAR)    FOR AY IN ([01], [02], [03] ,[04],[05],[06],[07],[08] ,[09] ,[10] ,[11], [12]))AS pvt" OnSelecting="SqlDataSource1_Selecting" ></asp:SqlDataSource>



    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="konsolideObt" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    


</asp:Content>

