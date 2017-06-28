<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regionList.aspx.cs" Inherits="comparativeSalesReporting.regionList" MasterPageFile="~/Site.Master" EnableEventValidation="false" %>



<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Aynı sayfayı OBM için aç!" />

    <br />

    <asp:Label ID="Label3" runat="server" Text="Inter Company satışlar "></asp:Label>


    &nbsp;&nbsp;


    <asp:Button ID="Button3" runat="server" Text="Dahil" Height="25px" Width="53px" BorderColor="#33CC33" BorderWidth="3px" OnClick="Button3_Click" />

    &nbsp;&nbsp;

    <asp:Button ID="Button4" runat="server" Text="Hariç" Height="25px" Width="53px" BorderColor="Red" BorderWidth="3px" OnClick="Button4_Click" />

    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="BOLGE" CssClass="standard-gridview" Width="100%" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnDataBinding="GridView1_DataBinding" OnDataBound="GridView1_DataBound" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected" AllowSorting="True">


        <Columns>

            <asp:CommandField ShowSelectButton="True" />

            <asp:TemplateField HeaderText="BOLGE" SortExpression="BOLGE">
                <EditItemTemplate>
                   <a href="regionList.aspx?cariBolge=<%# Eval("BOLGE") %>">   <asp:Label ID="Label1" runat="server" Text='<%# Bind("BOLGE") %>'></asp:Label></a>
                </EditItemTemplate>
                <ItemTemplate>
                     <a href="regionList.aspx?cariBolge=<%# Eval("BOLGE") %>">   <asp:Label ID="Label1" runat="server" Text='<%# Bind("BOLGE") %>'></asp:Label></a>
                </ItemTemplate>
                <HeaderStyle ForeColor="White" />
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="008" HeaderText="2008" SortExpression="008" DataFormatString="{0:N2}" ReadOnly="True">
            <HeaderStyle ForeColor="White" />
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="009" HeaderText="2009" SortExpression="009" DataFormatString="{0:N2}" ReadOnly="True" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="010" DataFormatString="{0:N2}" HeaderText="2010" ReadOnly="True" SortExpression="010" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="011" DataFormatString="{0:N2}" HeaderText="2011" ReadOnly="True" SortExpression="011" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="012" DataFormatString="{0:N2}" HeaderText="2012" ReadOnly="True" SortExpression="012" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="013" DataFormatString="{0:N2}" HeaderText="2013" ReadOnly="True" SortExpression="013" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="014" DataFormatString="{0:N2}" HeaderText="2014" ReadOnly="True" SortExpression="014" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="015" DataFormatString="{0:N2}" HeaderText="2015" ReadOnly="True" SortExpression="015" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="016" DataFormatString="{0:N2}" HeaderText="2016" ReadOnly="True" SortExpression="016" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="017" DataFormatString="{0:N2}" HeaderText="2017" ReadOnly="True" SortExpression="017" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="TOPLAM">
                <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>
        </Columns>
        <EmptyDataRowStyle BorderColor="#A1BE63" />
        <EmptyDataTemplate>
            
        </EmptyDataTemplate>


<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>


    </asp:GridView>
    <br />
    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%" DataKeyNames="SEHIR" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnDataBound="GridView2_DataBound" ShowFooter="True" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected" AllowSorting="True">
         <Columns>
             <asp:CommandField ShowSelectButton="True" />
             <asp:TemplateField HeaderText="SEHIR" SortExpression="SEHIR">
                 <EditItemTemplate>
                  <a href="regionList.aspx?cariSehir=<%# Eval("SEHIR") %>">   <asp:Label ID="Label1" runat="server" Text='<%# Eval("SEHIR") %>'></asp:Label></a>
                 </EditItemTemplate>
                 <ItemTemplate>
                 <a href="regionList.aspx?cariSehir=<%# Eval("SEHIR") %>">     <asp:Label ID="Label1" runat="server" Text='<%# Bind("SEHIR") %>'></asp:Label> </a>
                 </ItemTemplate>
                 <HeaderStyle ForeColor="White" />
                 <ItemStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:BoundField DataField="BOLGE" HeaderText="BOLGE" ReadOnly="True" SortExpression="BOLGE" ><HeaderStyle ForeColor="White" /> <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
             <asp:BoundField DataField="008" HeaderText="2008" ReadOnly="True" SortExpression="008" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="009" HeaderText="2009" ReadOnly="True" SortExpression="009" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="010" HeaderText="2010" ReadOnly="True" SortExpression="010" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="011" HeaderText="2011" ReadOnly="True" SortExpression="011" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="012" HeaderText="2012" ReadOnly="True" SortExpression="012" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="013" HeaderText="2013" ReadOnly="True" SortExpression="013" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="014" HeaderText="2014" ReadOnly="True" SortExpression="014" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="015" HeaderText="2015" ReadOnly="True" SortExpression="015" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="016" HeaderText="2016" ReadOnly="True" SortExpression="016" DataFormatString="{0:N2}" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:BoundField DataField="017" DataFormatString="{0:N2}" HeaderText="2017" ReadOnly="True" SortExpression="017" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:TemplateField HeaderText="TOPLAM">
                 <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
             </asp:TemplateField>
         </Columns>

<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>

    </asp:GridView>
            <br />
    
    
    
    <asp:GridView ID="GridView3" DataKeyNames="CH_KODU" runat="server" DataSourceID="SqlDataSource3" CssClass="standard-gridview"  AutoGenerateColumns="False" style="font-size: small" Width="100%" AllowSorting="True" OnDataBound="GridView3_DataBound" ShowFooter="True" RowStyle-CssClass="gv-row" HeaderStyle-CssClass="gv-header" FooterStyle-CssClass="gv-footer" PagerStyle-CssClass="gv-pager" SelectedRowStyle-CssClass="gv-selected">

        
         <Columns>
             <asp:BoundField DataField="CH_KODU" HeaderText="CH_KODU" SortExpression="CH_KODU" Visible="False" />
             <asp:TemplateField>
                 <ItemTemplate>
                     <asp:CheckBox ID="CheckBox1" runat="server" />
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="KOD" SortExpression="CH_KODU">
                 <EditItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("CH_KODU") %>'></asp:Label>
                 </EditItemTemplate>
                 <ItemTemplate>
                   <a href="customerDetails.aspx?cId=<%# Eval("CH_KODU")  %>"> <asp:Label ID="Label1" runat="server" Text='<%# Bind("CH_KODU") %>'></asp:Label></a>
                  
                 </ItemTemplate>
                 <ItemStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:BoundField DataField="CH_UNVAN" HeaderText="UNVAN" SortExpression="CH_UNVAN"><HeaderStyle ForeColor="White" />
             <ItemStyle HorizontalAlign="Left" />
             </asp:BoundField>
             <asp:TemplateField HeaderText="SEHIR" SortExpression="SEHIR">
                 <EditItemTemplate>
                    <a href="regionList.aspx?cariSehir=<%# Eval("SEHIR")  %>">     <asp:Label ID="Label2" runat="server" Text='<%# Eval("SEHIR") %>'></asp:Label><a />
                 </EditItemTemplate>
                 <ItemTemplate>
                  <a href="regionList.aspx?cariSehir=<%# Eval("SEHIR")  %>">   <asp:Label ID="Label2" runat="server" Text='<%# Bind("SEHIR") %>'></asp:Label><a />
                 </ItemTemplate>
                 <HeaderStyle ForeColor="White" />
                 <ItemStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:BoundField DataField="008" DataFormatString="{0:N2}" HeaderText="2008" ReadOnly="True" SortExpression="008" ><HeaderStyle ForeColor="White" /> <ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="009" DataFormatString="{0:N2}" HeaderText="2009" ReadOnly="True" SortExpression="009" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="010" DataFormatString="{0:N2}" HeaderText="2010" ReadOnly="True" SortExpression="010" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="011" DataFormatString="{0:N2}" HeaderText="2011" ReadOnly="True" SortExpression="011" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="012" DataFormatString="{0:N2}" HeaderText="2012" ReadOnly="True" SortExpression="012" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="013" DataFormatString="{0:N2}" HeaderText="2013" ReadOnly="True" SortExpression="013" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="014" DataFormatString="{0:N2}" HeaderText="2014" ReadOnly="True" SortExpression="014" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="015" DataFormatString="{0:N2}" HeaderText="2015" ReadOnly="True" SortExpression="015" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="016" DataFormatString="{0:N2}" HeaderText="2016" ReadOnly="True" SortExpression="016" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="017" DataFormatString="{0:N2}" HeaderText="2017" ReadOnly="True" SortExpression="017" ><HeaderStyle ForeColor="White" /><ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
             <asp:TemplateField HeaderText="TOPLAM" >
                 <ItemTemplate>
                 <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
                     <asp:Label ID="sortToplam" runat="server"></asp:Label>
                 </ItemTemplate>
                 <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
             </asp:TemplateField>
         </Columns>

<FooterStyle CssClass="gv-footer"></FooterStyle>

<HeaderStyle CssClass="gv-header"></HeaderStyle>

<PagerStyle CssClass="gv-pager"></PagerStyle>

<RowStyle CssClass="gv-row"></RowStyle>

<SelectedRowStyle CssClass="gv-selected"></SelectedRowStyle>

    </asp:GridView>
   
    <br />

    <asp:Button ID="Button1" runat="server" Text="Seçilenleri Filtrele" Visible="False" OnClick="Button1_Click" Width="142px" />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Excel'e Gönder" OnClick="Button2_Click" Width="140px" Visible="False" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,BOLGE,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE DAHIL=0 AND BOLGE=BOLGE  GROUP BY Firma,BOLGE UNION SELECT Firma,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR'   AND CH_YETKI_KODU=CH_YETKI_KODU GROUP BY CH_YETKI_KODU, Firma) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt
" OnSelecting="SqlDataSource1_Selecting">

       


    </asp:SqlDataSource>
    
    
    
    
    
    
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SEHIR,SUM(KDV_MATRAHI) AS TUTAR,BOLGE from SATISLAR_T WHERE BOLGE=@cBolge AND DAHIL=0 GROUP BY Firma,SEHIR,BOLGE UNION SELECT Firma,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR,
CH_YETKI_KODU AS BOLGE  
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_YETKI_KODU=@cBolge AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="cBolge" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CH_KODU,CH_UNVAN,Firma,SEHIR,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE SEHIR=@cSehir AND BOLGE=@cBolge AND DAHIL=0 GROUP BY CH_KODU,CH_UNVAN,Firma,SEHIR
UNION SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,Firma,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR=@cSehir AND CH_YETKI_KODU=@cBolge AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:Parameter Name="cSehir" />
            <asp:Parameter Name="cBolge" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SEHIR,BOLGE,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE SEHIR=@cSehir AND BOLGE=@cBolge AND DAHIL=0 GROUP BY Firma,SEHIR,BOLGE 
UNION 
SELECT Firma,CH_SEHIR AS SEHIR,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)AS TUTAR  
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR=@cSehir AND CH_YETKI_KODU=@cBolge AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
        <SelectParameters>
            <asp:Parameter Name="cSehir" Type="String" />
            <asp:Parameter Name="cBolge" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CH_KODU,CH_UNVAN,Firma,SEHIR,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE CH_KODU LIKE '%' + @cId + '%'  AND DAHIL= 0GROUP BY CH_KODU,CH_UNVAN,Firma,SEHIR

UNION SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,Firma,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CARI_HESAP_KODU LIKE '%' + @cId + '%'  AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
                <SelectParameters>
                    <asp:QueryStringParameter Name="cId" QueryStringField="cariKod" />
                </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CH_KODU,CH_UNVAN,Firma,SEHIR,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE CH_UNVAN LIKE '%' + @cariUnvan + '%'  AND DAHIL=0 GROUP BY CH_KODU,CH_UNVAN,Firma,SEHIR

UNION SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,Firma,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE CARI_HESAP_UNVANI LIKE '%' + @cariUnvan + '%'  AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt">
                <SelectParameters>
                    <asp:QueryStringParameter Name="cariUnvan" QueryStringField="cariUnvan" />
                </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="
SELECT * FROM (SELECT CH_KODU, CH_UNVAN, Firma, SEHIR,SUM(KDV_MATRAHI) AS  TUTAR from SATISLAR_T 
WHERE SEHIR= @cSehir AND DAHIL=0 GROUP BY CH_KODU, CH_UNVAN, Firma, SEHIR
UNION 
SELECT CARI_HESAP_KODU, CARI_HESAP_UNVANI, Firma, CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR   
 FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_SEHIR =@cSehir AND MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR'
 GROUP BY CH_YETKI_KODU, Firma, CH_SEHIR, CARI_HESAP_KODU, CARI_HESAP_UNVANI) AS BOLGE  
 PIVOT(SUM(TUTAR)    FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt">
        <SelectParameters>
            <asp:QueryStringParameter Name="cSehir" QueryStringField="cariSehir" />
        </SelectParameters>
    </asp:SqlDataSource>
    
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,BOLGE,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE DAHIL=0 AND TARIH &gt; @tarih1  AND TARIH &lt; @tarih2

GROUP BY Firma,BOLGE UNION SELECT Firma,CH_YETKI_KODU AS BOLGE, SUM(KDV_MATRAHI)  AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR' AND TARIH &gt; @tarih1  AND TARIH &lt; @tarih2  GROUP BY CH_YETKI_KODU, Firma) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
     
    
)AS pvt">
                <SelectParameters>
                    <asp:QueryStringParameter DbType="String" Name="tarih1" QueryStringField="tarih1" />
                    <asp:QueryStringParameter DbType="String" Name="tarih2" QueryStringField="tarih2" />
                </SelectParameters>
    </asp:SqlDataSource>
    
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT Firma,SEHIR,SUM(KDV_MATRAHI) AS TUTAR,BOLGE from SATISLAR_T WHERE BOLGE=@cBolge AND DAHIL=0 AND TARIH &gt; @tarih1  AND TARIH &lt; @tarih2   GROUP BY Firma,SEHIR,BOLGE UNION SELECT Firma,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR,CH_YETKI_KODU AS BOLGE FROM LNX_STD_6_017_01_SLSINVOICES WHERE CH_YETKI_KODU = @cBolge AND MALZEME_OZEL_KODU&lt;&gt; 'DİĞER GLR' AND TARIH &gt; @tarih1  AND TARIH &lt; @tarih2 GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR) AS BOLGE  PIVOT(SUM(TUTAR) FOR Firma IN([008],[009],[010],[011], [012], [013], [014],[015],[016],[017]))AS pvt">
                <SelectParameters>
                    <asp:QueryStringParameter Name="cBolge" QueryStringField="cariBolge" />
                    <asp:QueryStringParameter Name="tarih1" QueryStringField="tarih1" />
                    <asp:QueryStringParameter Name="tarih2" QueryStringField="tarih2" />
                </SelectParameters>
    </asp:SqlDataSource>
    
            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:OB_GK2V3ConnectionString %>" SelectCommand="SELECT * FROM (SELECT CH_KODU,CH_UNVAN,Firma,SEHIR,SUM(KDV_MATRAHI) AS TUTAR from SATISLAR_T WHERE  DAHIL=0   GROUP BY CH_KODU,CH_UNVAN,Firma,SEHIR
UNION SELECT CARI_HESAP_KODU,CARI_HESAP_UNVANI,Firma,CH_SEHIR AS SEHIR, SUM(KDV_MATRAHI)AS TUTAR
FROM LNX_STD_6_017_01_SLSINVOICES WHERE  MALZEME_OZEL_KODU&lt;&gt;'DİĞER GLR'  GROUP BY CH_YETKI_KODU, Firma,CH_SEHIR,CARI_HESAP_KODU,CARI_HESAP_UNVANI) AS BOLGE
  PIVOT
(
SUM(TUTAR)
    FOR Firma IN ([008] ,[009] ,[010] ,[011], [012], [013], [014] ,[015],[016],[017])
)AS pvt" OnSelecting="SqlDataSource10_Selecting">
    </asp:SqlDataSource>
    
            <br />
    <br />


    </asp:Content>


