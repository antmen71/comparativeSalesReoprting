<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reklamasyonFormu.aspx.cs" Inherits="comparativeSalesReporting.reklamasyonFormu" MasterPageFile="~/Site.Master"%>

<asp:content runat="server" ContentPlaceHolderID="MainContent">

    <div class="main" style="width: 1351px">

        <asp:Label ID="Label13" runat="server" Font-Size="X-Large" Text="SERVİS &amp; REKLAMASYON FORMU"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT CODE FROM LG_017_ITEMS WHERE CARDTYPE=1 AND ACTIVE=0"></asp:SqlDataSource>
        <br />

    <asp:Label ID="Label1" runat="server" Text="Reklamasyon Takip no:"></asp:Label>
&nbsp;
    <asp:Label ID="Label5" runat="server" Text="R- 1500" Width="150px"></asp:Label>
&nbsp;
    <div style="width: 488px"><asp:Label ID="Label2" runat="server" Text="Reklamasyon Giriş Tarihi: "></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server" Text=""></asp:Label></div>
    <br />
        <table class="nav-justified" style="width: 1351px">
            <tr>
                <td style="width: 337px">
    <asp:Label ID="Label4" runat="server" Text="Firma Adı: "></asp:Label>
                </td>
                <td>
    <asp:TextBox ID="TextBox3" runat="server" Width="800px" Height="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 337px">
                    <asp:Label ID="Label7" runat="server" Text="Tel -Faks No: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="800px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 337px">
                    <asp:Label ID="Label8" runat="server" Text="İlgili Kişi: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="35px" Width="800px"></asp:TextBox>
                </td>
            </tr>
            </table>
        <p>
        </p>
        <asp:Panel ID="Panel1" runat="server" > 
            
            <table ID="productInfo">
                <tr>
                    
                    <td style="Width:350px"><asp:Label runat="server" ID="lblUrunKodu" Font-Bold="true">Ürün kodu </asp:Label>
                        <asp:DropDownList ID="drpUrunKodu" runat="server" Width="200px" DataSourceID="SqlDataSource1" DataTextField="CODE"></asp:DropDownList>
                    </td>
                    
                    <td style="Width:350px"><asp:Label runat="server" ID="lblSeriNo" Font-Bold="true">Seri No </asp:Label>
                        <asp:TextBox ID="txtSeriNo" runat="server" Width="200px"></asp:TextBox>
                    </td>
                   
                    <td style="Width:350px"> <asp:Label runat="server" ID="lblFatura" Font-Bold="True">Fatura No</asp:Label>
                        <asp:TextBox ID="txtFatura" runat="server" Width="200px"></asp:TextBox>
                    </td>

                     <td style="Width:350px">
                         <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Fatura Tarihi"></asp:Label>
                    </td>

                     <td style="Width:152px"> <asp:Button ID="Button" runat="server" Text="Ürün Ekle" OnClick="Button1_Click1" />
                    </td>


                </tr>
                <tr>
                    <td style="Width:350px">&nbsp;</td>
                    <td style="Width:350px">&nbsp;</td>
                    <td style="Width:350px;" class="text-center">
                        &nbsp;</td>
                    <td class="text-center" style="Width:350px;">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                    <td style="Width:152px">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>

     
        
    &nbsp;&nbsp;&nbsp;
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" RowStyle-CssClass="gv-row" AlternatingRowStyle-CssClass="gv-row" Width="100%" OnRowDeleting="GridView1_RowDeleting">
<AlternatingRowStyle CssClass="gv-row"></AlternatingRowStyle>
             <Columns>
                 <asp:BoundField DataField="urun_kodu" HeaderText="Ürün Kodu" />
                 <asp:BoundField DataField="seri_no" HeaderText="Seri No" />
                 <asp:BoundField DataField="fatura_no" HeaderText="Fatura No" />
                 <asp:BoundField DataField="fatura_tarihi" HeaderText="Fatura Tarihi" />
                 <asp:CommandField ShowDeleteButton="True" AccessibleHeaderText="btnSil"   />
                 <asp:CommandField ShowEditButton="True" AccessibleHeaderText="btnEdit" />
             </Columns>

<RowStyle CssClass="gv-row"></RowStyle>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:reklamasyon_webConnectionString %>" SelectCommand="SELECT * FROM urunler"></asp:SqlDataSource>
    <br />
  
&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click2" />
        <br />
&nbsp;<br />
        <br />
        </div>


</asp:content>