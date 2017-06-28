<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regionListcariYil.aspx.cs" Inherits="comparativeSalesReporting.regionList_cariYil"  MasterPageFile="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">





    <asp:GridView ID="GridView1" runat="server" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" PagerStyle-CssClass="gv-pager" FooterStyle-CssClass="gv-footer" SelectedRowStyle-CssClass="gv-selected" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  Width="100%" OnDataBound="GridView1_DataBound" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="BOLGE">

        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:TemplateField HeaderText="BOLGE" SortExpression="BOLGE">
                <EditItemTemplate>
                 <a href="regionListCariYil.aspx?cariBolge=<%# Eval("BOLGE") %>">    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BOLGE") %>'></asp:TextBox></a>
                </EditItemTemplate>
                <ItemTemplate>
               <a href="regionListCariYil.aspx?cariBolge=<%# Eval("BOLGE") %>">   <asp:Label ID="Label1" runat="server" Text='<%# Bind("BOLGE") %>'></asp:Label></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="1" DataFormatString="{0:N2}" HeaderText="Ocak" ReadOnly="True" SortExpression="1" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="2" DataFormatString="{0:N2}" HeaderText="Şubat" ReadOnly="True" SortExpression="2" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="3" DataFormatString="{0:N2}" HeaderText="Mart" ReadOnly="True" SortExpression="3" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="4" DataFormatString="{0:N2}" HeaderText="Nisan" ReadOnly="True" SortExpression="4" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="5" DataFormatString="{0:N2}" HeaderText="Mayıs" ReadOnly="True" SortExpression="5" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="6" DataFormatString="{0:N2}" HeaderText="Haziran" ReadOnly="True" SortExpression="6" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="7" DataFormatString="{0:N2}" HeaderText="Temmuz" ReadOnly="True" SortExpression="7" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="8" DataFormatString="{0:N2}"  HeaderText="Ağustos" ReadOnly="True" SortExpression="8" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="9" DataFormatString="{0:N2}" HeaderText="Eylül" ReadOnly="True" SortExpression="9" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="10" DataFormatString="{0:N2}"  HeaderText="Ekim" ReadOnly="True" SortExpression="10" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="11" DataFormatString="{0:N2}" HeaderText="Kasım" ReadOnly="True" SortExpression="11" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="12" DataFormatString="{0:N2}" HeaderText="Aralık" ReadOnly="True" SortExpression="12" >
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
    <br />
    <asp:GridView ID="GridView4" runat="server" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" PagerStyle-CssClass="gv-pager" FooterStyle-CssClass="gv-footer" SelectedRowStyle-CssClass="gv-selected" AutoGenerateColumns="False" DataSourceID="SqlDataSource7"  Width="100%" OnDataBound="GridView4_DataBound" ShowFooter="True" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" DataKeyNames="SEHIR">
        <Columns>
            <asp:TemplateField HeaderText="SEHIR" SortExpression="SEHIR">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SEHIR") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
             <a href="regionListcariYil.aspx?cariSehir=<%# Eval("SEHIR") %>&cariBolge=<%# Eval("BOLGE")%>">       <asp:Label ID="Label1" runat="server" Text='<%# Bind("SEHIR") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
           <asp:BoundField DataField="1" DataFormatString="{0:N2}" HeaderText="Ocak" ReadOnly="True" SortExpression="1" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="2" DataFormatString="{0:N2}" HeaderText="Şubat" ReadOnly="True" SortExpression="2" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="3" DataFormatString="{0:N2}" HeaderText="Mart" ReadOnly="True" SortExpression="3" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="4" DataFormatString="{0:N2}" HeaderText="Nisan" ReadOnly="True" SortExpression="4" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="5" DataFormatString="{0:N2}" HeaderText="Mayıs" ReadOnly="True" SortExpression="5" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="6" DataFormatString="{0:N2}" HeaderText="Haziran" ReadOnly="True" SortExpression="6" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="7" DataFormatString="{0:N2}" HeaderText="Temmuz" ReadOnly="True" SortExpression="7" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="8" DataFormatString="{0:N2}"  HeaderText="Ağustos" ReadOnly="True" SortExpression="8" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="9" DataFormatString="{0:N2}" HeaderText="Eylül" ReadOnly="True" SortExpression="9" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="10" DataFormatString="{0:N2}"  HeaderText="Ekim" ReadOnly="True" SortExpression="10" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="11" DataFormatString="{0:N2}" HeaderText="Kasım" ReadOnly="True" SortExpression="11" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="12" DataFormatString="{0:N2}" HeaderText="Aralık" ReadOnly="True" SortExpression="12" >
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
    <br />




    <asp:GridView ID="GridView3" runat="server" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" PagerStyle-CssClass="gv-pager" FooterStyle-CssClass="gv-footer" SelectedRowStyle-CssClass="gv-selected" AutoGenerateColumns="False" DataSourceID="SqlDataSource3"  Width="100%" OnDataBound="GridView3_DataBound" ShowFooter="True">
        <Columns>
            <asp:TemplateField HeaderText="CARI_HESAP_KODU" SortExpression="CARI_HESAP_KODU">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CARI_HESAP_KODU") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                  <a href="customerDetails.aspx?cId=<%# Eval("CARI_HESAP_KODU") %>">  <asp:Label ID="Label1" runat="server" Text='<%# Bind("CARI_HESAP_KODU") %>'></asp:Label></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="CARI_HESAP_UNVANI" HeaderText="CARI_HESAP_UNVANI" SortExpression="CARI_HESAP_UNVANI" >  <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="SEHIR" HeaderText="CH_SEHIR" SortExpression="SEHIR">  <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="1" DataFormatString="{0:N2}" HeaderText="Ocak" ReadOnly="True" SortExpression="1" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="2" DataFormatString="{0:N2}" HeaderText="Şubat" ReadOnly="True" SortExpression="2" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="3" DataFormatString="{0:N2}" HeaderText="Mart" ReadOnly="True" SortExpression="3" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="4" DataFormatString="{0:N2}" HeaderText="Nisan" ReadOnly="True" SortExpression="4" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="5" DataFormatString="{0:N2}" HeaderText="Mayıs" ReadOnly="True" SortExpression="5" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="6" DataFormatString="{0:N2}" HeaderText="Haziran" ReadOnly="True" SortExpression="6" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="7" DataFormatString="{0:N2}" HeaderText="Temmuz" ReadOnly="True" SortExpression="7" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="8" DataFormatString="{0:N2}" HeaderText="Ağustos" ReadOnly="True" SortExpression="8" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="9" DataFormatString="{0:N2}" HeaderText="Eylül" ReadOnly="True" SortExpression="9" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="10" DataFormatString="{0:N2}" HeaderText="Ekim" ReadOnly="True" SortExpression="10" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="11" DataFormatString="{0:N2}" HeaderText="Kasım" ReadOnly="True" SortExpression="11" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="12" DataFormatString="{0:N2}" HeaderText="Aralık" ReadOnly="True" SortExpression="12" >  <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="TOPLAM">
                <ItemStyle Font-Bold="True" />
            </asp:TemplateField>
        </Columns>
<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>
    </asp:GridView>





    <br />
    <br />




    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" PagerStyle-CssClass="gv-pager" FooterStyle-CssClass="gv-footer" SelectedRowStyle-CssClass="gv-selected"  Width="100%" OnDataBound="GridView2_DataBound" ShowFooter="True">
        <Columns>
                        <asp:BoundField DataField="FATURA_TURU" HeaderText="FATURA_TURU" SortExpression="FATURA_TURU" >
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="1" DataFormatString="{0:N2}" HeaderText="Ocak" ReadOnly="True" SortExpression="1" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="2" DataFormatString="{0:N2}" HeaderText="Şubat" ReadOnly="True" SortExpression="2" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="3" DataFormatString="{0:N2}" HeaderText="Mart" ReadOnly="True" SortExpression="3" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="4" DataFormatString="{0:N2}" HeaderText="Nisan" ReadOnly="True" SortExpression="4" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="5" DataFormatString="{0:N2}" HeaderText="Mayıs" ReadOnly="True" SortExpression="5" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="6" DataFormatString="{0:N2}" HeaderText="Haziran" ReadOnly="True" SortExpression="6" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="7" DataFormatString="{0:N2}" HeaderText="Temmuz" ReadOnly="True" SortExpression="7" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="8" DataFormatString="{0:N2}"  HeaderText="Ağustos" ReadOnly="True" SortExpression="8" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="9" DataFormatString="{0:N2}" HeaderText="Eylül" ReadOnly="True" SortExpression="9" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="10" DataFormatString="{0:N2}"  HeaderText="Ekim" ReadOnly="True" SortExpression="10" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="11" DataFormatString="{0:N2}" HeaderText="Kasım" ReadOnly="True" SortExpression="11" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="12" DataFormatString="{0:N2}" HeaderText="Aralık" ReadOnly="True" SortExpression="12" >
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





    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT MONTH(TARIH)AS AY,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU NOT IN ('DİĞER GLR','A-NAKLIYE')  GROUP BY CH_YETKI_KODU, TARIH) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt
" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>





    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="
SELECT * FROM (SELECT MONTH(TARIH)AS AY,FATURA_TURU, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE  MALZEME_OZEL_KODU NOT IN ('DİĞER GLR','A-NAKLIYE')   GROUP BY FATURA_TURU, TARIH) AS FATURA_TURU
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt
" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>





    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="
SELECT * FROM (SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,MONTH(TARIH)AS AY,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CARI_HESAP_KODU LIKE '%' + @cId + '%'  AND  MALZEME_OZEL_KODU NOT IN ('DİĞER GLR','A-NAKLIYE')   GROUP BY CH_YETKI_KODU, TARIH,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS CARI
  PIVOT
(
SUM(TUTAR)
     FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt" OnSelecting="SqlDataSource3_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="cId" QueryStringField="cariKod" />
        </SelectParameters>
    </asp:SqlDataSource>





    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,MONTH(TARIH)AS AY,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CARI_HESAP_UNVANI LIKE '%' + @cariUnvan + '%'  GROUP BY CH_YETKI_KODU, TARIH,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS CARI
  PIVOT
(
SUM(TUTAR)
     FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt" OnSelecting="SqlDataSource4_Selecting">
        <SelectParameters>
            <asp:Parameter Name="cariUnvan" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT MONTH(TARIH)AS AY,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_YETKI_KODU=@cariBolge GROUP BY CH_YETKI_KODU, TARIH) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt
" OnSelecting="SqlDataSource5_Selecting">
        <SelectParameters>
            <asp:Parameter Name="cariBolge" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CH_SEHIR AS SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI,MONTH(TARIH)AS AY,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR=@cariSehir GROUP BY CH_YETKI_KODU, TARIH,CARI_HESAP_KODU,CARI_HESAP_UNVANI,CH_SEHIR) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt
" OnSelecting="SqlDataSource6_Selecting">
        <SelectParameters>
            <asp:Parameter Name="cariSehir" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CH_SEHIR AS SEHIR,MONTH(TARIH)AS AY,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_YETKI_KODU=@cariBolge  AND  MALZEME_OZEL_KODU NOT IN ('DİĞER GLR','A-NAKLIYE')   GROUP BY CH_YETKI_KODU, TARIH,CH_SEHIR) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt
" OnSelecting="SqlDataSource7_Selecting">
        <SelectParameters>
            <asp:Parameter Name="cariBolge" />
        </SelectParameters>
    </asp:SqlDataSource>





    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT MONTH(TARIH)AS AY,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' AND TARIH BETWEEN @tarih1 AND @tarih2 GROUP BY CH_YETKI_KODU, TARIH) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt
" OnSelecting="SqlDataSource8_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="tarih1" QueryStringField="tarih1" />
            <asp:QueryStringParameter Name="tarih2" QueryStringField="tarih2" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="
SELECT * FROM (SELECT MONTH(TARIH)AS AY,FATURA_TURU, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' AND TARIH BETWEEN @tarih1 AND @tarih2 GROUP BY FATURA_TURU, TARIH) AS FATURA_TURU
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt
" OnSelecting="SqlDataSource9_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="tarih1" QueryStringField="tarih1" />
            <asp:QueryStringParameter Name="tarih2" QueryStringField="tarih2" />
        </SelectParameters>
    </asp:SqlDataSource>





</asp:Content>