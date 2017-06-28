<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="invoiceDetails.aspx.cs" Inherits="comparativeSalesReporting.invoiceDetails" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="bodyContent">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,TARIH, FATURA_NO, FATURA_TURU, SUM(KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES WHERE FATURA_TURU=@fTuru AND CARI_HESAP_KODU=@cKodu GROUP BY CARI_HESAP_KODU,TARIH,FATURA_NO,CARI_HESAP_UNVANI, FATURA_TURU">
        <SelectParameters>
            <asp:QueryStringParameter Name="fTuru" QueryStringField="fTuru" />
            <asp:QueryStringParameter Name="cKodu" QueryStringField="cKodu" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div class="mainContent" style="width: 100%; height: auto">
        <div class="listView" style="width: 50%; float: left; height: 436px;">
  
          <asp:LinkButton runat="server" OnClick="href_click">  <asp:Label ID="cKodu" runat="server" Font-Names="OBO Sans Serif" Font-Size="Larger" Font-Bold="true"></asp:Label></asp:LinkButton>
      
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="FATURA_NO" DataMember="DefaultView" EnablePersistedSelection="True">

            <LayoutTemplate>
                <table>
                    <tr>

                        <td style="width: 150px; font-size: larger; font-family: 'OBO Office Serif'">Fatura No
                        </td>
                        <td style="width: 200px; font-size: larger; font-family: 'OBO Office Serif'">Tarih
                        </td>

                        <td style="width: 150px; font-size: larger; font-family: 'OBO Office Serif'; text-align: right">Tutar
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
   <asp:LinkButton ID="SelectButton" runat="server" Text='<%# Eval("FATURA_NO") %>' CommandName="Select" PostBackUrl='<%#String.Format("invoiceDetails.aspx?fNo={0}&fTuru={1}&cKodu={2}&cUnvan={3}", Eval("FATURA_NO"), Eval("FATURA_TURU"), Eval("CARI_HESAP_KODU"), Eval("CARI_HESAP_UNVANI"))%>'></asp:LinkButton></td>
                        <td style="width: 200px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                            <asp:Label ID="unvan" runat="server"><%# Eval("TARIH") %></asp:Label></td>

                        <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'; text-align: right">
                            <%#   string.Format("{0:N2}", Eval("Tutar"))  %></td>

                     
                    </tr>

                </table>

            </ItemTemplate>

             <AlternatingItemTemplate>
                <table border="0">
                    <tr>
                      
                        <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
   <asp:LinkButton ID="SelectButton" runat="server" Text='<%# Eval("FATURA_NO") %>' CommandName="Select" PostBackUrl='<%#String.Format("invoiceDetails.aspx?fNo={0}&fTuru={1}&cKodu={2}&cUnvan={3}", Eval("FATURA_NO"), Eval("FATURA_TURU"), Eval("CARI_HESAP_KODU"), Eval("CARI_HESAP_UNVANI"))%>'><%# Eval("FATURA_NO") %></asp:LinkButton>
                        <td style="width: 200px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                            <asp:Label ID="unvan" runat="server"><%# Eval("TARIH") %></asp:Label></td>

                        <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'; text-align: right;">
                            <%# string.Format("{0:N2}", Eval("Tutar")) %></td>
                    </tr>

                </table>

            </AlternatingItemTemplate>

            <SelectedItemTemplate>
                <table border="0">
                                      

                      
                        <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color:red; font-family: 'OBO Office Sans'">
   <asp:LinkButton ID="SelectButton" runat="server" Text='<%# Eval("FATURA_NO") %>' CommandName="Select" PostBackUrl='<%#String.Format("invoiceDetails.aspx?fNo={0}&fTuru={1}&cKodu={2}&cUnvan={3}", Eval("FATURA_NO"), Eval("FATURA_TURU"), Eval("CARI_HESAP_KODU"), Eval("CARI_HESAP_UNVANI"))%>'><%# Eval("FATURA_NO") %></asp:LinkButton>
                        <td style="width: 200px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: red; font-family: 'OBO Office Sans'">
                            <asp:Label ID="unvan" runat="server"><%# Eval("TARIH") %></asp:Label>
                        <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: red; font-family: 'OBO Office Sans'; text-align: right">
                            <%#string.Format("{0:N2}", Eval("Tutar"))  %>
              
                </table>

            </SelectedItemTemplate>

        </asp:ListView>
  </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ShowFooter="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnDataBound="GridView1_DataBound">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="STOK_KODU" SortExpression="STOK_KODU">
                    <EditItemTemplate>
                      <a href="stockDetails.aspx?sId="<%# Eval("STOK_KODU") %>">  <asp:Label ID="Label1" runat="server" Text='<%# Eval("STOK_KODU") %>'></asp:Label></a>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <a href="stockDetails.aspx?sId=<%# Eval("STOK_KODU") %>">    <asp:Label ID="Label1" runat="server" Text='<%# Bind("STOK_KODU") %>'></asp:Label></a>
                    </ItemTemplate>
                    <ItemStyle Font-Size="Small" Width="150px" />
                    
                </asp:TemplateField>
                <asp:BoundField DataField="STOK_ADI" HeaderText="STOK_ADI" ReadOnly="True" SortExpression="STOK_ADI">
                    <ItemStyle Width="250px" Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="NET_MIKTAR" HeaderText="MIKTAR" ReadOnly="True" SortExpression="NET_MIKTAR" DataFormatString="{0:N0}">
                    <ItemStyle Width="50px" Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="TUTAR" HeaderText="TUTAR" ReadOnly="True" SortExpression="TUTAR" DataFormatString="{0:N2}">
                    <ItemStyle Width="50px" Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="INDIRIM" HeaderText="INDIRIM" ReadOnly="True" SortExpression="INDIRIM" DataFormatString="{0:N2}">
                    <ItemStyle Width="50px" Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="KDV_MATRAHI" HeaderText="NET TUTAR" ReadOnly="True" SortExpression="KDV_MATRAHI" DataFormatString="{0:N2}">
                    <ItemStyle Width="50px" Font-Size="Small"/>

                </asp:BoundField>
                <asp:BoundField DataField="KDV" HeaderText="KDV" ReadOnly="True" SortExpression="KDV" DataFormatString="{0:N2}" />
                <asp:TemplateField HeaderText="URUN GRUBU" SortExpression="SU">
                    <EditItemTemplate>
                       <a href="sbuDetails.aspx?sbuId=<%# Eval("SU") %>">   <asp:Label ID="Label2" runat="server" Text='<%# Eval("SU") %>'></asp:Label></a>
                    </EditItemTemplate>
                    <ItemTemplate>
                       <a href="sbuDetails.aspx?sbuId=<%# Eval("SU") %>">  <asp:Label ID="Label2" runat="server" Text='<%# Bind("SU") %>'></asp:Label></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#cccccc" ForeColor="Black" Font-Bold="true" />
            <HeaderStyle BackColor="#67aaba" Font-Bold="True" ForeColor="White" Font-Names="OBO Office Serif" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" Font-Names="OBO Office Sans" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"   />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT STOK_KODU, STOK_ADI,NET_MIKTAR,TUTAR,INDIRIM,KDV,KDV_MATRAHI,SU FROM LNX_STD_6_017_01_SLSINVOICES WHERE FATURA_NO=@fNo">
            <SelectParameters>
                <asp:QueryStringParameter Name="fNo" QueryStringField="fNo" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
   
</asp:Content>

