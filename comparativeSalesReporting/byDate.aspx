<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="byDate.aspx.cs" Inherits="comparativeSalesReporting.byDate" MasterPageFile="~/Site.Master"%>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">



    <div style="height: 480px">
    <div style="float:left">
        <asp:Label ID="Label1" runat="server" Text="İlk Tarih"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Yıl"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Ay"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Gün"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="60px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="2017">2017</asp:ListItem>
            <asp:ListItem Value="2016">2016</asp:ListItem>
            <asp:ListItem Value="2015">2015</asp:ListItem>
            <asp:ListItem Value="2014">2014</asp:ListItem>
            <asp:ListItem Value="2013">2013</asp:ListItem>
            <asp:ListItem Value="2012">2012</asp:ListItem>
            <asp:ListItem Value="2011">2011</asp:ListItem>
            <asp:ListItem Value="2010">2010</asp:ListItem>
            <asp:ListItem Value="2009">2009</asp:ListItem>
            <asp:ListItem Value="2008">2008</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="73px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="01">Ocak</asp:ListItem>
            <asp:ListItem Value="02">Şubat</asp:ListItem>
            <asp:ListItem Value="03">Mart</asp:ListItem>
            <asp:ListItem Value="04">Nisan</asp:ListItem>
            <asp:ListItem Value="05">Mayıs</asp:ListItem>
            <asp:ListItem Value="06">Haziran</asp:ListItem>
            <asp:ListItem Value="07">Temmuz</asp:ListItem>
            <asp:ListItem Value="08">Ağustos</asp:ListItem>
            <asp:ListItem Value="09">Eylül</asp:ListItem>
            <asp:ListItem Value="10">Ekim</asp:ListItem>
            <asp:ListItem Value="11">Kasım</asp:ListItem>
            <asp:ListItem Value="12">Aralık</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="39px">
            <asp:ListItem Value="01">01</asp:ListItem>
<asp:ListItem Value="02">02</asp:ListItem>
<asp:ListItem Value="03">03</asp:ListItem>
<asp:ListItem Value="04">04</asp:ListItem>
<asp:ListItem Value="05">05</asp:ListItem>
<asp:ListItem Value="06">06</asp:ListItem>
<asp:ListItem Value="07">07</asp:ListItem>
<asp:ListItem Value="08">08</asp:ListItem>
<asp:ListItem Value="09">09</asp:ListItem>
<asp:ListItem Value="10">10</asp:ListItem>
<asp:ListItem Value="11">11</asp:ListItem>
<asp:ListItem Value="12">12</asp:ListItem>
<asp:ListItem Value="13">13</asp:ListItem>
<asp:ListItem Value="14">14</asp:ListItem>
<asp:ListItem Value="15">15</asp:ListItem>
<asp:ListItem Value="16">16</asp:ListItem>
<asp:ListItem Value="17">17</asp:ListItem>
<asp:ListItem Value="18">18</asp:ListItem>
<asp:ListItem Value="19">19</asp:ListItem>
<asp:ListItem Value="20">20</asp:ListItem>
<asp:ListItem Value="21">21</asp:ListItem>
<asp:ListItem Value="22">22</asp:ListItem>
<asp:ListItem Value="23">23</asp:ListItem>
<asp:ListItem Value="24">24</asp:ListItem>
<asp:ListItem Value="25">25</asp:ListItem>
<asp:ListItem Value="26">26</asp:ListItem>
<asp:ListItem Value="27">27</asp:ListItem>
<asp:ListItem Value="28">28</asp:ListItem>
<asp:ListItem Value="29">29</asp:ListItem>
<asp:ListItem Value="30">30</asp:ListItem>
<asp:ListItem Value="31">31</asp:ListItem>

        </asp:DropDownList>
        <br />

        
        
        
         <asp:Button ID="Button2" runat="server" Text="Cari hesaplara göre satışlar" Width="203px" OnClick="Button2_Click" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Ürünlere göre satışlar" />
        <asp:Label ID="Label10" runat="server" ForeColor="#CC3300" Text="&lt;-Çalışmıyor"></asp:Label>
        </div>
        <div style="width:30px;float:left"></div>
    <div style="float:left; height: 304px;">
        <asp:Label ID="Label2" runat="server" Text="Son Tarih"></asp:Label>
        <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Yıl"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Ay"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Gün"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="60px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="73px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
               <asp:ListItem Value="01">Ocak</asp:ListItem>
            <asp:ListItem Value="02">Şubat</asp:ListItem>
            <asp:ListItem Value="03">Mart</asp:ListItem>
            <asp:ListItem Value="04">Nisan</asp:ListItem>
            <asp:ListItem Value="05">Mayıs</asp:ListItem>
            <asp:ListItem Value="06">Haziran</asp:ListItem>
            <asp:ListItem Value="07">Temmuz</asp:ListItem>
            <asp:ListItem Value="08">Ağustos</asp:ListItem>
            <asp:ListItem Value="09">Eylül</asp:ListItem>
            <asp:ListItem Value="10">Ekim</asp:ListItem>
            <asp:ListItem Value="11">Kasım</asp:ListItem>
            <asp:ListItem Value="12">Aralık</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList6" runat="server" Height="16px" Width="39px">
              <asp:ListItem Value="01">01</asp:ListItem>
<asp:ListItem Value="02">02</asp:ListItem>
<asp:ListItem Value="03">03</asp:ListItem>
<asp:ListItem Value="04">04</asp:ListItem>
<asp:ListItem Value="05">05</asp:ListItem>
<asp:ListItem Value="06">06</asp:ListItem>
<asp:ListItem Value="07">07</asp:ListItem>
<asp:ListItem Value="08">08</asp:ListItem>
<asp:ListItem Value="09">09</asp:ListItem>
<asp:ListItem Value="10">10</asp:ListItem>
<asp:ListItem Value="11">11</asp:ListItem>
<asp:ListItem Value="12">12</asp:ListItem>
<asp:ListItem Value="13">13</asp:ListItem>
<asp:ListItem Value="14">14</asp:ListItem>
<asp:ListItem Value="15">15</asp:ListItem>
<asp:ListItem Value="16">16</asp:ListItem>
<asp:ListItem Value="17">17</asp:ListItem>
<asp:ListItem Value="18">18</asp:ListItem>
<asp:ListItem Value="19">19</asp:ListItem>
<asp:ListItem Value="20">20</asp:ListItem>
<asp:ListItem Value="21">21</asp:ListItem>
<asp:ListItem Value="22">22</asp:ListItem>
<asp:ListItem Value="23">23</asp:ListItem>
<asp:ListItem Value="24">24</asp:ListItem>
<asp:ListItem Value="25">25</asp:ListItem>
<asp:ListItem Value="26">26</asp:ListItem>
<asp:ListItem Value="27">27</asp:ListItem>
<asp:ListItem Value="28">28</asp:ListItem>
<asp:ListItem Value="29">29</asp:ListItem>
<asp:ListItem Value="30">30</asp:ListItem>
        </asp:DropDownList>

        <asp:Label ID="Label9" runat="server" ForeColor="#CC3300" Text="&lt;-Çalışmıyor"></asp:Label>

        </div>
       
        </div>



</asp:Content>