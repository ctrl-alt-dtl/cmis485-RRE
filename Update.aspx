<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Select.aspx.cs" Inherits="Select" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>UPDATE Tables</title>
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
    <asp:SqlDataSource ID="saleDataSource" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient"  
        SelectCommand="SELECT * FROM &quot;SALE&quot; ORDER BY &quot;SALEID&quot;" 
            DeleteCommand="DELETE FROM &quot;SALE&quot; WHERE &quot;SALEID&quot; = :SALEID" 
            InsertCommand="INSERT INTO &quot;SALE&quot; (&quot;SALEID&quot;, &quot;CUSTOMERID&quot;, &quot;SALE_DATE&quot;, &quot;HOMEID&quot;, &quot;CONTRACTID&quot;, &quot;ACTUAL_AMOUNT&quot;, &quot;AGENTID&quot;) VALUES (:SALEID, :CUSTOMERID, :SALE_DATE, :HOMEID, :CONTRACTID, :ACTUAL_AMOUNT, :AGENTID)" 
            UpdateCommand="UPDATE &quot;SALE&quot; SET &quot;CUSTOMERID&quot; = :CUSTOMERID, &quot;SALE_DATE&quot; = :SALE_DATE, &quot;HOMEID&quot; = :HOMEID, &quot;CONTRACTID&quot; = :CONTRACTID, &quot;ACTUAL_AMOUNT&quot; = :ACTUAL_AMOUNT, &quot;AGENTID&quot; = :AGENTID WHERE &quot;SALEID&quot; = :SALEID">
        <DeleteParameters>
            <asp:Parameter Name="SALEID" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SALEID" Type="Decimal" />
            <asp:Parameter Name="CUSTOMERID" Type="Decimal" />
            <asp:Parameter Name="SALE_DATE" Type="DateTime" />
            <asp:Parameter Name="HOMEID" Type="Decimal" />
            <asp:Parameter Name="CONTRACTID" Type="Decimal" />
            <asp:Parameter Name="ACTUAL_AMOUNT" Type="Decimal" />
            <asp:Parameter Name="AGENTID" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CUSTOMERID" Type="Int64" />
            <asp:Parameter Name="SALE_DATE" Type="DateTime" />
            <asp:Parameter Name="HOMEID" Type="Int64" />
            <asp:Parameter Name="CONTRACTID" Type="Int64" />
            <asp:Parameter Name="ACTUAL_AMOUNT" Type="Decimal" />
            <asp:Parameter Name="AGENTID" Type="Int64" />
            <asp:Parameter Name="SALEID" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SALEID" DataSourceID="saleDataSource"  
        style="margin-bottom: 0px" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="1400px" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="SALEID" HeaderText="SALE ID" ReadOnly="True" 
                SortExpression="SALEID" ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMER ID" 
                SortExpression="CUSTOMERID" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="SALE_DATE" HeaderText="SALE DATE" 
                SortExpression="SALE_DATE" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="HOMEID" HeaderText="HOME ID" 
                SortExpression="HOMEID" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CONTRACTID" HeaderText="CONTRACT ID" 
                SortExpression="CONTRACTID" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ACTUAL_AMOUNT" HeaderText="ACTUAL AMOUNT" 
                SortExpression="ACTUAL_AMOUNT" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:c}">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="AGENTID" HeaderText="AGENT ID" 
                SortExpression="AGENTID" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>  <br />

    Home Table:
    <asp:SqlDataSource ID="homeDataSource" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient" 
        SelectCommand="SELECT * FROM &quot;HOME&quot; ORDER BY &quot;HOMEID&quot;" 
            DeleteCommand="DELETE FROM &quot;HOME&quot; WHERE &quot;HOMEID&quot; = :HOMEID" 
            InsertCommand="INSERT INTO &quot;HOME&quot; (&quot;HOMEID&quot;, &quot;LOT_SIZE&quot;, &quot;LOCATION&quot;, &quot;MODELID&quot;, &quot;PURCHASE_PRICE&quot;, &quot;STREET_ADDRESS&quot;, &quot;CITY&quot;, &quot;STATE_ABB&quot;, &quot;ZIPCODE&quot;) VALUES (:HOMEID, :LOT_SIZE, :LOCATION, :MODELID, :PURCHASE_PRICE, :STREET_ADDRESS, :CITY, :STATE_ABB, :ZIPCODE)" 
            UpdateCommand="UPDATE &quot;HOME&quot; SET &quot;LOT_SIZE&quot; = :LOT_SIZE, &quot;LOCATION&quot; = :LOCATION, &quot;MODELID&quot; = :MODELID, &quot;PURCHASE_PRICE&quot; = :PURCHASE_PRICE, &quot;STREET_ADDRESS&quot; = :STREET_ADDRESS, &quot;CITY&quot; = :CITY, &quot;STATE_ABB&quot; = :STATE_ABB, &quot;ZIPCODE&quot; = :ZIPCODE WHERE &quot;HOMEID&quot; = :HOMEID">
        <DeleteParameters>
            <asp:Parameter Name="HOMEID" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HOMEID" Type="Int64" />
            <asp:Parameter Name="LOT_SIZE" Type="Int64" />
            <asp:Parameter Name="LOCATION" Type="Int64" />
            <asp:Parameter Name="MODELID" Type="Int64" />
            <asp:Parameter Name="PURCHASE_PRICE" Type="Decimal" />
            <asp:Parameter Name="STREET_ADDRESS" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STATE_ABB" Type="String" />
            <asp:Parameter Name="ZIPCODE" Type="Int64" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LOT_SIZE" Type="Int64" />
            <asp:Parameter Name="LOCATION" Type="String" />
            <asp:Parameter Name="MODELID" Type="Int64" />
            <asp:Parameter Name="PURCHASE_PRICE" Type="Decimal" />
            <asp:Parameter Name="STREET_ADDRESS" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STATE_ABB" Type="String" />
            <asp:Parameter Name="ZIPCODE" Type="Int64" />
            <asp:Parameter Name="HOMEID" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="HOMEID" DataSourceID="homeDataSource"  
        style="margin-bottom: 0px; margin-top: 0px;" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="1400px" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="HOMEID" HeaderText="HOME ID" ReadOnly="True" 
                SortExpression="HOMEID" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="LOT_SIZE" HeaderText="LOT SIZE" 
                SortExpression="LOT_SIZE" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="LOCATION" HeaderText="LOCATION" 
                SortExpression="LOCATION" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="MODELID" HeaderText="MODEL ID" 
                SortExpression="MODELID" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="PURCHASE_PRICE" HeaderText="PURCHASE PRICE" 
                SortExpression="PURCHASE_PRICE" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:c}"/>
            <asp:BoundField DataField="STREET_ADDRESS" HeaderText="STREET ADDRESS" 
                SortExpression="STREET_ADDRESS" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CITY" HeaderText="CITY" 
                SortExpression="CITY" ReadOnly="False" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="STATE_ABB" HeaderText="STATE ABBR" 
            SortExpression="STATE_ABB" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="ZIPCODE" HeaderText="ZIPCODE" 
                SortExpression="ZIPCODE" ReadOnly="False" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>  <br />

    Customer Table:
    <asp:SqlDataSource ID="customerDataSource" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient" 
            SelectCommand="SELECT * FROM &quot;CUSTOMER&quot; ORDER BY &quot;CUSTOMERID&quot;" 
            DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID" 
            InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUSTOMERID&quot;, &quot;LAST_NAME&quot;, &quot;FIRST_NAME&quot;, &quot;MIDDLE_INITAL&quot;, &quot;CELL_PHONE&quot;, &quot;HOME_PHONE&quot;, &quot;STREET_ADDRESS&quot;, &quot;CITY&quot;, &quot;STATE_ABB&quot;, &quot;ZIPCODE&quot;, &quot;PROFESSION&quot;, &quot;EMPLOYER&quot;, &quot;AGENTID&quot;, &quot;DOB&quot;, &quot;REFERRER&quot;) VALUES (:CUSTOMERID, :LAST_NAME, :FIRST_NAME, :MIDDLE_INITAL, :CELL_PHONE, :HOME_PHONE, :STREET_ADDRESS, :CITY, :STATE_ABB, :ZIPCODE, :PROFESSION, :EMPLOYER, :AGENTID, :DOB, :REFERRER)" 
            UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;LAST_NAME&quot; = :LAST_NAME, &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;MIDDLE_INITAL&quot; = :MIDDLE_INITAL, &quot;CELL_PHONE&quot; = :CELL_PHONE, &quot;HOME_PHONE&quot; = :HOME_PHONE, &quot;STREET_ADDRESS&quot; = :STREET_ADDRESS, &quot;CITY&quot; = :CITY, &quot;STATE_ABB&quot; = :STATE_ABB, &quot;ZIPCODE&quot; = :ZIPCODE, &quot;PROFESSION&quot; = :PROFESSION, &quot;EMPLOYER&quot; = :EMPLOYER, &quot;AGENTID&quot; = :AGENTID, &quot;DOB&quot; = :DOB, &quot;REFERRER&quot; = :REFERRER WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID">
        <DeleteParameters>
            <asp:Parameter Name="CUSTOMERID" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CUSTOMERID" Type="Int64" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="MIDDLE_INITAL" Type="String" />
            <asp:Parameter Name="CELL_PHONE" Type="Int64" />
            <asp:Parameter Name="HOME_PHONE" Type="Int64" />
            <asp:Parameter Name="STREET_ADDRESS" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STATE_ABB" Type="String" />
            <asp:Parameter Name="ZIPCODE" Type="Int64" />
            <asp:Parameter Name="PROFESSION" Type="String" />
            <asp:Parameter Name="EMPLOYER" Type="String" />
            <asp:Parameter Name="AGENTID" Type="Int64" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="REFERRER" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="MIDDLE_INITAL" Type="String" />
            <asp:Parameter Name="CELL_PHONE" Type="Int64" />
            <asp:Parameter Name="HOME_PHONE" Type="Int64" />
            <asp:Parameter Name="STREET_ADDRESS" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STATE_ABB" Type="String" />
            <asp:Parameter Name="ZIPCODE" Type="Int64" />
            <asp:Parameter Name="PROFESSION" Type="String" />
            <asp:Parameter Name="EMPLOYER" Type="String" />
            <asp:Parameter Name="AGENTID" Type="Int64" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="REFERRER" Type="String" />
            <asp:Parameter Name="CUSTOMERID" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CUSTOMERID" DataSourceID="customerDataSource"  
        style="margin-bottom: 0px" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="1400px" AllowSorting="True" >
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMER ID" ReadOnly="True" 
                SortExpression="CUSTOMERID" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST NAME" 
                SortExpression="LAST_NAME" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST NAME" 
                SortExpression="FIRST_NAME" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="MIDDLE_INITAL" HeaderText="MIDDLE INITAL" 
                SortExpression="MIDDLE_INITAL" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CELL_PHONE" HeaderText="CELL PHONE" 
                SortExpression="CELL_PHONE" ReadOnly="False" ItemStyle-Width="150" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:(###) ###-####}"/>
            <asp:BoundField DataField="HOME_PHONE" HeaderText="HOME PHONE" 
            SortExpression="HOME_PHONE" ReadOnly="False" ItemStyle-Width="150" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:(###) ###-####}"/>
            <asp:BoundField DataField="STREET_ADDRESS" HeaderText="STREET ADDRESS" 
                SortExpression="STREET_ADDRESS" ReadOnly="False" ItemStyle-Width="200" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CITY" HeaderText="CITY" 
                SortExpression="CITY" ReadOnly="False" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="STATE_ABB" HeaderText="STATE ABBR" 
            SortExpression="STATE_ABB" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="ZIPCODE" HeaderText="ZIPCODE" 
                SortExpression="ZIPCODE" ReadOnly="False" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="PROFESSION" HeaderText="PROFESSION" 
                SortExpression="PROFESSION" ReadOnly="False" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="EMPLOYER" HeaderText="EMPLOYER" 
                SortExpression="EMPLOYER" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="AGENTID" HeaderText="AGENT ID" 
                SortExpression="AGENTID" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="DOB" HeaderText="DOB" 
                SortExpression="DOB" ReadOnly="False" ItemStyle-HorizontalAlign="Center" 
                DataFormatString="{0:d}"/>
            <asp:BoundField DataField="REFERRER" HeaderText="REFERRER" 
                SortExpression="REFERRER" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>  <br />

    Agent Table:
    <asp:SqlDataSource ID="agentDataSource" runat="server" 
        ConnectionString="Data Source=nova;Persist Security Info=True;User ID=#######;Password=#######;Unicode=True" 
        providerName="System.Data.OracleClient"  
        SelectCommand="SELECT * FROM &quot;AGENT&quot; ORDER BY &quot;AGENTID&quot;" 
            DeleteCommand="DELETE FROM &quot;AGENT&quot; WHERE &quot;AGENTID&quot; = :AGENTID" 
            InsertCommand="INSERT INTO &quot;AGENT&quot; (&quot;AGENTID&quot;, &quot;OFFICE_PHONE&quot;, &quot;PAGER&quot;, &quot;CELL_PHONE&quot;, &quot;HOME_PHONE&quot;, &quot;HIREDATE&quot;, &quot;TITLE&quot;, &quot;LAST_NAME&quot;, &quot;FIRST_NAME&quot;, &quot;MIDDLE_INITAL&quot;) VALUES (:AGENTID, :OFFICE_PHONE, :PAGER, :CELL_PHONE, :HOME_PHONE, :HIREDATE, :TITLE, :LAST_NAME, :FIRST_NAME, :MIDDLE_INITAL)" 
            
            UpdateCommand="UPDATE &quot;AGENT&quot; SET &quot;OFFICE_PHONE&quot; = :OFFICE_PHONE, &quot;PAGER&quot; = :PAGER, &quot;CELL_PHONE&quot; = :CELL_PHONE, &quot;HOME_PHONE&quot; = :HOME_PHONE, &quot;HIREDATE&quot; = :HIREDATE, &quot;TITLE&quot; = :TITLE, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;MIDDLE_INITAL&quot; = :MIDDLE_INITAL WHERE &quot;AGENTID&quot; = :AGENTID" >
        <DeleteParameters>
            <asp:Parameter Name="AGENTID" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AGENTID" Type="Int64" />
            <asp:Parameter Name="OFFICE_PHONE" Type="Int64" />
            <asp:Parameter Name="PAGER" Type="Int64" />
            <asp:Parameter Name="CELL_PHONE" Type="Int64" />
            <asp:Parameter Name="HOME_PHONE" Type="Int64" />
            <asp:Parameter Name="HIREDATE" Type="DateTime" />
            <asp:Parameter Name="TITLE" Type="String" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="MIDDLE_INITAL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OFFICE_PHONE" Type="Int64" />
            <asp:Parameter Name="PAGER" Type="Int64" />
            <asp:Parameter Name="CELL_PHONE" Type="Int64" />
            <asp:Parameter Name="HOME_PHONE" Type="Int64" />
            <asp:Parameter Name="HIREDATE" Type="DateTime" />
            <asp:Parameter Name="TITLE" Type="String" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="MIDDLE_INITAL" Type="String" />
            <asp:Parameter Name="AGENTID" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="AGENTID" DataSourceID="agentDataSource"  
        style="margin-bottom: 0px" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Horizontal" Width="1400px" AllowSorting="True" >
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="AGENTID" HeaderText="AGENTID" ReadOnly="True" 
                SortExpression="AGENTID" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="OFFICE_PHONE" HeaderText="OFFICE PHONE" 
                SortExpression="OFFICE_PHONE" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:(###) ###-####}">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="PAGER" HeaderText="PAGER" 
                SortExpression="PAGER" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:(###) ###-####}">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="CELL_PHONE" HeaderText="CELL PHONE" 
                SortExpression="CELL_PHONE" ReadOnly="False" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:(###) ###-####}">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="HOME_PHONE" HeaderText="HOME PHONE" 
                SortExpression="HOME_PHONE" ReadOnly="False" ItemStyle-Width="150" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:(###) ###-####}">
<ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="HIREDATE" HeaderText="HIREDATE" 
            SortExpression="HIREDATE" ReadOnly="False" ItemStyle-Width="150" 
                ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}">
<ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="TITLE" HeaderText="TITLE" 
                SortExpression="TITLE" ReadOnly="False" ItemStyle-Width="150" 
                ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST NAME" 
                SortExpression="LAST_NAME" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST NAME" 
                SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="MIDDLE_INITAL" HeaderText="MIDDLE INITAL" 
                SortExpression="MIDDLE_INITAL" />
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
