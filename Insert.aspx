<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="Insert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>INSERT INTO Tables</title>
    <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
<div>
<%-- Use "nova" instead of "acad" --%>
    <form id="form1" runat="server"> 
    <div id="menu" style="height:500px;width:200px;float:left;margin-bottom:100px;">
    <asp:HyperLink ID="Home" runat="server" Height="50px" Width="200px" ImageUrl="img/home.png" NavigateUrl="finalproject.html"></asp:HyperLink>
    <asp:HyperLink ID="SelectLink" runat="server" Height="50px" Width="200px" ImageUrl="img/select.png" NavigateUrl="Select.aspx"></asp:HyperLink>
    <asp:HyperLink ID="InsertLink" runat="server" Height="50px" Width="200px" ImageUrl="img/insert.png" NavigateUrl="Insert.aspx"></asp:HyperLink>
    <asp:HyperLink ID="DeleteLink" runat="server" Height="50px" Width="200px" ImageUrl="img/delete.png" NavigateUrl="Delete.aspx"></asp:HyperLink>
    <asp:HyperLink ID="UpdateLink" runat="server" Height="50px" Width="200px" ImageUrl="img/update.png" NavigateUrl="Update.aspx"></asp:HyperLink>
    <asp:HyperLink ID="ReportLink" runat="server" Height="50px" Width="200px" ImageUrl="img/reports.png" NavigateUrl="Reports.aspx"></asp:HyperLink>
    </div>

    <%-- New Code --%>
    <div id="homeDiv" style="height:750px;width:175px;float:left;margin-left:10px;margin-bottom:100px;">
    <b>Select One:</b>

    <%-- Home Insert --%>
    <asp:RadioButton ID="homeRdBtn" Text="Homes" runat="server" GroupName="insertRadio" oncheckedchanged="homeRdBtn_CheckedChanged" AutoPostBack="true"/>  <br />
    Home ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="homeIdTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="homeIdTxtBox" runat="server" Width="150px" MaxLength="9"/> <br />
    Lot Size (Acres): 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="lotSzTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="lotSzTxtBox" runat="server" Width="150px" MaxLength="2"/> <br />
    Location: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="locateTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="locateTxtBox" runat="server" Width="150px" /> <br />
    Model ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="modelIdTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="modelIdTxtBox" runat="server" Width="150px" MaxLength="10"/> <br />
    Purchase Price: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="pruchPriceTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="pruchPriceTxtBox" runat="server" Width="150px" MaxLength="19"/> <br />
    Street Address: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="stAddyTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="stAddyTxtBox" runat="server" Width="150px" /> <br />
    City: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="homeCtyTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="homeCtyTxtBox" runat="server" Width="150px" /> <br />
    State Abbreviation: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="homeStAbbrTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="homeStAbbrTxtBox" runat="server" Width="150px" MaxLength="2"/> <br />
    Zip Code: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="homeZipCodeTxtBox" ValidationGroup="homeGroup" /><br />
    <asp:TextBox ID="homeZipCodeTxtBox" runat="server" Width="150px" MaxLength="5"/> <br />
    <br />
    <asp:Button ID="homeBtnSubmit" runat="server" Text="Submit" OnClick="HomeBtnClick" ValidationGroup="homeGroup" Enabled="false"/> <br />
    <p style="font-weight: bold" ID="Result" runat="server"></p>
    </div>
    
    <%-- Customer Insert --%>
    <div id="custDiv" style="height:750px;width:175px;float:left;margin-left:10px;margin-bottom:100px;">
    <asp:RadioButton ID="custRdBtn" Text="Customer" runat="server" GroupName="insertRadio" oncheckedchanged="custRdBtn_CheckedChanged" AutoPostBack="true"/> <br />
    Customer ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="custIdTxtBox" ValidationGroup="customerGroup" /><br />
    <asp:TextBox ID="custIdTxtBox" runat="server" Width="150px" /> <br />
    Last Name: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="custLastNameTxtBox" ValidationGroup="customerGroup" /><br />
    <asp:TextBox ID="custLastNameTxtBox" runat="server" Width="150px" /> <br />
    First Name: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="custFirstNameTxtBox" ValidationGroup="customerGroup" /><br />
    <asp:TextBox ID="custFirstNameTxtBox" runat="server" Width="150px" /> <br />
    Middle Initial: <br />
    <asp:TextBox ID="custMidInitTxtBox" runat="server" Width="150px" /> <br />
    Cell Phone: <br />
    <asp:TextBox ID="custCellPhTxtBox" runat="server" Width="150px" /> <br />
    Home Phone: <br />
    <asp:TextBox ID="custHomePhTxtBox" runat="server" Width="150px"/> <br />
    Street Address: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="custStAddyTxtBox" ValidationGroup="customerGroup" /><br />
    <asp:TextBox ID="custStAddyTxtBox" runat="server" Width="150px" /> <br />
    City: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="custCityTxtBox" ValidationGroup="customerGroup" /><br />
    <asp:TextBox ID="custCityTxtBox" runat="server" Width="150px" /> <br />
    State Abbreviation: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="custStAbbrTxtBox" ValidationGroup="customerGroup" /><br />
    <asp:TextBox ID="custStAbbrTxtBox" runat="server" Width="150px" /> <br />
    Zip Code: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="custZipCodeTxtBox" ValidationGroup="customerGroup" /><br />
    <asp:TextBox ID="custZipCodeTxtBox" runat="server" Width="150px" /> <br />
    Profession: <br />
    <asp:TextBox ID="custProfessionTxtBox" runat="server" Width="150px" /> <br />
    Employer: <br />
    <asp:TextBox ID="custEmployerTxtBox" runat="server" Width="150px" /> <br />
    Agent ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="custAgentIdTxtBox" ValidationGroup="customerGroup" /><br />
    <asp:TextBox ID="custAgentIdTxtBox" runat="server" Width="150px" /> <br />
    Date of Birth: <br />
    <asp:TextBox ID="custDOBTxtBox" runat="server" Width="150px" /> <br />
    Referrer: <br />
    <asp:TextBox ID="custReferrerTxtBox" runat="server" Width="150px" /> <br />

    <br />
    <asp:Button ID="custBtnSubmit" runat="server" Text="Submit" OnClick="CustBtnClick" ValidationGroup="customerGroup" Enabled="false"/> <br />
    <p style="font-weight: bold" ID="P1" runat="server"></p>
    </div>
    
    <%-- Agent Insert --%>
    <div id="agentDiv" style="height:750px;width:175px;float:left;margin-left:10px;margin-bottom:100px;">
    <asp:RadioButton ID="agentRdBtn" Text="Agent" runat="server" 
            GroupName="insertRadio" oncheckedchanged="agentRdBtn_CheckedChanged" AutoPostBack="true"/> <br />
    Agent ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="agentIdTxtBox" ValidationGroup="agentGroup" /><br />
    <asp:TextBox ID="agentIdTxtBox" runat="server" Width="150px" /> <br />
    Last Name: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="agentLastNameTxtBox" ValidationGroup="agentGroup" /><br />
    <asp:TextBox ID="agentLastNameTxtBox" runat="server" Width="150px" /> <br />
    First Name: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="agentFirstNameTxtBox" ValidationGroup="agentGroup" /><br />
    <asp:TextBox ID="agentFirstNameTxtBox" runat="server" Width="150px" /> <br />
    Middle Inital: <br />
    <asp:TextBox ID="agentMidInitTxtBox" runat="server" Width="150px" /> <br />
    Office Phone Number: <br />
    <asp:TextBox ID="agentOfficePhTxtBox" runat="server" Width="150px" /> <br />
    Pager: <br />
    <asp:TextBox ID="agentPagerTxtBox" runat="server" Width="150px" /> <br />
    Cell Phone Number: <br />
    <asp:TextBox ID="agentCellPhTxtBox" runat="server" Width="150px"/> <br />
    Home Phone Number: <br />
    <asp:TextBox ID="agentHomePhTxtBox" runat="server" Width="150px" /> <br />
    Hire Date: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="agentHireDtTxtBox" ValidationGroup="agentGroup" /><br />
    <asp:TextBox ID="agentHireDtTxtBox" runat="server" Width="150px" /> <br />
    Title: <br />
    <asp:TextBox ID="agentTitleTxtBox" runat="server" Width="150px" /> <br />
    

    <br />
    <asp:Button ID="agentBtnSubmit" runat="server" Text="Submit" OnClick="AgentBtnClick" ValidationGroup="agentGroup" Enabled="false"/> <br />
    <p style="font-weight: bold" ID="P2" runat="server"></p>
    </div>

    <%-- Sale Insert --%>
    <div id="saleDiv" style="height:750px;width:175px;float:left;margin-left:10px;margin-bottom:100px;">
    <asp:RadioButton ID="saleRdBtn" Text="Sale" runat="server"  GroupName="insertRadio" 
            oncheckedchanged="saleRdBtn_CheckedChanged" AutoPostBack="true"/> <br />
    Sale ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="saleIdTxtBox" ValidationGroup="saleGroup" /><br />
    <asp:TextBox ID="saleIdTxtBox" runat="server" Width="150px" /> <br />
    Customer ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="saleCustIdTxtBox" ValidationGroup="saleGroup" /><br />
    <asp:TextBox ID="saleCustIdTxtBox" runat="server" Width="150px" /> <br />
    Home ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="saleHomeIdTxtBox" ValidationGroup="saleGroup" /><br />
    <asp:TextBox ID="saleHomeIdTxtBox" runat="server" Width="150px" /> <br />
    Contract ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="saleContractIdTxtBox" ValidationGroup="saleGroup" /><br />
    <asp:TextBox ID="saleContractIdTxtBox" runat="server" Width="150px" /> <br />
    Agent ID: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="saleAgentIdTxtBox" ValidationGroup="saleGroup" /><br />
    <asp:TextBox ID="saleAgentIdTxtBox" runat="server" Width="150px" /> <br />
    Sale Date: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="saleDateTxtBox" ValidationGroup="saleGroup" /><br />
    <asp:TextBox ID="saleDateTxtBox" runat="server" Width="150px" /> <br />
    Actual Sale Amount: 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="saleActualAmountTxtBox" ValidationGroup="saleGroup" /><br />
    <asp:TextBox ID="saleActualAmountTxtBox" runat="server" Width="150px" /> <br />
    <br />
    <asp:Button ID="saleBtnSubmit" runat="server" Text="Submit" OnClick="SaleBtnClick" ValidationGroup="saleGroup" Enabled="false"/> <br />
    <p style="font-weight: bold" ID="P3" runat="server"></p>
    </div>

    
    </form>
</div>
</body>
</html>
