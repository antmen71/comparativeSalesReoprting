<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stockDetails.aspx.cs" Inherits="comparativeSalesReporting.stockDetails" MasterPageFile="~/Site.Master"%>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">






    <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="600px" AutoGenerateRows="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="STOK KODU" SortExpression="CODE" HeaderStyle-Font-Names="OBO Office Serif" ItemStyle-Font-Names="OBO Office Sans">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CODE") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CODE") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                 <a href="sbuDetails.aspx?sId=<%# Eval("CODE") %>">     <asp:Label ID="Label6" runat="server" Text='<%# Bind("CODE") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="NAME" HeaderText="STOK ADI" SortExpression="NAME" HeaderStyle-Font-Names="OBO Office Serif" ItemStyle-Font-Names="OBO Office Sans" />
            <asp:TemplateField HeaderText="SE" HeaderStyle-Font-Names="OBO Office Serif" ItemStyle-Font-Names="OBO Office Sans">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SE") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SE") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                  <a href="sbuDetails.aspx?seId=<%# Eval("SE") %>">    <asp:Label ID="Label5" runat="server" Text='<%# Bind("SE") %>' ></asp:Label> - 

                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("SE_Bez_ENG") %>' ></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SBS_B" HeaderStyle-Font-Names="OBO Office Serif" ItemStyle-Font-Names="OBO Office Sans">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SBS_B")+ " - " + Bind("SBS_B_Bez_ENG") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SBS_B") + " - " + Bind("SBS_B_Bez_ENG")%>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <a href="sbuDetails.aspx?sbsbId=<%# Eval("SBS_B") %>">  <asp:Label ID="Label12" runat="server" Text='<%# Bind("SBS_B")%>'></asp:Label> - 
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("SBS_B_Bez_ENG")%>'></asp:Label></a>
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SBS_C" HeaderStyle-Font-Names="OBO Office Serif" ItemStyle-Font-Names="OBO Office Sans">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SBS_C") + " - " + Bind("SBS_C_Bez_ENG") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SBS_C")+ " - " + Bind("SBS_C_Bez_ENG") %>'></asp:TextBox>
                </InsertItemTemplate>
               
                <ItemTemplate>
              <a href="sbuDetails.aspx?sbscId=<%# Eval("SBS_C") %>">    <asp:Label ID="Label4" runat="server" Text='<%# Bind("SBS_C") %>'></asp:Label> - 

                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SBS_C_Bez_ENG") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="YETKİ KODU" HeaderStyle-Font-Names="OBO Office Serif" ItemStyle-Font-Names="OBO Office Sans">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CYPHCODE") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CYPHCODE") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
               <a href="sbuDetails.aspx?yetkiKoduId=<%# Eval("CYPHCODE") %>">     <asp:Label ID="Label7" runat="server" Text='<%# Bind("CYPHCODE") %>'></asp:Label> </a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="REFERANS KODU" HeaderStyle-Font-Names="OBO Office Serif" ItemStyle-Font-Names="OBO Office Sans">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Kenz_2005") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Kenz_2005") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <a href="sbuDetails.aspx?refNo=<%# Eval("Kenz_2005") %>"> <asp:Label ID="Label8" runat="server" Text='<%# Bind("Kenz_2005") %>'></asp:Label> </a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SBU" HeaderStyle-Font-Names="OBO Office Serif" ItemStyle-Font-Names="OBO Office Sans">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("SBU_Bez_ENG") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("SBU_Bez_ENG") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                   <a href="sbuDetails.aspx?sbuId=<%# Eval("SBU_Bez_ENG") %>"> <asp:Label ID="Label9" runat="server" Text='<%# Bind("SBU_Bez_ENG") %>'></asp:Label> </a>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"  />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT IT.CODE, IT.NAME,SE,SE_Bez_ENG,SBS_B,SBS_B_Bez_ENG,SBS_C,SBS_C_Bez_ENG, IT.CYPHCODE,PS16.Kenz_2005, PS16.KZ_2005_Bez_ENGL,SBU_Bez_ENG FROM LG_017_ITEMS IT JOIN PS16 ON IT.CODE=PS16.Material WHERE CODE =@sKodu">
        <SelectParameters>
            <asp:QueryStringParameter Name="sKodu" QueryStringField="sId" />
        </SelectParameters>
    </asp:SqlDataSource>


   <br>
    <br>




    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" GridLines="Vertical" BorderColor="#A3BC6B" BorderStyle="Groove" AutoGenerateColumns="False" Width="100%" OnDataBound="GridView1_DataBound" >

         <FooterStyle BackColor="#cccccc" ForeColor="Black" Font-Bold="true" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#67aaba" Font-Bold="True" ForeColor="White" Font-Names="OBO Office Serif"/>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Right" Font-Names="OBO Office Sans"/>
        <SelectedRowStyle BackColor="#9ab849" Font-Bold="True" ForeColor="White" HorizontalAlign="Right" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />


        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="KOD" HeaderText="KODU" ReadOnly="True" SortExpression="KOD" >
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="AD" HeaderText="AD" ReadOnly="True" SortExpression="AD" >
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N}"/>
            <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N}"/>
            <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N}"/>
            <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N}"/>
            <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N}"/>
            <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N}"/>
            <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N}"/>
            <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N}"/>
            <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N}"/>
                        <asp:BoundField DataField="017" HeaderText="2017" ReadOnly="True" SortExpression="017" DataFormatString="{0:N}"/>
            <asp:BoundField HeaderText="TOPLAM" >
            <ItemStyle Font-Bold="True" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#67aaba" Font-Bold="True" ForeColor="White" Font-Names="OBO Office Serif"/>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Names="OBO Office Sans" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />


    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="

SELECT * FROM (SELECT Firma,STOK_KODU AS KOD,STOK_ADI AS AD,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE STOK_KODU=@sKodu AND DAHIL=0 GROUP BY Firma,STOK_KODU,STOK_ADI
UNION SELECT Firma,STOK_KODU AS KOD,STOK_ADI AS AD, SUM(KDV_MATRAHI) AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE STOK_KODU=@sKodu AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER_GLR' GROUP BY Firma,STOK_KODU,STOK_ADI) AS STOK
 PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt

UNION

SELECT * FROM (SELECT Firma,STOK_KODU AS KOD,STOK_ADI AS AD,SUM(NET_MIKTAR) AS MIKTAR from SATISLAR_T WHERE STOK_KODU=@sKodu AND DAHIL=0 GROUP BY Firma,STOK_KODU,STOK_ADI
UNION SELECT Firma,STOK_KODU AS KOD,STOK_ADI AS AD, SUM(NET_MIKTAR) AS MIKTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE STOK_KODU=@sKodu AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER_GLR' GROUP BY Firma,STOK_KODU,STOK_ADI) AS STOK

  PIVOT
(
SUM(MIKTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="sKodu" QueryStringField="sId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT STOK_KODU,STOK_ADI,SUM(KDV_MATRAHI), SUM(NET_MIKTAR) FROM LNX_STD_6_017_01_SLSINVOICES WHERE STOK_KODU=@sId GROUP BY STOK_KODU, STOK_ADI">
        <SelectParameters>
            <asp:QueryStringParameter Name="sId" QueryStringField="sId" />
        </SelectParameters>
    </asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT SE,SE_Bez_ENG, SBS_B,SBS_B_Bez_ENG SBS_C, SBS_C_Bez_ENG,SUM(NET_MIKTAR) AS MIKTAR, SUM(KDV_MATRAHI) AS TUTAR FROM Product_structure_2016 PS16 
JOIN LNX_STD_6_017_01_SLSINVOICES SLS ON PS16.SBS_C=SLS.MALZEME_OZEL_KODU
WHERE SE=@seId GROUP BY SE,SBS_B,SBS_C,SE_Bez_ENG,SBS_B_Bez_ENG, SBS_C_Bez_ENG">
        <SelectParameters>
            <asp:QueryStringParameter Name="sId" QueryStringField="sId" />
        </SelectParameters>
    </asp:SqlDataSource>





</asp:Content>
