<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regionListByDate.aspx.cs" Inherits="comparativeSalesReporting.regionListByDate" MasterPageFile="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="MainContent"  runat="server">



    <asp:GridView ID="GridView1" runat="server"  ShowFooter="True" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" OnDataBound="GridView1_DataBound">
        <Columns>
            <asp:TemplateField HeaderText="SEHIR" SortExpression="SEHIR">
                <EditItemTemplate>
                <a href="regionListByDate.aspx?cariSehir=<%# Eval("SEHIR") %>&tarih1=<%# Request.QueryString["tarih1"] %>&tarih2=<%# Request.QueryString["tarih2"] %>">      <asp:Label ID="Label1" runat="server" Text='<%# Eval("SEHIR") %>'></asp:Label></a>
                </EditItemTemplate>
                <ItemTemplate>
                 <a href="regionListByDate.aspx?cariSehir=<%# Eval("SEHIR") %>&tarih1=<%# Request.QueryString["tarih1"] %>&tarih2=<%# Request.QueryString["tarih2"] %>">     <asp:Label ID="Label1" runat="server" Text='<%# Bind("SEHIR") %>'></asp:Label> </a>
                </ItemTemplate>
            </asp:TemplateField>
           <asp:BoundField DataField="BOLGE" HeaderText="BOLGE" ReadOnly="True" SortExpression="BOLGE" ><HeaderStyle ForeColor="White" /> <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
             <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
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

    <br />

    <asp:GridView ID="GridView2" runat="server" ShowFooter="True" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" OnDataBound="GridView2_DataBound">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:TemplateField HeaderText="MÜŞTERİ" SortExpression="CH_KODU">
                <EditItemTemplate>
               <a href="regionListByDate.aspx?cariKodu=<%# Eval("CH_KODU") %>&tarih1=<%# Request.QueryString["tarih1"] %>&tarih2=<%# Request.QueryString["tarih2"] %>&cariSehir=<%#  Request.QueryString["cariSehir"] %>">        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CH_KODU") %>'></asp:Label> </a>
                </EditItemTemplate>
                <ItemTemplate>
                 <a href="regionListByDate.aspx?cariKodu=<%# Eval("CH_KODU") %>&tarih1=<%# Request.QueryString["tarih1"] %>&tarih2=<%# Request.QueryString["tarih2"] %>&cariSehir=<%#  Request.QueryString["cariSehir"] %>">        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CH_KODU") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CH_UNVAN" HeaderText="UNVAN" ReadOnly="True" SortExpression="CH_UNVAN" />

             <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
                <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:TemplateField HeaderText="TOPLAM">
                 <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
             </asp:TemplateField>
        </Columns>
<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected" HorizontalAlign="Left"></SelectedRowStyle>
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView3" runat="server" ShowFooter="True" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="100%" OnDataBound="GridView3_DataBound">
        <Columns>
            <asp:TemplateField HeaderText="ÜRÜN GRUBU" SortExpression="SBU">
                <EditItemTemplate>
         <a href="regionListByDate.aspx?sbuId=<%# Eval("sbu") %>&tarih1=<%# Request.QueryString["tarih1"] %>&tarih2=<%# Request.QueryString["tarih2"] %>&cariKodu=<%# Request.QueryString["cariKodu"] %>"></a>>           <asp:Label ID="Label1" runat="server" Text='<%# Eval("SBU") %>'></asp:Label></a>
                </EditItemTemplate>
                <ItemTemplate>
            <a href="regionListByDate.aspx?sbuId=<%# Eval("sbu") %>&tarih1=<%# Request.QueryString["tarih1"] %>&tarih2=<%# Request.QueryString["tarih2"] %>&cariKodu=<%# Request.QueryString["cariKodu"] %>">         <asp:Label ID="Label1" runat="server" Text='<%# Bind("SBU") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
                        <asp:BoundField DataField="017" HeaderText="017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>
<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>
    </asp:GridView>
    <BR />

    <asp:GridView ID="GridView4" runat="server" ShowFooter="True" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected" AllowSorting="True" AutoGenerateColumns="False" Width="100%" DataSourceID="SqlDataSource4" OnDataBound="GridView4_DataBound">
        <Columns>
            <asp:BoundField DataField="STOK_KODU" HeaderText="STOK_KODU" ReadOnly="True" SortExpression="STOK_KODU" />
            <asp:BoundField DataField="STOK_ADI" HeaderText="STOK_ADI" ReadOnly="True" SortExpression="STOK_ADI" />
            <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
               <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017"  DataFormatString="{0:N2}"  ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>
<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T 
WHERE CH_KODU=@cariKodu AND DAHIL=0 AND SBU=@sbuId AND TARIH BETWEEN @tarih1 AND @tarih2 
GROUP BY Firma,STOK_KODU,STOK_ADI UNION SELECT Firma,STOK_KODU,STOK_ADI, SUM(KDV_MATRAHI)AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES 
WHERE CARI_HESAP_KODU=@cariKodu AND SU=@sbuId AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' AND TARIH BETWEEN @tarih1 AND @tarih2 GROUP BY Firma,STOK_KODU,STOK_ADI) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="cariKodu" QueryStringField="cariKodu" />
            <asp:QueryStringParameter Name="sbuId" QueryStringField="sbuId" />
            <asp:QueryStringParameter Name="tarih1" QueryStringField="tarih1" />
            <asp:QueryStringParameter Name="tarih2" QueryStringField="tarih2" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T 
WHERE CH_KODU=@cariKodu AND DAHIL=0 AND TARIH BETWEEN @tarih1 AND @tarih2 
GROUP BY Firma,SBU UNION SELECT Firma,SU AS SBU, SUM(KDV_MATRAHI)AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES 
WHERE CARI_HESAP_KODU=@cariKodu AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' AND TARIH BETWEEN @tarih1 AND @tarih2 GROUP BY SU, Firma) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="cariKodu" QueryStringField="carikodu" />
            <asp:QueryStringParameter Name="tarih1" QueryStringField="tarih1" />
            <asp:QueryStringParameter Name="tarih2" QueryStringField="tarih2" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,CH_KODU,CH_UNVAN,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE SEHIR=@cariSehir AND DAHIL=0 AND TARIH BETWEEN @tarih1 AND @tarih2 GROUP BY Firma,CH_KODU,CH_UNVAN UNION SELECT Firma,CARI_HESAP_KODU AS CH_KODU, CARI_HESAP_UNVANI AS CH_UNVAN , SUM(KDV_MATRAHI)AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR=@cariSehir AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' AND TARIH BETWEEN @tarih1 AND @tarih2 GROUP BY CARI_HESAP_KODU,CARI_HESAP_UNVANI, Firma) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="cariSehir" QueryStringField="cariSehir" />
            <asp:QueryStringParameter Name="tarih1" QueryStringField="tarih1" />
            <asp:QueryStringParameter Name="tarih2" QueryStringField="tarih2" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SEHIR,SUM(KDV_MATRAHI) AS TUTAR,BOLGE from SATISLAR_T WHERE  DAHIL=0 AND TARIH BETWEEN @tarih1  AND @tarih2   GROUP BY Firma,SEHIR,BOLGE UNION SELECT Firma,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR,CH_YETKI_KODU AS BOLGE FROM LNX_STD_6_017_01_SLSINVOICES WHERE  MALZEME_OZEL_KODU&lt;&gt; 'DİĞER GLR' AND TARIH BETWEEN @tarih1  AND @tarih2 GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR) AS BOLGE  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="tarih1" QueryStringField="tarih1" />
            <asp:QueryStringParameter Name="tarih2" QueryStringField="tarih2" />
        </SelectParameters>
    </asp:SqlDataSource>



</asp:Content>

