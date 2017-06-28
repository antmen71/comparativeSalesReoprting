<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoiceList.aspx.cs" Inherits="comparativeSalesReporting.invoiceList" MasterPageFile="~/Site.Master" %>



<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="">
                <td style="width: 250px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                    <asp:Label ID="FATURA_TURULabel" runat="server" Text='<%# Eval("FATURA_TURU") %>' />
                </td>
                <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                    <asp:Label ID="FATURA_NOLabel" runat="server" Text='<%# Eval("FATURA_NO") %>' />
                </td>
                <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans'">
                    <asp:Label ID="CARI_HESAP_KODULabel" runat="server" Text='<%# Eval("CARI_HESAP_KODU") %>' />
                </td>
                <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #67aaba; font-family: 'OBO Office Sans' ;text-align:right">
                    <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="FATURA_TURUTextBox" runat="server" Text='<%# Bind("FATURA_TURU") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FATURA_NOTextBox" runat="server" Text='<%# Bind("FATURA_NO") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CARI_HESAP_KODUTextBox" runat="server" Text='<%# Bind("CARI_HESAP_KODU") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td >
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="FATURA_TURUTextBox" runat="server" Text='<%# Bind("FATURA_TURU") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FATURA_NOTextBox" runat="server" Text='<%# Bind("FATURA_NO") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CARI_HESAP_KODUTextBox" runat="server" Text='<%# Bind("CARI_HESAP_KODU") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr >
                <td style="width: 250px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                    <asp:Label ID="FATURA_TURULabel" runat="server" Text='<%# Eval("FATURA_TURU") %>' />
                </td>
                <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                    <asp:Label ID="FATURA_NOLabel" runat="server" Text='<%# Eval("FATURA_NO") %>' />
                </td>
                <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans'">
                    <asp:Label ID="CARI_HESAP_KODULabel" runat="server" Text='<%# Eval("CARI_HESAP_KODU") %>' />
                </td>
                <td style="width: 150px; border-bottom: solid; border-bottom-width: medium; border-bottom-color: #9ab849; font-family: 'OBO Office Sans';text-align:right">
                    <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="font-family: 'OBO Office Serif';font-size: larger">
                                <th runat="server">FATURA_TURU</th>
                                <th runat="server">FATURA_NO</th>
                                <th runat="server">CARI_HESAP_KODU</th>
                                <th runat="server" style="text-align:right">TUTAR</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="FATURA_TURULabel" runat="server" Text='<%# Eval("FATURA_TURU") %>' />
                </td>
                <td>
                    <asp:Label ID="FATURA_NOLabel" runat="server" Text='<%# Eval("FATURA_NO") %>' />
                </td>
                <td>
                    <asp:Label ID="CARI_HESAP_KODULabel" runat="server" Text='<%# Eval("CARI_HESAP_KODU") %>' />
                </td>
                <td>
                    <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT FATURA_TURU,FATURA_NO,CARI_HESAP_KODU,SUM(KDV_MATRAHI) FROM LNX_STD_6_017_01_SLSINVOICES GROUP BY FATURA_TURU,FATURA_NO,CARI_HESAP_KODU"></asp:SqlDataSource>


</asp:Content>
