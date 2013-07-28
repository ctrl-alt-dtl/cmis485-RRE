<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Select.aspx.cs" Inherits="Select" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SELECT Tables</title>
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
    <div id="Div1" style="height:500px;width:700px;float:left;margin-bottom:100px;">
    <%-- Use "nova" instead of "acad" --%>
    Sales Table:
    <asp:SqlDataSource ID="selectSales" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient" 
        SelectCommand="SELECT * FROM SALE ORDER BY SALEID">
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SALEID" DataSourceID="selectSales"
        EnableModelValidation="True"  
        style="margin-bottom: 0px" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="1400px">
        <Columns>
            <asp:BoundField DataField="SALEID" HeaderText="SALE ID" ReadOnly="True" 
                SortExpression="SALEID" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMER ID" 
                SortExpression="CUSTOMERID" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="SALE_DATE" HeaderText="SALE DATE" 
                SortExpression="SALE_DATE" HtmlEncode="False" ReadOnly="True" 
                DataFormatString="{0:d}" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="HOMEID" HeaderText="HOME ID" 
                SortExpression="HOMEID" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CONTRACTID" HeaderText="CONTRACT ID" 
                SortExpression="CONTRACTID" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="ACTUAL_AMOUNT" HeaderText="ACTUAL AMOUNT" 
                SortExpression="ACTUAL_AMOUNT" ReadOnly="True" DataFormatString="{0:C}" 
                HtmlEncode="False" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="AGENTID" HeaderText="AGENT ID" 
                SortExpression="AGENTID" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>  <br />

    Home Table:
    <asp:SqlDataSource ID="selectHome" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient" 
        SelectCommand="SELECT * FROM HOME ORDER BY HOMEID">
    </asp:SqlDataSource>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="HOMEID" DataSourceID="selectHome"
        EnableModelValidation="True"  
        style="margin-bottom: 0px" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="1400px">
        <Columns>
            <asp:BoundField DataField="HOMEID" HeaderText="HOME ID" ReadOnly="True" 
                SortExpression="HOME ID" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="LOT_SIZE" HeaderText="LOT SIZE" 
                SortExpression="LOT_SIZE" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="LOCATION" HeaderText="LOCATION" 
                SortExpression="LOCATION" HtmlEncode="False" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="MODELID" HeaderText="MODEL ID" 
                SortExpression="MODELID" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="PURCHASE_PRICE" HeaderText="PURCHASE PRICE" 
                SortExpression="PRCHASE_PRICE" ReadOnly="True" DataFormatString="{0:C}" 
                HtmlEncode="False" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="STREET_ADDRESS" HeaderText="STREET ADDRESS" 
                SortExpression="STREET_ADDRESS" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CITY" HeaderText="CITY" 
                SortExpression="CITY" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="STATE_ABB" HeaderText="STATE ABBR." 
            SortExpression="STATE_ABB" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="ZIPCODE" HeaderText="ZIPCODE" 
                SortExpression="ZIPCODE" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>  <br />

    Customer Table:
    <asp:SqlDataSource ID="selectCustomer" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient" 
        SelectCommand="SELECT * FROM CUSTOMER ORDER BY CUSTOMERID">
    </asp:SqlDataSource>

    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CUSTOMERID" DataSourceID="selectCustomer"  
        style="margin-bottom: 0px" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="1400px" >
        <Columns>
            <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMER ID" ReadOnly="True" 
                SortExpression="CUSTOMER ID" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST NAME" 
                SortExpression="LAST_NAME" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST NAME" 
                SortExpression="FIRST_NAME" HtmlEncode="False" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="MIDDLE_INITAL" HeaderText="MIDDLE INITIAL" 
                SortExpression="MIDDLE_INITAL" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CELL_PHONE" HeaderText="CELL PHONE" 
                SortExpression="CELL_PHONE" ReadOnly="True" DataFormatString="{0:(###) ###-####}"
                HtmlEncode="False" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="HOME_PHONE" HeaderText="HOME PHONE" 
            SortExpression="HOME_PHONE" ReadOnly="True" DataFormatString="{0:(###) ###-####}"
            HtmlEncode="False" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="STREET_ADDRESS" HeaderText="STREET ADDRESS" 
                SortExpression="STREET_ADDRESS" ReadOnly="True" ItemStyle-Width="200" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CITY" HeaderText="CITY" 
                SortExpression="CITY" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="STATE_ABB" HeaderText="STATE ABBR." 
            SortExpression="STATE_ABB" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="ZIPCODE" HeaderText="ZIPCODE" 
                SortExpression="ZIPCODE" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="PROFESSION" HeaderText="PROFESSION" 
                SortExpression="PROFESSION" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="AGENTID" HeaderText="AGENT ID" 
                SortExpression="AGENTID" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="DOB" HeaderText="DATE OF BIRTH" 
                SortExpression="DOB" HtmlEncode="False" ReadOnly="True" 
                DataFormatString="{0:d}" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="REFERRER" HeaderText="REFERRER" 
                SortExpression="REFERRER" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>  <br />

    Agent Table:
    <asp:SqlDataSource ID="selectAgent" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient" 
        SelectCommand="SELECT * FROM AGENT ORDER BY AGENTID" >
    </asp:SqlDataSource>

    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="AGENTID" DataSourceID="selectAgent"  
        style="margin-bottom: 0px" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="1400px" >
        <Columns>
            <asp:BoundField DataField="AGENTID" HeaderText="AGENT ID" ReadOnly="True" 
                SortExpression="AGENTID" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST NAME" 
                SortExpression="LAST_NAME" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST NAME" 
                SortExpression="FIRST_NAME" HtmlEncode="False" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="MIDDLE_INITAL" HeaderText="MIDDLE INITIAL" 
                SortExpression="MIDDLE_INITAL" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CELL_PHONE" HeaderText="CELL PHONE" 
                SortExpression="CELL_PHONE" ReadOnly="True" DataFormatString="{0:(###) ###-####}"
                HtmlEncode="False" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="HOME_PHONE" HeaderText="HOME PHONE" 
            SortExpression="HOME_PHONE" ReadOnly="True" DataFormatString="{0:(###) ###-####}"
            HtmlEncode="False" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="OFFICE_PHONE" HeaderText="OFFICE PHONE" 
                SortExpression="OFFICE_PHONE" ReadOnly="True" DataFormatString="{0:(###) ###-####}" 
                HtmlEncode="False" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="PAGER" HeaderText="PAGER" 
                SortExpression="PAGER" ReadOnly="True" DataFormatString="{0:(###) ###-####}"
                HtmlEncode="False" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="HIREDATE" HeaderText="HIRE DATE" 
                SortExpression="HIREDATE" HtmlEncode="False" ReadOnly="True" 
                DataFormatString="{0:d}" ItemStyle-Width="200" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="TITLE" HeaderText="TITLE" 
                SortExpression="TITLE" ReadOnly="True" ItemStyle-HorizontalAlign="Center"/>
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
