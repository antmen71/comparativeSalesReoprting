<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custRepDetails.aspx.cs" Inherits="comparativeSalesReporting.custRepDetails" MasterPageFile="~/Site.Master"%>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">


   <div style="padding-bottom=5px; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0; padding-bottom: 5px;"> <asp:Label ID="Label1" runat="server" Text="" Font-Names="OBO Office Sans" Font-Size="Large" Font-Bold="true" ></asp:Label></div>
    <br />

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">


         <LayoutTemplate>
                    <table>
                        <tr>

                            <td style="width: 150px; font-size: larger; font-family: 'OBO Office Serif'">CH Kodu
                            </td>
                            <td style="width: 500px; font-size: larger; font-family: 'OBO Office Serif'">CH Unvanı
                            </td>
                           
                          
                        </tr>
                        <tr runat="server" id="itemPlaceholder">
                        </tr>
                    </table>

                </LayoutTemplate>


             <ItemTemplate >

                   <table border="0">
                        <tr>

                            <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                                <asp:Label ID="kod" runat="server"><a href="customerDetails.aspx?cId=<%# Eval("CODE")%>"><%# Eval("CODE") %></a></asp:Label></td>
                            <td style="width: 500px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                                <asp:Label ID="unvan" runat="server"><%# Eval("DEFINITION_") %></asp:Label></td>
                        </tr>
                    </table>
             </ItemTemplate>
             <AlternatingItemTemplate>

                  <table border="0">
                        <tr>
                            <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                                <asp:Label ID="kod" runat="server"><a href="customerDetails.aspx?cId=<%# Eval("CODE")%>"><%# Eval("CODE") %></a></asp:Label></td>
                            <td style="width: 500px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                                <asp:Label ID="unvan" runat="server"><%# Eval("DEFINITION_") %></asp:Label></td>
                         
                        </tr>
             </AlternatingItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CLC.CODE,CLC.DEFINITION_
 FROM LG_SLSMAN SLS JOIN LG_017_SLSCLREL SLSCL ON SLS.LOGICALREF=SLSCL.SALESMANREF JOIN LG_017_CLCARD CLC ON SLSCL.CLIENTREF=CLC.LOGICALREF
 WHERE SLS.ACTIVE=0 AND SLS.FIRMNR=-1 AND SLS.DEFINITION_=@slsName">
        <SelectParameters>
            <asp:QueryStringParameter Name="slsName" QueryStringField="slsName" />
        </SelectParameters>
    </asp:SqlDataSource>





</asp:Content>

