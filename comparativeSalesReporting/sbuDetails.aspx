<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sbuDetails.aspx.cs" Inherits="comparativeSalesReporting.sbuDetails" MasterPageFile="~/Site.Master" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">




    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" CssClass="gridview" Width="100%" OnDataBound="GridView5_DataBound" ShowFooter="True">

        <Columns>
            <asp:TemplateField HeaderText="SBU" SortExpression="SBU">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("SBU") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                 <a href="sbuDetails.aspx?sbuId=<%# Eval("SBU") %>">   <asp:Label ID="Label1" runat="server" Text='<%# Bind("SBU") %>'></asp:Label></a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
           <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>

                            </asp:BoundField>
            <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>

                            </asp:BoundField>
            <asp:TemplateField HeaderText="TOPLAM"> <ItemStyle HorizontalAlign="Right" Font-Bold="true" /></asp:TemplateField>
        </Columns>

       
<FooterStyle CssClass="gv-footer"></FooterStyle>

       
<HeaderStyle CssClass="gv-header"></HeaderStyle>

<RowStyle CssClass="gv-row"></RowStyle>

       
    </asp:GridView>



    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="100%" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" CssClass="gridview" AutoGenerateColumns="False" OnDataBound="GridView1_DataBound"  ShowFooter="True">

                <Columns>
                    <asp:TemplateField HeaderText="SE" SortExpression="SE">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("SE") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                   <a href="sbuDetails.aspx?seId=<%# Eval("SE") %>">         <asp:Label ID="Label1" runat="server" Text='<%# Bind("SE") %>'></asp:Label></a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="SE_N" HeaderText="SE İsim" />
                     <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                     <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                </Columns>

                <EditRowStyle BackColor="#999999" />
      

<FooterStyle CssClass="gv-footer"></FooterStyle>


<HeaderStyle CssClass="gv-header"></HeaderStyle>

<RowStyle CssClass="gv-row"></RowStyle>

    </asp:GridView>


    <br />



    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" RowStyle-CssClass="gv-row" FooterStyle-CssClass="gv-footer" HeaderStyle-CssClass="gv-header" CssClass="gridview" OnDataBound="GridView2_DataBound" ShowFooter="True">
                        <Columns>
                            <asp:TemplateField HeaderText="SBS_B" SortExpression="SBS_B">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("SBS_B") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                <a href="sbuDetails.aspx?sbsbId=<%# Eval("SBS_B") %>">    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SBS_B") %>'></asp:Label></a>
                                </ItemTemplate>
                                <ItemStyle CssClass="string" HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="SBS_B_N" HeaderText="SBS_B İsim" />
                            <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                              <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                        </Columns>


<FooterStyle CssClass="gv-footer"></FooterStyle>


<HeaderStyle CssClass="gv-header"></HeaderStyle>

<RowStyle CssClass="gv-row"></RowStyle>
    </asp:GridView>
    <br />
        <asp:GridView ID="GridView3" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" RowStyle-CssClass="gv-row" FooterStyle-CssClass="gv-footer" HeaderStyle-CssClass="gv-header" CssClass="gridview" OnDataBound="GridView3_DataBound" ShowFooter="True">

             <Columns>
                 <asp:TemplateField HeaderText="SBS_C" SortExpression="SBS_C">
                     <EditItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("SBS_C") %>'></asp:Label>
                     </EditItemTemplate>
                     <ItemTemplate>
                     <a href="sbuDetails.aspx?sbscId=<%# Eval("SBS_C") %>">    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SBS_C") %>'></asp:Label></a>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="SBS_C_N" HeaderText="SBS_C İsim" />
                 <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
             </Columns>

             <EditRowStyle BackColor="#999999" />

<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<RowStyle CssClass="gv-row"></RowStyle>

    </asp:GridView>
    <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Width="100%" RowStyle-CssClass="gv-row" FooterStyle-CssClass="gv-footer" HeaderStyle-CssClass="gv-header" CssClass="gridview" OnDataBound="GridView4_DataBound" ShowFooter="True">
            <Columns>
                <asp:TemplateField HeaderText="REFERANS_KODU" SortExpression="REFERANS_KODU">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("RefNo") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                  <a href="sbuDetails.aspx?refNo=<%# Eval("RefNo") %>">      <asp:Label ID="Label1" runat="server" Text='<%# Bind("RefNo") %>'></asp:Label></a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:BoundField DataField="RefNo_N" HeaderText="Ref Açıklama" />
                <asp:BoundField  DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                   <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
            </Columns>


<FooterStyle CssClass="gv-footer"></FooterStyle>


<HeaderStyle CssClass="gv-header"></HeaderStyle>

<RowStyle CssClass="gv-row"></RowStyle>
    </asp:GridView>
        <br />

        <asp:GridView ID="GridView6" runat="server"  Width="100%" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" CssClass="gridview" FooterStyle-CssClass="gv-footer" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" ShowFooter="True">
            <Columns>
                <asp:TemplateField HeaderText="Material" SortExpression="Material">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("STOK_KODU") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                  <a href="stockDetails.aspx?sId=<%# Eval("STOK_KODU") %>">      <asp:Label ID="Label1" runat="server" Text='<%# Bind("STOK_KODU") %>'></asp:Label></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="STOK_ADI" HeaderText="STOK ADI" />
               <asp:BoundField  DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                   <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                 </asp:BoundField>
            </Columns>

<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<RowStyle CssClass="gv-row"></RowStyle>
    </asp:GridView>
        <br />




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SE,SE_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND SE=@seId 
GROUP BY SE,SE_N,Firma UNION SELECT SLS16.Firma,PS16.SE,PS16.SE_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE=@seId GROUP BY SLS16.Firma,PS16.SE,PS16.SE_Bez_ENG) AS SBU
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt" OnSelecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="seId" QueryStringField="seId" />
        </SelectParameters>
    </asp:SqlDataSource>
    



    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="
SELECT * FROM (SELECT Firma,SBS_B,SBS_B_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  
WHERE DAHIL=0 AND SE=@seId GROUP BY Firma,SBS_B,SBS_B_N UNION SELECT SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE=@seId GROUP BY SLS16.Firma,
PS16.SBS_B,PS16.SBS_B_Bez_ENG) AS SBU
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
">
        <SelectParameters>
            <asp:QueryStringParameter Name="seId" QueryStringField="seId" />
        </SelectParameters>
    </asp:SqlDataSource>




    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SBS_C,SBS_C_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T
WHERE DAHIL=0 AND SE=@seId GROUP BY Firma,SBS_C,SBS_C_N UNION SELECT SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE=@seId GROUP BY SLS16.Firma,
PS16.SBS_C,PS16.SBS_C_Bez_ENG) AS SBU
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
">
        <SelectParameters>
            <asp:QueryStringParameter Name="seId" QueryStringField="seId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="        SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(NET_MIKTAR) AS MIKTAR FROM SATISLAR_T 
WHERE DAHIL=0 AND SE=@seId  GROUP BY Firma,RefNo,RefNo_N UNION SELECT SLS16.Firma,PS16.Kenz_2005,PS16.KZ_2005_Bez_ENGL,SUM(NET_MIKTAR) AS MIKTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE=@seId GROUP BY SLS16.Firma,
PS16.Kenz_2005,PS16.KZ_2005_Bez_ENGL) AS SBU
  PIVOT
(
SUM(MIKTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
UNION
SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T 
WHERE DAHIL=0 AND SE=@seId  GROUP BY Firma,RefNo,RefNo_N UNION SELECT SLS16.Firma,PS16.Kenz_2005,PS16.KZ_2005_Bez_ENGL,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SE=@seId GROUP BY SLS16.Firma,
PS16.Kenz_2005,PS16.KZ_2005_Bez_ENGL) AS SBU
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt " OnSelecting="SqlDataSource4_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="seId" QueryStringField="seId" />
        </SelectParameters>
    </asp:SqlDataSource>
    



    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SBU,SUM(KDV_MATRAHI) AS TUTAR FROM  SATISLAR_T WHERE DAHIL=0 AND SBU=@sbuId GROUP BY Firma,SBU
UNION SELECT Firma,SU AS SBU,SUM(KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE SU=@sbuId AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR'  GROUP BY Firma,SU) AS SBU
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
">
        <SelectParameters>
            <asp:QueryStringParameter Name="sbuId" QueryStringField="sbuId" />
        </SelectParameters>
    </asp:SqlDataSource>
    



    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="
SELECT * FROM (SELECT Firma,SBS_B,SBS_B_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND SBS_B= @sbsbId  GROUP BY Firma,SBS_B,SBS_B_N  UNION SELECT SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_B= @sbsbId GROUP BY SLS16.Firma,PS16.SBS_B,PS16.SBS_B_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt">
        <SelectParameters>
            <asp:Parameter Name="sbsbId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SBS_C,SBS_C_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T WHERE DAHIL=0 AND SBS_C = @sbscId   GROUP BY  Firma,SBS_C,SBS_C_N UNION SELECT SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.SBS_C = @sbscId GROUP BY SLS16.Firma,PS16.SBS_C,PS16.SBS_C_Bez_ENG) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt">
        <SelectParameters>
            <asp:Parameter Name="sbscId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  WHERE DAHIL=0 AND  RefNO = @refNo GROUP BY Firma,RefNo,RefNo_N UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.KDV_MATRAHI) AS TUTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt UNION SELECT * FROM (SELECT Firma,RefNo,RefNo_N,SUM(NET_MIKTAR) AS MIKTAR FROM SATISLAR_T  WHERE DAHIL=0 AND  RefNO = @refNo GROUP BY Firma,RefNo,RefNo_N UNION SELECT SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL,SUM(SLS16.NET_MIKTAR) AS MIKTAR FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN PS16 ON SLS16.STOK_KODU = PS16.Material WHERE  PS16.Kenz_2005 = @refNo GROUP BY SLS16.Firma,Kenz_2005,KZ_2005_Bez_ENGL) AS SBU  PIVOT(SUM(MIKTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]) )AS pvt">
        <SelectParameters>
            <asp:Parameter Name="refNo" />
        </SelectParameters>
    </asp:SqlDataSource>
    



    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(KDV_MATRAHI) AS TUTAR FROM SATISLAR_T  
WHERE DAHIL=0 AND RefNo=@refNo  GROUP BY Firma,STOK_KODU,STOK_ADI UNION SELECT SLS16.Firma,STOK_KODU,STOK_ADI,SUM(SLS16.KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005=@refNo GROUP BY SLS16.Firma,STOK_KODU,STOK_ADI) AS SBU
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt UNION
        SELECT * FROM (SELECT Firma,STOK_KODU,STOK_ADI,SUM(NET_MIKTAR) AS MIKTAR FROM SATISLAR_T  
WHERE DAHIL=0 AND RefNo=@refNo  GROUP BY Firma,STOK_KODU,STOK_ADI UNION SELECT SLS16.Firma,STOK_KODU,STOK_ADI,SUM(NET_MIKTAR) AS MIKTAR
FROM LNX_STD_6_017_01_SLSINVOICES SLS16 JOIN  PS16 ON SLS16.STOK_KODU = PS16.Material WHERE PS16.Kenz_2005=@refNo GROUP BY SLS16.Firma,STOK_KODU,STOK_ADI) AS SBU
  PIVOT
(
SUM(MIKTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
">
        <SelectParameters>
            <asp:Parameter Name="refNo" />
        </SelectParameters>
    </asp:SqlDataSource>
    



</asp:Content>
