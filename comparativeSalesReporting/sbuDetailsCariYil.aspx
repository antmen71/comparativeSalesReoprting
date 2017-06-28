<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sbuDetailsCariYil.aspx.cs" Inherits="comparativeSalesReporting.sbuDetailsCariYil" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">






    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" CssClass="gridview" Width="100%" AutoGenerateColumns="False" ShowFooter="True" OnDataBound="GridView1_DataBound">
        <Columns>
            <asp:BoundField DataField="SBU" HeaderText="SBU" SortExpression="SBU" ItemStyle-HorizontalAlign="Left"></asp:BoundField>
            <asp:BoundField DataField="01" HeaderText="Ocak" ReadOnly="True" SortExpression="01" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="02" HeaderText="Şubat" ReadOnly="True" SortExpression="02" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="03" HeaderText="Mart" ReadOnly="True" SortExpression="03" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="04" HeaderText="Nisan" ReadOnly="True" SortExpression="04" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="05" HeaderText="Mayıs" ReadOnly="True" SortExpression="05" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="06" HeaderText="Haziran" ReadOnly="True" SortExpression="06" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="07" HeaderText="Temmuz" ReadOnly="True" SortExpression="07" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="08" HeaderText="Ağustos" ReadOnly="True" SortExpression="08" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="09" HeaderText="Eylül" ReadOnly="True" SortExpression="09" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="10" HeaderText="Ekim" ReadOnly="True" SortExpression="10" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="11" HeaderText="Kasım" ReadOnly="True" SortExpression="11" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
            <asp:BoundField DataField="12" HeaderText="Aralık" ReadOnly="True" SortExpression="12" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"></asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="gv-header"></HeaderStyle>

        <RowStyle CssClass="gv-row"></RowStyle>

        <FooterStyle CssClass="gv-footer" />
    </asp:GridView>


    <br />



    <asp:GridView ID="GridView2" runat="server" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" CssClass="gridview" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:TemplateField HeaderText="SE" SortExpression="SE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SE") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href="sbuDetailsCariYil.aspx?seId=<%# Eval("SE") %>">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("SE") %>'></asp:Label></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="SE_Bez_ENG" HeaderText="SE_Bez_ENG" SortExpression="SE_Bez_ENG" ItemStyle-HorizontalAlign="Left">
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="01" HeaderText="Ocak" ReadOnly="True" SortExpression="01" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="02" HeaderText="Şubat" ReadOnly="True" SortExpression="02" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="03" HeaderText="Mart" ReadOnly="True" SortExpression="03" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="04" HeaderText="Nisan" ReadOnly="True" SortExpression="04" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="05" HeaderText="Mayıs" ReadOnly="True" SortExpression="05" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="06" HeaderText="Haziran" ReadOnly="True" SortExpression="06" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="07" HeaderText="Temmuz" ReadOnly="True" SortExpression="07" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="08" HeaderText="Ağustos" ReadOnly="True" SortExpression="08" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="09" HeaderText="Eylül" ReadOnly="True" SortExpression="09" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="10" HeaderText="Ekim" ReadOnly="True" SortExpression="10" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="11" HeaderText="Kasım" ReadOnly="True" SortExpression="11" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="12" HeaderText="Aralık" ReadOnly="True" SortExpression="12" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="gv-header"></HeaderStyle>

        <RowStyle CssClass="gv-row"></RowStyle>
    </asp:GridView>


    <br />




    <asp:GridView ID="GridView3" runat="server" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" CssClass="gridview" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:TemplateField HeaderText="SBS_B" SortExpression="SBS_B">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SBS_B") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href="sbuDetailsCariYil.aspx?sbsbId=<%# Eval("SBS_B") %>">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("SBS_B") %>'></asp:Label></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="SBS_B_Bez_ENG" HeaderText="SBS_B_Bez_ENG" SortExpression="SBS_B_Bez_ENG" ItemStyle-HorizontalAlign="Left">
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="01" HeaderText="Ocak" ReadOnly="True" SortExpression="01" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="02" HeaderText="Şubat" ReadOnly="True" SortExpression="02" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="03" HeaderText="Mart" ReadOnly="True" SortExpression="03" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="04" HeaderText="Nisan" ReadOnly="True" SortExpression="04" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="05" HeaderText="Mayıs" ReadOnly="True" SortExpression="05" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="06" HeaderText="Haziran" ReadOnly="True" SortExpression="06" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="07" HeaderText="Temmuz" ReadOnly="True" SortExpression="07" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="08" HeaderText="Ağustos" ReadOnly="True" SortExpression="08" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="09" HeaderText="Eylül" ReadOnly="True" SortExpression="09" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="10" HeaderText="Ekim" ReadOnly="True" SortExpression="10" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="11" HeaderText="Kasım" ReadOnly="True" SortExpression="11" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="12" HeaderText="Aralık" ReadOnly="True" SortExpression="12" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="gv-header"></HeaderStyle>

        <RowStyle CssClass="gv-row"></RowStyle>
    </asp:GridView>


    <br />



    <asp:GridView ID="GridView4" runat="server" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" CssClass="gridview" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:TemplateField HeaderText="SBS_C" SortExpression="SBS_C">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SBS_C") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href="sbuDetailsCariYil.aspx?sbscId=<%# Eval("SBS_C") %>">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("SBS_C") %>'></asp:Label></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="SBS_C_Bez_ENG" HeaderText="SBS_C_Bez_ENG" SortExpression="SBS_C_Bez_ENG" ItemStyle-HorizontalAlign="Left">
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="01" HeaderText="Ocak" ReadOnly="True" SortExpression="01" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="02" HeaderText="Şubat" ReadOnly="True" SortExpression="02" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="03" HeaderText="Mart" ReadOnly="True" SortExpression="03" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="04" HeaderText="Nisan" ReadOnly="True" SortExpression="04" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="05" HeaderText="Mayıs" ReadOnly="True" SortExpression="05" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="06" HeaderText="Haziran" ReadOnly="True" SortExpression="06" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="07" HeaderText="Temmuz" ReadOnly="True" SortExpression="07" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="08" HeaderText="Ağustos" ReadOnly="True" SortExpression="08" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="09" HeaderText="Eylül" ReadOnly="True" SortExpression="09" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="10" HeaderText="Ekim" ReadOnly="True" SortExpression="10" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="11" HeaderText="Kasım" ReadOnly="True" SortExpression="11" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="12" HeaderText="Aralık" ReadOnly="True" SortExpression="12" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="gv-header"></HeaderStyle>

        <RowStyle CssClass="gv-row"></RowStyle>
    </asp:GridView>



    <br />


    <asp:GridView ID="GridView5" runat="server" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" CssClass="gridview" Width="100%" DataSourceID="SqlDataSource5" AutoGenerateColumns="False" Font-Size="12px">
        <Columns>
            <asp:TemplateField HeaderText="RefNo" SortExpression="RefNo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RefNo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
          <a href="sbuDetailsCariYil.aspx?refNo=<%# Eval("Refno") %>">           <asp:Label ID="Label2" runat="server" Text='<%# Bind("RefNo") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:TemplateField HeaderText="Referans No" SortExpression="RefNo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Kenz_2005") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href="sbuDetailsCariYil.aspx?refNo=<%# Eval("Kenz_2005") %>">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Kenz_2005") %>'></asp:Label></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>--%>
            <asp:BoundField DataField="RefName" HeaderText="Ref Açıklaması" SortExpression="RefName" ItemStyle-HorizontalAlign="Left">
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="OCAK M" HeaderText="Ock Miktar" SortExpression="OCAK M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"> 
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="OCAK T" HeaderText="Ock Tutar" ReadOnly="True" SortExpression="01" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="ŞUBAT M" HeaderText="Şbt Miktar" SortExpression="ŞUBAT M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="ŞUBAT T" HeaderText="Şbt Tutar" ReadOnly="True" SortExpression="02" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="MART M" HeaderText="Mar Miktar" SortExpression="MART M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="MART T" HeaderText="Mar Tutar" ReadOnly="True" SortExpression="03" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="NİSAN M" HeaderText="Nis Miktar" SortExpression="NİSAN M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="NİSAN T" HeaderText="Nis Tutar" ReadOnly="True" SortExpression="04" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="MAYIS M" HeaderText="May Miktar" SortExpression="MAYIS M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="MAYIS T" HeaderText="May Tutar" ReadOnly="True" SortExpression="05" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="HAZ M" HeaderText="Haz Miktar" SortExpression="HAZ M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="HAZ T" HeaderText="Haz Tutar" ReadOnly="True" SortExpression="06" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="TEM M" HeaderText="Tem Miktar" SortExpression="TEM M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"/>
            <asp:BoundField DataField="TEM T" HeaderText="Temmuz Tutar" ReadOnly="True" SortExpression="07" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="AĞU M" HeaderText="Ağu Miktar" SortExpression="AĞU M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField DataField="AĞU T" HeaderText="Ağu Tutar" ReadOnly="True" SortExpression="08" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="EYL M" HeaderText="Eyl Miktar" SortExpression="EYL M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"/>
            <asp:BoundField DataField="EYL T" HeaderText="Eyl Tutar" ReadOnly="True" SortExpression="09" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="EKM M" HeaderText="Ekm Miktar" SortExpression="EKM M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"/>
            <asp:BoundField DataField="EKM T" HeaderText="Ekm Tutat" ReadOnly="True" SortExpression="10" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="KAS M" HeaderText="Kas Miktar" SortExpression="KAS M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right" />
                 <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="KAS T" HeaderText="Kas Tutar" ReadOnly="True" SortExpression="11" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="ARA M" HeaderText="Ara Miktar" SortExpression="ARA M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right" />
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="ARA T" HeaderText="Ara Tutar" ReadOnly="True" SortExpression="12" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                <FooterStyle HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>

        <HeaderStyle CssClass="gv-header"></HeaderStyle>

        <RowStyle CssClass="gv-row"></RowStyle>
    </asp:GridView>



    <br />


    <asp:GridView ID="GridView6" runat="server" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" CssClass="gridview" Width="100%" DataSourceID="SqlDataSource6" AutoGenerateColumns="False" Font-Size="12px">
        <Columns>
            <asp:TemplateField HeaderText="Stok Kodu" SortExpression="Material">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Material") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href="sbuDetailsCariYil.aspx?sId=<%# Eval("Material") %>">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Material") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="STOK_ADI" HeaderText="Stok Adı" />
<asp:BoundField DataField="OCAK M" HeaderText="Ock Miktar" SortExpression="OCAK M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
</asp:BoundField>
            <asp:BoundField DataField="OCAK T" HeaderText="Ock Tutar" ReadOnly="True" SortExpression="01" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
            </asp:BoundField>
<asp:BoundField DataField="ŞUBAT M" HeaderText="Şbt Miktar" SortExpression="ŞUBAT M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
</asp:BoundField>
            <asp:BoundField DataField="ŞUBAT T" HeaderText="Şbt Tutar" ReadOnly="True" SortExpression="02" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
<asp:BoundField DataField="MART M" HeaderText="Mar Miktar" SortExpression="MART M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
</asp:BoundField>
            <asp:BoundField DataField="MART T" HeaderText="Mar Tutar" ReadOnly="True" SortExpression="03" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
            </asp:BoundField>
<asp:BoundField DataField="NİSAN M" HeaderText="Nis Miktar" SortExpression="NİSAN M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
</asp:BoundField>
            <asp:BoundField DataField="NİSAN T" HeaderText="Nis Tutar" ReadOnly="True" SortExpression="04" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
<asp:BoundField DataField="MAYIS M" HeaderText="May Miktar" SortExpression="MAYIS M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
</asp:BoundField>
            <asp:BoundField DataField="MAYIS T" HeaderText="May Tutar" ReadOnly="True" SortExpression="05" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
            </asp:BoundField>
<asp:BoundField DataField="HAZ M" HeaderText="Haz Miktar" SortExpression="HAZ M" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right">
</asp:BoundField>
            <asp:BoundField DataField="HAZ T" HeaderText="Haz Tutar" ReadOnly="True" SortExpression="06" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="TEM M" HeaderText="Tem Miktar" SortExpression="TEM M"  DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"/>
            <asp:BoundField DataField="TEM T" HeaderText="Tem Tutar" ReadOnly="True" SortExpression="07" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="AĞU M" HeaderText="Ağu Miktar" SortExpression="AĞU M"  DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"/>
            <asp:BoundField DataField="AĞU T" HeaderText="Ağu Tutar" ReadOnly="True" SortExpression="08" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="EYL M" HeaderText="Eyl Miktar" SortExpression="EYL M"  DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField DataField="EYL T" HeaderText="Eyl Tutar" ReadOnly="True" SortExpression="09" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="EKM M" HeaderText="Ekm Miktar" SortExpression="EKM M"  DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"/>
            <asp:BoundField DataField="EKM T" HeaderText="Ekm Tutar" ReadOnly="True" SortExpression="10" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="KAS M" HeaderText="Kas Miktar" SortExpression="KAS M"  DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"/>
            <asp:BoundField DataField="KAS T" HeaderText="Kas Tutar" ReadOnly="True" SortExpression="11" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="ARA M" HeaderText="Ara Miktar" SortExpression="ARA M"  DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right"/>
            <asp:BoundField DataField="ARA T" HeaderText="Ara Tutar" ReadOnly="True" SortExpression="12" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="gv-header"></HeaderStyle>

        <RowStyle CssClass="gv-row"></RowStyle>
    </asp:GridView>


    <br />




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT MONTH(TARIH)AS AY,PS16.SBU_Bez_ENG AS SBU,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU=PS16.Material 
WHERE PS16.SBU_Bez_ENG=@sbuId
 GROUP BY SLS16.Firma,PS16.SBU_Bez_ENG,TARIH) AS SBU
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([01] ,[02] ,[03] ,[04], [05], [06], [07] ,[08],[09],[10],[11],[12])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="sbuId" QueryStringField="sbuId" />
        </SelectParameters>
    </asp:SqlDataSource>






    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SE,PS16.SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SE=@seId GROUP BY SLS16.Firma,
PS16.SE,PS16.SE_Bez_ENG, TARIH) AS SBU
  PIVOT
(
SUM(TUTAR)
      FOR AY IN ([01] ,[02] ,[03] ,[04], [05], [06], [07] ,[08],[09],[10],[11],[12])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="seId" QueryStringField="seId" />
        </SelectParameters>
    </asp:SqlDataSource>






    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SBS_B,PS16.SBS_B_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SBS_B=@sbsbId GROUP BY SLS16.Firma,
PS16.SBS_B,PS16.SBS_B_Bez_ENG, TARIH) AS SBU
  PIVOT
(
SUM(TUTAR)
      FOR AY IN ([01] ,[02] ,[03] ,[04], [05], [06], [07] ,[08],[09],[10],[11],[12])
)AS pvt
">
        <SelectParameters>
            <asp:QueryStringParameter Name="sbsbId" QueryStringField="sbsbId" />
        </SelectParameters>
    </asp:SqlDataSource>






    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT MONTH(TARIH) AS AY,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE SBS_C=@sbscId GROUP BY SLS16.Firma,
PS16.SBS_C,PS16.SBS_C_Bez_ENG, TARIH) AS SBU
  PIVOT
(
SUM(TUTAR)
      FOR AY IN ([01] ,[02] ,[03] ,[04], [05], [06], [07] ,[08],[09],[10],[11],[12])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="sbscId" QueryStringField="sbscId" />
        </SelectParameters>
    </asp:SqlDataSource>






    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="WITH SALESTOTALS AS
(SELECT * FROM (SELECT MONTH(TARIH)AS AY,PS16.Kenz_2005 AS RefNo,PS16.KZ_2005_Bez_ENGL AS RefName,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU=PS16.Material 
WHERE PS16.Kenz_2005=@refNo
 GROUP BY SLS16.Firma,PS16.Kenz_2005,PS16.KZ_2005_Bez_ENGL,TARIH) AS RefNo
  PIVOT
(
SUM(TUTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
  )AS pvt 
),
SALESAMOUNT AS
(
SELECT * FROM (SELECT MONTH(TARIH)AS AY,PS16.Kenz_2005 AS RefNo,PS16.KZ_2005_Bez_ENGL AS RefName,SUM(NET_MIKTAR) AS MIKTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU=PS16.Material 
WHERE PS16.Kenz_2005=@refNo
 GROUP BY SLS16.Firma,PS16.Kenz_2005,PS16.KZ_2005_Bez_ENGL,TARIH) AS RefNo
  PIVOT
(
SUM(MIKTAR)
    FOR AY IN ([1] ,[2] ,[3] ,[4], [5], [6], [7] ,[8],[9],[10],[11],[12])
    ) AS pvt
    )
   SELECT SA.RefNo,SA.RefName,SA.[1] AS [OCAK M],ST.[1] AS [OCAK T],SA.[2] AS [ŞUBAT M],ST.[2] AS [ŞUBAT T],SA.[3] AS [MART M],ST.[3] AS [MART T],SA.[4] AS [NİSAN M],ST.[4] AS [NİSAN T],SA.[5] AS [MAYIS M],ST.[5] AS [MAYIS T],SA.[6] AS [HAZ M],ST.[6] AS [HAZ T],SA.[7] AS [TEM M],ST.[7] AS [TEM T],SA.[8] AS [AĞU M],ST.[8] AS [AĞU T],SA.[9] AS [EYL M],ST.[9] AS [EYL T],SA.[10] AS [EKM M],ST.[10] AS [EKM T],SA.[11] AS [KAS M],ST.[11] AS [KAS T],SA.[12] AS [ARA M],ST.[12] AS [ARA T]
   FROM SALESTOTALS ST 
   INNER JOIN SALESAMOUNT SA
   ON SA.RefNo=ST.RefNo">
        <SelectParameters>
            <asp:QueryStringParameter Name="refNo" QueryStringField="refNo" />
        </SelectParameters>
    </asp:SqlDataSource>






    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="WITH SALESTOTALS AS
(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material
WHERE PS16.Material = @sId GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS Material

 PIVOT
 (
SUM(TUTAR)    FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])  
)
AS pvt),

SALESAMOUNT AS 
(SELECT * FROM(SELECT MONTH(TARIH)AS AY, PS16.Material,SLS16.STOK_ADI, SUM(NET_MIKTAR) AS MIKTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Material = @sId
 GROUP BY SLS16.Firma, PS16.Material,SLS16.STOK_ADI, TARIH) AS Material 

PIVOT
(
SUM(MIKTAR)FOR AY IN([1],[2],[3],[4], [5], [6], [7],[8],[9],[10],[11],[12])
)
 AS pvt)
 SELECT 
SA.Material,SA.STOK_ADI,SA.[1] AS[OCAK M],ST.[1] AS[OCAK T],SA.[2] AS[ŞUBAT M],ST.[2] AS[ŞUBAT T],SA.[3] AS[MART M],ST.[3] AS[MART T],SA.[4] AS[NİSAN M]
 ,ST.[4] AS[NİSAN T],SA.[5] AS[MAYIS M],ST.[5] AS[MAYIS T],SA.[6] AS[HAZ M],ST.[6] AS[HAZ T],SA.[7] AS[TEM M],ST.[7] AS[TEM T],SA.[8] AS[AĞU M],ST.[8] AS[AĞU T],SA.[9] AS[EYL M]
 ,ST.[9] AS[EYL T],SA.[10] AS[EKM M],ST.[10] AS[EKM T],SA.[11] AS[KAS M],ST.[11] AS[KAS T],SA.[12] AS[ARA M],ST.[12] AS[ARA T]

 FROM SALESTOTALS ST INNER JOIN SALESAMOUNT SA  ON SA.Material = ST.Material">
        <SelectParameters>
            <asp:QueryStringParameter Name="sId" QueryStringField="sId" />
        </SelectParameters>
    </asp:SqlDataSource>






</asp:Content>
