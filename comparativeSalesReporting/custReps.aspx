<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custReps.aspx.cs" Inherits="comparativeSalesReporting.custReps" MasterPageFile="~/Site.Master"%>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

      <br />
         <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">


              <LayoutTemplate>
                    <table>
                        <tr>

                            <td style="width: 350px; font-size: larger; font-family: 'OBO Office Serif'">Satış Temsilcisi
                            </td>
                            <td style="width: 150px; font-size: larger; font-family: 'OBO Office Serif'">Özel Kodu
                            </td>
                             <td style="width: 150px; font-size: larger; font-family: 'OBO Office Serif'">Toplam Ciro
                            </td>
                          
                        </tr>
                        <tr runat="server" id="itemPlaceholder">
                        </tr>
                    </table>

                </LayoutTemplate>


             <ItemTemplate >

                   <table border="0">
                        <tr>

                            <td style="width: 350px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                                <asp:Label ID="kod" runat="server"><a href="custRepDetails.aspx?slsName=<%# Eval("DEFINITION_")%>"><%# Eval("DEFINITION_") %></a></asp:Label></td>
                            <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                                <asp:Label ID="unvan" runat="server"><%# Eval("SPECODE") %></asp:Label></td>
                        </tr>
                    </table>
             </ItemTemplate>
             <AlternatingItemTemplate>

                  <table border="0">
                        <tr>
                            <td style="width: 350px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                                <asp:Label ID="kod" runat="server"><a href="custRepDetails.aspx?slsName=<%# Eval("DEFINITION_")%>"><%# Eval("DEFINITION_") %></a></asp:Label></td>
                            <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                                <asp:Label ID="unvan" runat="server"><%# Eval("SPECODE") %></asp:Label></td>
                         
                        </tr>
             </AlternatingItemTemplate>

    </asp:ListView>
    <br />
    <br />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand=" SELECT DEFINITION_,SPECODE FROM LG_SLSMAN  WHERE ACTIVE=0 AND FIRMNR=-1"></asp:SqlDataSource>

</asp:Content>
