<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="comparativeSalesReporting._Default" %>






<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="homePageLinks" style="width:100%">
        <div id="customerReportsLink" style="-webkit-border-radius: 30px; -moz-border-radius: 30px; border-radius: 30px; border: thin solid #67aaba; margin-bottom: 10px; width: 70%; padding: 20px; height: 220px">
            <div class="home-page-link-text" style="width: 58%; float: left; height: 158px; display: table">
                <a href="customerList.aspx">
                    <asp:Label runat="server">Cari hesap raporları</asp:Label>
                </a>&nbsp;/ <a href="top10Customer.aspx" target="_blank" >
                    <asp:Label runat="server">Top 10 Müşteri</asp:Label>
                </a>&nbsp;<br />
                <table style="width: 98%; height: 102px;">
                    <tr>
                        <td style="width: 150px; vertical-align: bottom">&nbsp;</td>
                        <td style="width: 99px">&nbsp;</td>
                        <td style="width: 132px">

                            <strong>Müşteri Listesi</strong></td>
                        <td style="width: 132px">

                            <strong>Yıllık Satışlar</strong></td>
                        <td style="width: 132px">

                            <strong>2017 Aylık</strong></td>
                    </tr>
                    <tr>
                        <td style="width: 150px; vertical-align: bottom">
                            <asp:Label runat="server" CssClass="anasayfaLabel" Width="100px">Cari kodu</asp:Label>
                        </td>
                        <td style="width: 99px">
                            <asp:TextBox runat="server" ID="cariKodu" CssClass="anasayfaLabel" Width="74px"></asp:TextBox>

                        </td>
                        <td style="width: 132px">

                            <asp:Button ID="Button1" runat="server" Text="Ara" OnClick="cariKod_Click" ClientIDMode="Static" Width="70px" CssClass="anasayfaLabel" />
                        </td>
                        <td style="width: 132px">

                            <asp:Button ID="Button13" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="cariKodSatislar_Click" />
                        </td>
                        <td style="width: 132px">

                            <asp:Button ID="Button24" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="cariKoduCariYilSatislar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; vertical-align: bottom; height: 29px;">

                            <asp:Label runat="server" CssClass="anasayfaLabel" Width="100px">Cari unvanı</asp:Label>
                        </td>
                        <td style="width: 99px; height: 29px;">
                            <asp:TextBox runat="server" ID="cariUnvan" CssClass="anasayfaLabel" Width="75px"></asp:TextBox>

                        </td>
                        <td style="width: 132px; height: 29px;">

                            <asp:Button ID="Button2" runat="server" Text="Ara" OnClick="cariUnvan_Click" Width="70px" CssClass="anasayfaLabel" />

                        </td>
                        <td style="width: 132px; height: 29px;">

                            <asp:Button ID="Button14" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="cariUnvanSatislar_Click" />

                        </td>
                        <td style="width: 132px; height: 29px;">

                            <asp:Button ID="Button25" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="cariUnvanıCariYilSatislar_Click" />

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; vertical-align: bottom">
                            <asp:Label ID="Label2" runat="server" Text="Bölge"></asp:Label>
                        </td>
                        <td style="width: 99px">
                            <asp:DropDownList ID="cariBolge" runat="server" CssClass="anasayfaLabel" DataSourceID="SqlDataSource1" DataTextField="CYPHCODE" DataValueField="CYPHCODE">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 132px">
                            <asp:Button ID="Button7" runat="server" Text="Bölgesi" CssClass="anasayfaLabel" OnClick="cariBolge_Click" Width="70px" />
                        </td>
                        <td style="width: 132px">
                            <asp:Button ID="Button15" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="bolgeSatislar_Click" />
                        </td>
                        <td style="width: 132px">
                            <asp:Button ID="Button26" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="bolgeSatislarCarilYil_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; vertical-align: bottom">
                            <asp:Label ID="Label3" runat="server" Text="Şehir"></asp:Label>
                        </td>
                        <td style="width: 99px">
                            <asp:DropDownList ID="cariSehir" runat="server" DataSourceID="SqlDataSource2" DataTextField="SEHIR" DataValueField="SEHIR" CssClass="anasayfaLabel">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 132px">
                            <asp:Button ID="Button6" runat="server" Text="Şehri" CssClass="anasayfaLabel" OnClick="cariSehir_Click" Width="70px" />
                        </td>
                        <td style="width: 132px">
                            <asp:Button ID="Button16" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="sehirSatislar_Click" />
                        </td>
                        <td style="width: 132px">
                            <asp:Button ID="Button27" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="sehirSatislarCariYil_Click" />
                        </td>
                    </tr>
                </table>




            </div>

            <div class="image" style="text-align: right">
                &nbsp;<img alt="" src="Content/customers.jpg" style="width: 141px; height: 130px" />
            </div>
        </div>
    
    
        <div id="stockReportsLink" style="-webkit-border-radius: 30px; -moz-border-radius: 30px; border-radius: 30px; border: thin solid #9ab849; margin-bottom: 10px; width: 70%; padding: 20px; height: 300px">
            <div class="home-page-link-text" style="float: left; width: 579px; height: 127%;">

                <a href="stockList.aspx">
                    <asp:Label runat="server">Stok raporları</asp:Label>
                </a>
                <br />
                <table cellpadding="0" cellspacing="0" style="width: 539px; padding: 2PX">
                    <tr>
                        <td style="vertical-align: bottom">
                            <asp:Label runat="server" CssClass="anasayfaLabel" Width="100px">Stok kodu</asp:Label></td>
                        <td style="vertical-align: bottom; width: 78px;">
                            <asp:TextBox runat="server" ID="stokKodu" CssClass="anasayfaLabel" Width="75px"></asp:TextBox>
                        </td>
                        <td style="vertical-align: bottom">
                            <asp:Button ID="Button3" runat="server" Text="Ara" OnClick="stokKodu_Click" Width="70px" CssClass="anasayfaLabel" />
                        </td>
                        <td style="vertical-align: bottom">
                            <asp:Button ID="Button17" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="stokKoduSatislar_Click" />
                        </td>
                        <td style="vertical-align: bottom">
                            <asp:Button ID="Button30" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="stokKoduCariYilSatislar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: bottom">

                            <asp:Label runat="server" CssClass="anasayfaLabel" Width="100px">Stok açıklaması</asp:Label></td>
                        <td style="width: 78px">
                            <asp:TextBox runat="server" ID="stokAdi" CssClass="anasayfaLabel" Width="76px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button4" runat="server" Text="Ara" OnClick="stokAdi_Click" Width="70px" CssClass="anasayfaLabel" />
                        </td>
                        <td>
                            <asp:Button ID="Button18" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="stokAdiSatislar_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button31" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="stokAdiCariYilSatislar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: bottom">
                            <asp:Label ID="Label1" runat="server" Text="SBU" CssClass="anasayfaLabel"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="stokSBU" runat="server" DataSourceID="SqlDataSource3" DataTextField="SBU_Bez_ENG" DataValueField="SBU_Bez_ENG" CssClass="anasayfaLabel" OnSelectedIndexChanged="stokSBU_SelectedIndexChanged" OnDataBinding="stokSBU_DataBinding">
                            </asp:DropDownList>

                        </td>
                        <td>
                            <asp:Button ID="Button8" runat="server" Text=" olanlar" CssClass="anasayfaLabel" OnClick="stokSBU_Click" Width="70px" />
                        </td>
                        <td>
                            <asp:Button ID="Button19" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="sbuSatislar_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button32" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="sbuCariYilSatislar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: bottom">SE</td>
                        <td>
                            <asp:DropDownList ID="stokSe" runat="server" CssClass="anasayfaLabel" DataSourceID="SqlDataSource4" DataTextField="SE_Bez_ENG" DataValueField="SE" OnDataBound="stokSe_DataBound">
                            </asp:DropDownList>

                        </td>
                        <td>
                            <asp:Button ID="Button9" runat="server" Text=" olanlar" CssClass="anasayfaLabel" OnClick="stokSe_Click" Width="70px" />
                        </td>
                        <td>
                            <asp:Button ID="Button20" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="seSatislar_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button33" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="seCariYilSatislar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: bottom">SBS_B</td>
                        <td>
                            <asp:DropDownList ID="stokSBS_B" runat="server" CssClass="anasayfaLabel" DataSourceID="SqlDataSource5" DataTextField="SBS_B_Bez_ENG" DataValueField="SBS_B">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="Button10" runat="server" Text=" olanlar" CssClass="anasayfaLabel" OnClick="sbs_B_Click" Width="70px" />
                        </td>
                        <td>
                            <asp:Button ID="Button21" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="sbsbSatislar_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button34" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="sbsbCariYilSatislar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: bottom">SBS_C</td>
                        <td>
                            <asp:DropDownList ID="stokSBS_C" runat="server" CssClass="anasayfaLabel" DataSourceID="SqlDataSource6" DataTextField="SBS_C_Bez_ENG" DataValueField="SBS_C">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="Button11" runat="server" Text=" olanlar" CssClass="anasayfaLabel" OnClick="sbs_c_Click" Width="70px" />
                        </td>
                        <td>
                            <asp:Button ID="Button22" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="sbscSatislar_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button35" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="sbscCariYilSatislar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: bottom">
                            <asp:Label ID="Label4" runat="server" Text="Referans No" CssClass="anasayfaLabel"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="refNo" runat="server" CssClass="anasayfaLabel" DataSourceID="SqlDataSource7" DataTextField="Kenz_2005" DataValueField="Kenz_2005">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="Button12" runat="server" Text=" olanlar" CssClass="anasayfaLabel" OnClick="refNo_Click" Width="70px" />
                        </td>
                        <td>
                            <asp:Button ID="Button23" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="refNoSatislar_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button36" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="refNoCariYilSatislar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: bottom">
                            <asp:Label ID="Label5" runat="server" Text="Referans No" CssClass="anasayfaLabel"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="refNoAra" runat="server" CssClass="anasayfaLabel"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button28" runat="server" Text="Ara" CssClass="anasayfaLabel" OnClick="Button28_Click" Width="70px" />
                        </td>
                        <td>
                            <asp:Button ID="Button29" runat="server" Text="Satışlar" CssClass="anasayfaLabel" OnClick="Button29_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button37" runat="server" Text="2017" CssClass="anasayfaLabel" OnClick="refNoAraCariYilSatislar_Click" />
                        </td>
                    </tr>
                </table>
                <br />

            </div>
            <div class="image" style="text-align: right">
                <img alt="" src="Content/inventory.jpg" style="width: 134px; height: 130px" />
            </div>

        </div>

        <div id="invoiceReportsLink" style="padding: 5px; -webkit-border-radius: 30px; -moz-border-radius: 30px; border-radius: 30px; border: thin solid #67aaba; width: 70%; padding: 20px; height:227px">
            
            <div class="image" style="text-align: right">
               
            <div class="home-page-link-text" style="float: left; width: 511px; height: 188px; text-align:left">
                
                <a href="invoiceList.aspx">
                    <asp:Label runat="server">Fatura raporları</asp:Label>
                </a>
                <br />

                 <a href="#">
                <asp:Label runat="server">2017 Özet</asp:Label>
                     </a>
                <br />
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" PagerStyle-CssClass="gv-pager" FooterStyle-CssClass="gv-footer" SelectedRowStyle-CssClass="gv-selected"  Width="80%" ShowFooter="True" OnDataBound="GridView1_DataBound">
                    <Columns>
                                               <asp:BoundField DataField="FATURA_TURU" HeaderText="FATURA_TURU" SortExpression="FATURA_TURU" >
            </asp:BoundField>
            <asp:BoundField DataField="TUTAR" HeaderText="TUTAR" ReadOnly="True" SortExpression="TUTAR" DataFormatString={0:N2} ItemStyle-HorizontalAlign="Right" >
            </asp:BoundField>
                    </Columns>

<FooterStyle CssClass="gv-footer" HorizontalAlign="Right"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>
                </asp:GridView>
            </div >
                <img alt="" src="Content/invoices.jpg" style="width: 136px; height: 130px" />
            </div>
        </div>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT(CH_YETKI_KODU) AS CYPHCODE FROM LNX_STD_6_017_01_SLSINVOICES
UNION
SELECT DISTINCT(BOLGE) AS CYPHCODE FROM SATISLAR_T"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT(CH_SEHIR) AS SEHIR FROM LNX_STD_6_017_01_SLSINVOICES
UNION
SELECT DISTINCT(SEHIR) AS SEHIR FROM SATISLAR_T"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT( SBU_Bez_ENG)
FROM PS16
WHERE SBU_Bez_ENG= CASE WHEN  @sbu IS NULL THEN SBU_Bez_ENG ELSE @sbu END">
            <SelectParameters>
                <asp:SessionParameter Name="sbu" SessionField="sbu" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT(SE),SE_Bez_ENG FROM LG_017_ITEMS JOIN PS16 
ON CODE=Material
 WHERE ACTIVE=0 AND EXPCTGNO&lt;&gt;'Demirbaş'  AND SBU_Bez_ENG=CASE WHEN  @sbu IS NULL THEN SBU_Bez_ENG ELSE @sbu END ORDER BY SE">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="SBU_Bez_ENG" Name="sbu" SessionField="sbu" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT(SBS_B),SBS_B_Bez_ENG FROM LG_017_ITEMS JOIN PS16 
ON CODE=Material
 WHERE ACTIVE=0 AND EXPCTGNO&lt;&gt;'Demirbaş' AND SBU_Bez_ENG=CASE WHEN  @sbu IS NULL THEN SBU_Bez_ENG ELSE @sbu END ORDER BY SBS_B">
            <SelectParameters>
                <asp:SessionParameter Name="sbu" SessionField="sbu" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT(SBS_C),SBS_C_Bez_ENG FROM LG_017_ITEMS JOIN PS16 
ON CODE=Material
 WHERE ACTIVE=0 AND EXPCTGNO&lt;&gt;'Demirbaş' AND SBU_Bez_ENG=CASE WHEN  @sbu IS NULL THEN SBU_Bez_ENG ELSE @sbu END  ORDER BY SBS_C">
            <SelectParameters>
                <asp:SessionParameter Name="sbu" SessionField="sbu" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT(Kenz_2005),KZ_2005_Bez_ENGL FROM LG_017_ITEMS JOIN PS16 
ON CODE=Material
 WHERE ACTIVE=0 AND EXPCTGNO&lt;&gt;'Demirbaş' AND SBU_Bez_ENG=CASE WHEN  @sbu IS NULL THEN SBU_Bez_ENG ELSE @sbu END ORDER BY Kenz_2005">
            <SelectParameters>
                <asp:SessionParameter Name="sbu" SessionField="sbu" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT FATURA_TURU, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE  MALZEME_OZEL_KODU NOT IN ('DİĞER GLR','A-NAKLIYE')   
 
GROUP BY FATURA_TURU
"></asp:SqlDataSource>
    </div>

</asp:Content>
