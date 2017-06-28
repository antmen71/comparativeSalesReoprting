<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="customerDetails.aspx.cs" Inherits="comparativeSalesReporting.customerDetails" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div id="body" style="width:100%">




<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="735px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <EditRowStyle BackColor="#999999" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="CODE" HeaderText="Müşteri Kodu" SortExpression="CODE"  />
        <asp:BoundField DataField="DEFINITION_" HeaderText="Müşteri Açıklaması" SortExpression="DEFINITION_" />
       
        <asp:BoundField DataField="CYPHCODE" HeaderText="Bölge" SortExpression="CYPHCODE" />
        <asp:BoundField DataField="ADDR1" HeaderText="Adres Satırı 1" SortExpression="ADDR1" />
        <asp:BoundField DataField="ADDR2" HeaderText="Adres Satırı 1" SortExpression="ADDR2" />
        <asp:BoundField DataField="CITY" HeaderText="Şehir" SortExpression="CITY" />
        <asp:BoundField DataField="TELNRS1" HeaderText="Telefon" SortExpression="TELNRS1" />
        <asp:BoundField DataField="TELNRS2" HeaderText="Telefon" SortExpression="TELNRS2" />
        <asp:BoundField DataField="FAXNR" HeaderText="Faks" SortExpression="FAXNR" />
        <asp:BoundField DataField="INCHARGE" HeaderText="Yetkili Kişi" SortExpression="INCHARGE" />
        <asp:BoundField DataField="BAKIYE" DataFormatString="{0:N2}" HeaderText="Bakiye" ReadOnly="True" SortExpression="BAKIYE" />
    </Fields>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>




        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource8" Height="50px" Width="735px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <EditRowStyle BackColor="#999999" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="CODE" HeaderText="CODE" SortExpression="CODE" />
                <asp:BoundField DataField="DEFINITION_" HeaderText="DEFINITION_" SortExpression="DEFINITION_" />
                <asp:BoundField DataField="CYPHCODE" HeaderText="CYPHCODE" SortExpression="CYPHCODE" />
                <asp:BoundField DataField="ADDR1" HeaderText="ADDR1" SortExpression="ADDR1" />
                <asp:BoundField DataField="ADDR2" HeaderText="ADDR2" SortExpression="ADDR2" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="TELNRS1" HeaderText="TELNRS1" SortExpression="TELNRS1" />
                <asp:BoundField DataField="TELNRS2" HeaderText="TELNRS2" SortExpression="TELNRS2" />
                <asp:BoundField DataField="FAXNR" HeaderText="FAXNR" SortExpression="FAXNR" />
                <asp:BoundField DataField="INCHARGE" HeaderText="INCHARGE" SortExpression="INCHARGE" />
            </Fields>
             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT [CODE], [DEFINITION_],  [CYPHCODE], [ADDR1], [ADDR2], [CITY], [TELNRS1], [TELNRS2], [FAXNR], [INCHARGE]
 FROM [LG_017_CLCARD]  WHERE [CODE] =  @cId
  GROUP BY CODE, DEFINITION_,  CYPHCODE, ADDR1, ADDR2, CITY, TELNRS1, TELNRS2, FAXNR, INCHARGE  ">
            <SelectParameters>
                <asp:QueryStringParameter Name="cId" QueryStringField="cId" />
            </SelectParameters>
        </asp:SqlDataSource>




        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="OBO Office Serif" Font-Size="Medium" Text="YILLIK BAZDA TARİHSEL SATIŞLAR"></asp:Label>
    <br>

        <div id="yillaragoreSatis_gridview" style="float:left; width: 1157px;" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="SBU" CellPadding="4" ForeColor="#333333" BorderColor="#A3BC6B" BorderStyle="Groove" OnSelectedIndexChanged="yearlySalesInfo_SelectedIndexChanged" Width="100%" OnDataBound="GridView1_DataBound" ShowFooter="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="SBU" HeaderText="SBU" ReadOnly="True" SortExpression="SBU" >
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008"  ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}" >
<ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" />
            <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" />
            <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" />
            <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" />
            <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" />
            <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" />
            <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" />
            <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" />
                 <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" />
            <asp:TemplateField HeaderText="TOPLAM"  ItemStyle-HorizontalAlign="Right">
                <ItemStyle Font-Bold="True" />
            </asp:TemplateField>
        </Columns>
         <FooterStyle BackColor="#cccccc" ForeColor="Black" Font-Bold="true" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#67aaba" Font-Bold="True" ForeColor="White" Font-Names="OBO Office Serif"/>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Right" Font-Names="OBO Office Sans"/>
        <SelectedRowStyle BackColor="#9ab849" Font-Bold="True" ForeColor="White" HorizontalAlign="Right" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
            <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" BorderColor="#A3BC6B" BorderStyle="Groove" OnSelectedIndexChanged="yearlySalesInfo_SelectedIndexChanged" Width="100%" AllowSorting="True" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" PagerStyle-CssClass="gv-pager" FooterStyle-CssClass="gv-footer" SelectedRowStyle-CssClass="gv-selected" OnDataBound="GridView2_DataBound" ShowFooter="True" OnRowDataBound="GridView2_RowDataBound">

           <Columns>
               <asp:BoundField DataField="STOK_KODU" HeaderText="STOK_KODU" ReadOnly="True" SortExpression="STOK_KODU" >
               <ItemStyle HorizontalAlign="Left" />
               </asp:BoundField>
               <asp:BoundField DataField="STOK_ADI" HeaderText="STOK_ADI" ReadOnly="True" SortExpression="STOK_ADI" >            <ItemStyle HorizontalAlign="Left" />
               </asp:BoundField>
               <asp:BoundField DataField="008" DataFormatString="{0:N2}" HeaderText="2008" ReadOnly="True" SortExpression="008" >            <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:BoundField DataField="009" DataFormatString="{0:N2}" HeaderText="2009" ReadOnly="True" SortExpression="009" > <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:BoundField DataField="010" DataFormatString="{0:N2}" HeaderText="2010" ReadOnly="True" SortExpression="010" > <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:BoundField DataField="011" DataFormatString="{0:N2}" HeaderText="2011" ReadOnly="True" SortExpression="011" > <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:BoundField DataField="012" DataFormatString="{0:N2}" HeaderText="2012" ReadOnly="True" SortExpression="012" > <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:BoundField DataField="013" DataFormatString="{0:N2}" HeaderText="2013" ReadOnly="True" SortExpression="013" > <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:BoundField DataField="014" DataFormatString="{0:N2}" HeaderText="2014" ReadOnly="True" SortExpression="014" > <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:BoundField DataField="015" DataFormatString="{0:N2}" HeaderText="2015" ReadOnly="True" SortExpression="015"> <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:BoundField DataField="016" DataFormatString="{0:N2}" HeaderText="2016" ReadOnly="True" SortExpression="016" > <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
                <asp:BoundField DataField="017" DataFormatString="{0:N2}" HeaderText="2017" ReadOnly="True" SortExpression="017" > <ItemStyle HorizontalAlign="Right" />
               </asp:BoundField>
               <asp:TemplateField HeaderText="TOPLAM"  ItemStyle-HorizontalAlign="Right">
                   <ItemStyle Font-Bold="True" />
               </asp:TemplateField>
           </Columns>
        <AlternatingRowStyle BackColor="White" ForeColor="GrayText" HorizontalAlign="Right"  />
        <FooterStyle BackColor="#cccccc" ForeColor="Black" Font-Bold="true" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#67aaba" Font-Bold="True" ForeColor="White" Font-Names="OBO Office Serif"/>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Right" Font-Names="OBO Office Sans" BorderWidth="0px" BorderStyle="None"/>
        <SelectedRowStyle BackColor="#9ab849" Font-Bold="True" ForeColor="White" HorizontalAlign="Right" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
           
<%--<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>--%>

           
    </asp:GridView>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="OBO Office Serif" Font-Size="Medium" Text="2016 AYLIK BAZDA SATIŞLAR"></asp:Label>
            <br />

              <asp:GridView ID="GridView4" runat="server" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" PagerStyle-CssClass="gv-pager" FooterStyle-CssClass="gv-footer" SelectedRowStyle-CssClass="gv-selected" AutoGenerateColumns="False" DataSourceID="SqlDataSource4"  Width="100%" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" DataKeyNames="SBU" OnDataBound="GridView4_DataBound" ShowFooter="True">
                  <Columns>
                      <asp:CommandField ShowSelectButton="True" />
                      <asp:BoundField DataField="SBU" HeaderText="SBU" SortExpression="SBU">
                      <ItemStyle HorizontalAlign="Left" />
                      </asp:BoundField>
                      <asp:BoundField DataField="1" DataFormatString="{0:N2}" HeaderText="Ocak" ReadOnly="True" SortExpression="1" >
                      <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="2" HeaderText="Şubat" ReadOnly="True" SortExpression="2"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="3" HeaderText="Mart" ReadOnly="True" SortExpression="3"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="4" HeaderText="Nisan" ReadOnly="True" SortExpression="4"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="5" HeaderText="Mayıs" ReadOnly="True" SortExpression="5"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="6" HeaderText="Haziran" ReadOnly="True" SortExpression="6"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="7" HeaderText="Temmuz" ReadOnly="True" SortExpression="7"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="8" HeaderText="Ağustos" ReadOnly="True" SortExpression="8"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="9" HeaderText="Eylül" ReadOnly="True" SortExpression="9"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="10" HeaderText="Ekim" ReadOnly="True" SortExpression="10"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="11" HeaderText="Kasım" ReadOnly="True" SortExpression="11"  DataFormatString="{0:N2}">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="12" HeaderText="Aralık" ReadOnly="True" SortExpression="12"  DataFormatString="{0:N2}">  <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:TemplateField HeaderText="TOPLAM"  ItemStyle-HorizontalAlign="Right">
                          <ItemStyle Font-Bold="True" />
                      </asp:TemplateField>
                  </Columns>
<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle BackColor="#9AB849" ForeColor="White" HorizontalAlign="Right"></SelectedRowStyle>
            </asp:GridView>

            <br />


            <asp:GridView ID="GridView3" runat="server" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" PagerStyle-CssClass="gv-pager" FooterStyle-CssClass="gv-footer" SelectedRowStyle-CssClass="gv-selected" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" OnDataBound="GridView3_DataBound" ShowFooter="True" Width="100%">
                <Columns>
                    <asp:BoundField DataField="STOK_KODU" HeaderText="STOK_KODU" SortExpression="STOK_KODU" >
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="STOK_ADI" HeaderText="STOK_ADI" SortExpression="STOK_ADI" >
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                   <asp:BoundField DataField="1" DataFormatString="{0:N2}" HeaderText="Ocak" ReadOnly="True" SortExpression="1" >
                      <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="2" HeaderText="Şubat" ReadOnly="True" SortExpression="2" >   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="3" HeaderText="Mart" ReadOnly="True" SortExpression="3">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="4" HeaderText="Nisan" ReadOnly="True" SortExpression="4" >   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="5" HeaderText="Mayıs" ReadOnly="True" SortExpression="5" >   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="6" HeaderText="Haziran" ReadOnly="True" SortExpression="6">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="7" HeaderText="Temmuz" ReadOnly="True" SortExpression="7" >   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="8" HeaderText="Ağustos" ReadOnly="True" SortExpression="8" >   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="9" HeaderText="Eylül" ReadOnly="True" SortExpression="9" >   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="10" HeaderText="Ekim" ReadOnly="True" SortExpression="10" >   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="11" HeaderText="Kasım" ReadOnly="True" SortExpression="11">   <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="12" HeaderText="Aralık" ReadOnly="True" SortExpression="12" >  <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                    <asp:TemplateField HeaderText="TOPLAM" ItemStyle-HorizontalAlign="Right">
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

    <textarea id="TextArea1" name="S1" runat="server" style="width: 100%;height:148px"></textarea>
            <br />
            
            <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="msgKaydet_Click" />
            <br />
            <br />
           
             <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource6" OnItemCommand="Repeater1_ItemCommand" >
                 <ItemTemplate>
                     <div id="user" style="border-top-style:solid;border-bottom-style:solid;border-top-width:thick;border-bottom-width:thin;"><%# Eval("user") %> - <%# Eval("date_") %></div>
                                        
                     <div id="msg" style="border-bottom-style:solid;border-bottom-width:thick;border-bottom-color:yellowgreen"><%# Eval("msg") %> </div>
                    <asp:Button ID="Button2" runat="server" Text="Mesajı Sil" OnClick="Button2_Click" CommandArgument='<%# Eval("id") %>' CssClass="anasayfaLabel"/>
                              <br />
                 </ItemTemplate>
            </asp:Repeater>
            <br />
            <br />

           


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CH_KODU AS  CARI_HESAP_KODU,Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T 
WHERE CH_KODU=@cariKod AND DAHIL= 0 GROUP BY CH_KODU,Firma,SBU

UNION 
SELECT CARI_HESAP_KODU,Firma,EXPCTGNO AS SBU,SUM(KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE
WHERE CARI_HESAP_KODU=@cariKod AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR'
GROUP BY CARI_HESAP_KODU,Firma,EXPCTGNO )
AS SBU
PIVOT
(

SUM(TUTAR)
FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
) AS pvt
">
        <SelectParameters>
            <asp:QueryStringParameter Name="cariKod" QueryStringField="cId" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand=" SELECT [CODE], [DEFINITION_],  [CYPHCODE], [ADDR1], [ADDR2], [CITY], [TELNRS1], [TELNRS2], [FAXNR], [INCHARGE],SUM(DEBIT)-SUM(CREDIT) AS BAKIYE
 FROM [LG_017_CLCARD]  JOIN [LV_017_01_CLTOTFIL]  ON LG_017_CLCARD.LOGICALREF=CARDREF  WHERE [CODE] = @cId AND     CARDREF=LG_017_CLCARD.LOGICALREF AND TOTTYP=1 
  GROUP BY CODE, DEFINITION_,  CYPHCODE, ADDR1, ADDR2, CITY, TELNRS1, TELNRS2, FAXNR, INCHARGE  

  
" OnSelected="SqlDataSource1_Selected" OnSelecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="cId" QueryStringField="cId" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,CH_KODU,STOK_KODU,STOK_ADI,SUM(TUTAR) AS TUTAR,SBU from SATISLAR_T WHERE CH_KODU=@cariKod AND SBU=@sbuKodu AND DAHIL=0
GROUP BY Firma,CH_KODU,STOK_KODU,STOK_ADI,SBU
UNION SELECT Firma,CARI_HESAP_KODU AS CH_KODU,STOK_KODU AS KODU,STOK_ADI AS AD,KDV_MATRAHI AS TUTAR,EXPCTGNO AS SBU
FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE  WHERE CARI_HESAP_KODU=@cariKod AND EXPCTGNO=@sbuKodu AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR') AS CARI
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
UNION
SELECT * FROM (SELECT Firma,CH_KODU,STOK_KODU,STOK_ADI,SUM(NET_MIKTAR) AS MIKTAR,SBU from SATISLAR_T WHERE CH_KODU=@cariKod AND SBU=@sbuKodu AND DAHIL=0
GROUP BY Firma,CH_KODU,STOK_KODU,STOK_ADI,SBU
UNION SELECT Firma,CARI_HESAP_KODU AS CH_KODU,STOK_KODU AS KODU,STOK_ADI AS AD,NET_MIKTAR AS MIKTAR,EXPCTGNO AS SBU
FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE  WHERE CARI_HESAP_KODU=@cariKod AND EXPCTGNO=@sbuKodu AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR') AS CARI
  PIVOT
(
SUM(MIKTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt" OnSelecting="SqlDataSource3_Selecting">
        <SelectParameters>
            <asp:Parameter Name="cariKod" />
            <asp:Parameter Name="sbuKodu" />
        </SelectParameters>
    </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CARI_HESAP_KODU,MONTH(TARIH)AS AY,EXPCTGNO AS SBU,SUM(KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE
WHERE CARI_HESAP_KODU=@cariKod AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR'
GROUP BY CARI_HESAP_KODU,TARIH,EXPCTGNO )
AS CARI
PIVOT
(
SUM(TUTAR)
FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
) AS pvt">
                <SelectParameters>
                    <asp:QueryStringParameter Name="cariKod" QueryStringField="cId" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="
SELECT * FROM (SELECT MONTH(TARIH) AS AY,STOK_KODU,STOK_ADI,KDV_MATRAHI AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE  WHERE CARI_HESAP_KODU=@cariKod AND EXPCTGNO=@sbuKodu AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR') AS CARI
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt
UNION

SELECT * FROM (SELECT MONTH(TARIH) AS AY,STOK_KODU,STOK_ADI,NET_MIKTAR AS MIKTAR
FROM LNX_STD_6_017_01_SLSINVOICES JOIN LG_017_ITEMS ON STOK_KODU=CODE  WHERE CARI_HESAP_KODU=@cariKod AND EXPCTGNO=@sbuKodu AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR') AS CARI
  PIVOT
(
SUM(MIKTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
)AS pvt">
                <SelectParameters>
                    <asp:QueryStringParameter Name="cariKod" QueryStringField="cId" />
                    <asp:ControlParameter ControlID="GridView4" Name="sbuKodu" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM crmMsg WHERE custId=@cId">
                <SelectParameters>
                    <asp:QueryStringParameter Name="cId" QueryStringField="cId" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT [ACTIVE],[CODE], [DEFINITION_],  [CYPHCODE], [ADDR1], [ADDR2], [CITY], [TELNRS1], [TELNRS2], [FAXNR], [INCHARGE] FROM[LG_017_CLCARD]  WHERE[CODE] = @CODE  GROUP BY ACTIVE,CODE, DEFINITION_,  CYPHCODE, ADDR1, ADDR2, CITY, TELNRS1, TELNRS2, FAXNR, INCHARGE">
                <SelectParameters>
                    <asp:Parameter Name="CODE" />
                </SelectParameters>
            </asp:SqlDataSource>

            </div>
        <div>

            </div>
            <br />
    </div>  
            
              <br />
            <br />
  
    </asp:Content>
