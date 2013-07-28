<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REPORTS</title>
    <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="menu" style="height:500px;width:200px;float:left;margin-bottom:100px;">
    <asp:HyperLink ID="Home" runat="server" Height="50px" Width="200px" ImageUrl="img/home.png" NavigateUrl="finalproject.html"></asp:HyperLink>
    <asp:HyperLink ID="SelectLink" runat="server" Height="50px" Width="200px" ImageUrl="img/select.png" NavigateUrl="Select.aspx"></asp:HyperLink>
    <asp:HyperLink ID="InsertLink" runat="server" Height="50px" Width="200px" ImageUrl="img/insert.png" NavigateUrl="Insert.aspx"></asp:HyperLink>
    <asp:HyperLink ID="DeleteLink" runat="server" Height="50px" Width="200px" ImageUrl="img/delete.png" NavigateUrl="Delete.aspx"></asp:HyperLink>
    <asp:HyperLink ID="UpdateLink" runat="server" Height="50px" Width="200px" ImageUrl="img/update.png" NavigateUrl="Update.aspx"></asp:HyperLink>
    <asp:HyperLink ID="ReportLink" runat="server" Height="50px" Width="200px" ImageUrl="img/reports.png" NavigateUrl="Reports.aspx"></asp:HyperLink>
    </div>
    <br />
    <div id="homeDiv" style="height:750px;width:175px;float:left;margin-left:20px;margin-bottom:100px;">
    <asp:SqlDataSource ID="saleDataSource" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient"  
        SelectCommand="SELECT * FROM &quot;SALE&quot;">
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="saleDataSource" style="margin-bottom: 0px" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="350px" onrowdatabound="GridView1_RowDataBound" 
            DataKeyNames="SALEID" AllowPaging="True" ShowFooter="true">
        <Columns>
            <asp:TemplateField>
            <FooterTemplate>
                    <asp:Label ID="lbltxttotal" runat="server" Text="Totals:"/>
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total Amount Sold" HeaderStyle-Width="100px">
            <ItemTemplate>
                
            </ItemTemplate>
            <FooterTemplate>
                <asp:Label ID="lblTotal" runat="server"/>
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Average Amount Sold" HeaderStyle-Width="100px">
            <ItemTemplate>
                <asp:Label ID="lblamount" runat="server" />
            </ItemTemplate>
            <FooterTemplate>
                <asp:Label ID="lblAverage" runat="server"/>
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total Homes Sold" HeaderStyle-Width="100px">
            <ItemTemplate>
                <asp:Label ID="lblamount" runat="server" />
            </ItemTemplate>
            <FooterTemplate>
                <asp:Label ID="lblHome" runat="server" />
            </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>  <br />
    </div>
  
    </form>
</body>
</html>
