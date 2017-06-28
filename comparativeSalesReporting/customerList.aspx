<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="customerList.aspx.cs" Inherits="comparativeSalesReporting.customerList" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="mainContent" style="width: 100%; height: auto; margin-left: 40px;">
        <div id="filters" style="width: 1221px; margin-bottom:20px; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #808080; padding-bottom: 15px;">
     <asp:Label ID="drpList1" Text="Cari Kodu filtreleyin" runat="server" Font-Names="OBO Sans Serif" ></asp:Label>
            :
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="CODE" DataValueField="CODE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
     &nbsp;
     <asp:Label ID="drpList2" Text="Cari Unvanı filtreleyin" runat="server" Font-Names="OBO Sans Serif"></asp:Label>

            :

            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource9" DataTextField="DEFINITION_" DataValueField="DEFINITION_" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" OnDataBound="DropDownList4_DataBound">
            </asp:DropDownList>

            &nbsp;<asp:Label ID="Label3" runat="server" Font-Names="OBO Sans Serif" Text="Bölge Filtresi:"></asp:Label>
&nbsp;
            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource7" DataTextField="CYPHCODE" DataValueField="CYPHCODE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
            </asp:DropDownList>
&nbsp;<asp:Label ID="Label4" runat="server" Font-Names="OBO Sans Serif" Text="Şehir Filtresi: "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource8" DataTextField="CITY" DataValueField="CITY" AutoPostBack="True" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
            </asp:DropDownList>

            <br />

</div>
        <div class="listView" style="width: auto; float: left">
            <asp:ListView ID="customerList1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CODE" DataMember="DefaultView" EnablePersistedSelection="True">


                <LayoutTemplate>
                    <table>
                        <tr>

                            <td style="width: 150px; font-size: larger; font-family: 'OBO Office Serif'">Müşteri Kodu
                            </td>
                            <td style="width: 500px; font-size: larger; font-family: 'OBO Office Serif'">Müşteri Unvanı
                            </td>
                          
                            <td style="width: 50px; font-size: larger; font-family: 'OBO Office Serif'">Seç
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
                                <asp:Label ID="kod" runat="server"><a href="customerDetails.aspx?cId=<%# Eval("code")%>"><%# Eval("CODE") %></a></asp:Label></td>
                            <td style="width: 500px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                                <asp:Label ID="unvan" runat="server"><%# Eval("DEFINITION_") %></asp:Label></td>
                           
                            <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                                <asp:LinkButton ID="SelectButton" runat="server" Text="Select" CommandName="Select">Özet</asp:LinkButton>

                            
                        </tr>

                    </table>

                </ItemTemplate>

                <AlternatingItemTemplate>
                    <table border="0">
                        <tr>
                            <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                                <asp:Label ID="kod" runat="server"><a href="customerDetails.aspx?cId=<%# Eval("code")%>"><%# Eval("CODE") %></a></asp:Label></td>
                            <td style="width: 500px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                                <asp:Label ID="unvan" runat="server"><%# Eval("DEFINITION_") %></asp:Label></td>
                            <%--<td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                        <asp:Label ID="Label1" runat="server"><a href="customerDetails.aspx?id=<%# Eval("code")%>">Detaylar</a></asp:Label></td>--%>
                            <td style="width: 50px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                                <asp:LinkButton ID="SelectButton" runat="server" Text="Select" CommandName="Select">Özet</asp:LinkButton>
                                <%--<asp:CheckBox runat="server" ID="select" OnCheckedChanged="customerList1_SelectedIndexChanged"  AutoPostBack="True" /></td>--%>
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
                    </table>

                </SelectedItemTemplate>

            </asp:ListView>


<br />
<br />



        </div>

        <div class="detailsView" style="float: left; height: 341px; margin-left: 15px">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" ShowFooter="True" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnDataBound="GridView1_DataBound1">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>

                    <asp:TemplateField HeaderText="Fatura">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FATURA_TURU") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <div>
                                Total:
                            </div>
                        </FooterTemplate>
                        <ItemTemplate>


                            <a href="invoiceDetails.aspx?fTuru=<%# Eval("FATURA_TURU")%>&cKodu=<%# Eval("CARI_HESAP_KODU")%>&cUnvan=<%# Eval("CARI_HESAP_UNVANI")%>">
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("FATURA_TURU") %>'></asp:Label></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Tutar" DataFormatString="{0:N}" HeaderText="Tutar">
                        <FooterStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" Wrap="False" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataRowStyle BorderColor="#A1BE63" />
                <FooterStyle BackColor="#cccccc" ForeColor="Black" Font-Bold="true" />
                <HeaderStyle BackColor="#67aaba" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />


            </asp:GridView>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, DEFINITION_ FROM LG_017_CLCARD WHERE ACTIVE=0 AND SUBSTRING(CODE,4,1)&lt;&gt;'3'  AND CODE NOT LIKE 'Z0000%'  AND CODE NOT LIKE 'ÿ' ORDER BY CODE"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" runat="server" SelectCommand="SELECT CARI_HESAP_KODU, CARI_HESAP_UNVANI, FATURA_TURU, SUM(KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES WHERE CARI_HESAP_KODU=@cKodu GROUP BY FATURA_TURU, CARI_HESAP_KODU,CARI_HESAP_UNVANI ">

            <SelectParameters>
                <asp:ControlParameter ControlID="customerList1" Name="cKodu" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, DEFINITION_ FROM LG_017_CLCARD WHERE ACTIVE = 0 AND SUBSTRING(CODE,4, 1)&lt;&gt;'3'  AND CODE NOT LIKE 'Z0000%'  AND CODE NOT LIKE 'ÿ' AND CODE LIKE '%' + @cKod + '%'  ORDER BY CODE">
            <SelectParameters>
                <asp:QueryStringParameter Name="cKod" QueryStringField="cariKod" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, DEFINITION_ FROM LG_017_CLCARD WHERE ACTIVE = 0 AND SUBSTRING(CODE,4, 1)&lt;&gt;'3'  AND CODE NOT LIKE 'Z0000%'  AND CODE NOT LIKE 'ÿ'  AND DEFINITION_ LIKE '%' +   @cUnvan + '%' ORDER BY CODE">
            <SelectParameters>
                <asp:QueryStringParameter Name="cUnvan" QueryStringField="cariUnvan" />
            </SelectParameters>
        </asp:SqlDataSource>



        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, DEFINITION_, CYPHCODE FROM LG_017_CLCARD WHERE CYPHCODE= @cBolge AND ACTIVE=0 AND SUBSTRING(CODE,4,1)&lt;&gt;'3' ORDER BY CODE">
            <SelectParameters>
                <asp:QueryStringParameter Name="cBolge" QueryStringField="cariBolge" />
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, DEFINITION_, CYPHCODE FROM LG_017_CLCARD WHERE CITY=@cSehir AND ACTIVE=0 AND SUBSTRING(CODE,4,1)&lt;&gt;'3' ORDER BY CODE">
            <SelectParameters>
                <asp:QueryStringParameter Name="cSehir" QueryStringField="cariSehir" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT(CYPHCODE) FROM LG_017_CLCARD WHERE ACTIVE=0 AND SUBSTRING(CODE,4,1)&lt;&gt;'3'  AND CODE NOT LIKE 'Z0000%'  AND CODE NOT LIKE 'ÿ' "></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT DISTINCT(CITY) FROM LG_017_CLCARD WHERE ACTIVE=0 AND SUBSTRING(CODE,4,1)&lt;&gt;'3'  AND CODE NOT LIKE 'Z0000%'  AND CODE NOT LIKE 'ÿ' "></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE, DEFINITION_ FROM LG_017_CLCARD WHERE ACTIVE=0 AND SUBSTRING(CODE,4,1)&lt;&gt;'3'  AND CODE NOT LIKE 'Z0000%'  AND CODE NOT LIKE 'ÿ' AND  DEFINITION_&lt;&gt;'' ORDER BY DEFINITION_ "></asp:SqlDataSource>
<br />
<br />

    </div>

</asp:Content>
