<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userManage.aspx.cs" Inherits="comparativeSalesReporting.userManage"  MasterPageFile="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">



  <div style="float:left;padding:0px">  <asp:ListBox ID="ListBox1" runat="server" Width="226px" Height="297px" OnDataBound="ListBox1_DataBound" AutoPostBack="True" DataValueField="id" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
      </asp:ListBox>
      </div>
   <div style="float:left;width: 765px; margin-left: 25px;"> 
       <table class="nav-justified">
           <tr>
               <td style="width: 156px"> <asp:Label ID="Label1" runat="server" Text="Adı: "></asp:Label>
               </td>
               <td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 156px"> <asp:Label ID="Label2" runat="server" Text="Soyadı: "></asp:Label>
               </td>
               <td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 156px"> <asp:Label ID="Label3" runat="server" Text="Kullanıcı Adı: "></asp:Label>
               </td>
               <td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 156px"><asp:Label ID="Label4" runat="server" Text="Rol: "></asp:Label>
               </td>
               <td>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="admin">Yönetici</asp:ListItem>
        <asp:ListItem Value="manager">Müdür</asp:ListItem>
        <asp:ListItem Value="user">Kullanıcı</asp:ListItem>
    </asp:DropDownList></td>
           </tr>
           <tr>
               <td style="width: 156px">
                   <asp:Button ID="Button1" runat="server" Text="Değiştir" />
               </td>
               <td>
                   <asp:Button ID="Button2" runat="server" Text="Yeni Kullanıcı" OnClick="Button2_Click" />
               </td>
           </tr>
       </table>
       <br />
   <br /> 
   <br /> 
    <br /></div>
    <br />



</asp:Content>
