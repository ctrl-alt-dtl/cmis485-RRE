<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default Testing Page</title>
    <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <h2>Default Testing Page</h2>
    <form id="form1" runat="server">
    <div>
    <h3>
        <asp:HyperLink ID="Select" runat="server" Text="SELECT * FROM SALE Table" NavigateUrl="~/Select.aspx"/> <br />
        <asp:HyperLink ID="Insert" runat="server" Text="INSERT INTO SALE Table" NavigateUrl="~/Insert.aspx"/> <br />
        <asp:HyperLink ID="Delete" runat="server" Text="DELETE FROM SALE Table" NavigateUrl="~/Delete.aspx"/> <br />
        <asp:HyperLink ID="Update" runat="server" Text="UPDATE SET SALE Table" NavigateUrl="~/Update.aspx"/> <br />
    </h3>
    </div>
    </form>
</body>
</html>
