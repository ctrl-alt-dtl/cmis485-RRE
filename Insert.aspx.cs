using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.OracleClient;
using System.Drawing;



public partial class Insert : System.Web.UI.Page
{
    private string s;
    OracleConnection con;
    OracleCommand cmd;
    OracleDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        homeIdTxtBox.Enabled = false;
        homeIdTxtBox.BackColor = Color.LightGray;
        lotSzTxtBox.Enabled = false;
        lotSzTxtBox.BackColor = Color.LightGray;
        locateTxtBox.Enabled = false;
        locateTxtBox.BackColor = Color.LightGray;
        modelIdTxtBox.Enabled = false;
        modelIdTxtBox.BackColor = Color.LightGray;
        pruchPriceTxtBox.Enabled = false;
        pruchPriceTxtBox.BackColor = Color.LightGray;
        stAddyTxtBox.Enabled = false;
        stAddyTxtBox.BackColor = Color.LightGray;
        homeCtyTxtBox.Enabled = false;
        homeCtyTxtBox.BackColor = Color.LightGray;
        homeStAbbrTxtBox.Enabled = false;
        homeStAbbrTxtBox.BackColor = Color.LightGray;
        homeZipCodeTxtBox.Enabled = false;
        homeZipCodeTxtBox.BackColor = Color.LightGray;
        homeBtnSubmit.Enabled = false;

        custIdTxtBox.Enabled = false;
        custIdTxtBox.BackColor = Color.LightGray;
        custLastNameTxtBox.Enabled = false;
        custLastNameTxtBox.BackColor = Color.LightGray;
        custFirstNameTxtBox.Enabled = false;
        custFirstNameTxtBox.BackColor = Color.LightGray;
        custMidInitTxtBox.Enabled = false;
        custMidInitTxtBox.BackColor = Color.LightGray;
        custCellPhTxtBox.Enabled = false;
        custCellPhTxtBox.BackColor = Color.LightGray;
        custHomePhTxtBox.Enabled = false;
        custHomePhTxtBox.BackColor = Color.LightGray;
        custStAddyTxtBox.Enabled = false;
        custStAddyTxtBox.BackColor = Color.LightGray;
        custCityTxtBox.Enabled = false;
        custCityTxtBox.BackColor = Color.LightGray;
        custStAbbrTxtBox.Enabled = false;
        custStAbbrTxtBox.BackColor = Color.LightGray;
        custZipCodeTxtBox.Enabled = false;
        custZipCodeTxtBox.BackColor = Color.LightGray;
        custProfessionTxtBox.Enabled = false;
        custProfessionTxtBox.BackColor = Color.LightGray;
        custEmployerTxtBox.Enabled = false;
        custEmployerTxtBox.BackColor = Color.LightGray;
        custAgentIdTxtBox.Enabled = false;
        custAgentIdTxtBox.BackColor = Color.LightGray;
        custDOBTxtBox.Enabled = false;
        custDOBTxtBox.BackColor = Color.LightGray;
        custReferrerTxtBox.Enabled = false;
        custReferrerTxtBox.BackColor = Color.LightGray;

        agentIdTxtBox.Enabled = false;
        agentIdTxtBox.BackColor = Color.LightGray;
        agentLastNameTxtBox.Enabled = false;
        agentLastNameTxtBox.BackColor = Color.LightGray;
        agentFirstNameTxtBox.Enabled = false;
        agentFirstNameTxtBox.BackColor = Color.LightGray;
        agentMidInitTxtBox.Enabled = false;
        agentMidInitTxtBox.BackColor = Color.LightGray;
        agentOfficePhTxtBox.Enabled = false;
        agentOfficePhTxtBox.BackColor = Color.LightGray;
        agentPagerTxtBox.Enabled = false;
        agentPagerTxtBox.BackColor = Color.LightGray;
        agentCellPhTxtBox.Enabled = false;
        agentCellPhTxtBox.BackColor = Color.LightGray;
        agentHomePhTxtBox.Enabled = false;
        agentHomePhTxtBox.BackColor = Color.LightGray;
        agentHireDtTxtBox.Enabled = false;
        agentHireDtTxtBox.BackColor = Color.LightGray;
        agentTitleTxtBox.Enabled = false;
        agentTitleTxtBox.BackColor = Color.LightGray;
        agentBtnSubmit.Enabled = false;

        saleIdTxtBox.Enabled = false;
        saleIdTxtBox.BackColor = Color.LightGray;
        saleCustIdTxtBox.Enabled = false;
        saleCustIdTxtBox.BackColor = Color.LightGray;
        saleHomeIdTxtBox.Enabled = false;
        saleHomeIdTxtBox.BackColor = Color.LightGray;
        saleContractIdTxtBox.Enabled = false;
        saleContractIdTxtBox.BackColor = Color.LightGray;
        saleAgentIdTxtBox.Enabled = false;
        saleAgentIdTxtBox.BackColor = Color.LightGray;
        saleDateTxtBox.Enabled = false;
        saleDateTxtBox.BackColor = Color.LightGray;
        saleActualAmountTxtBox.Enabled = false;
        saleActualAmountTxtBox.BackColor = Color.LightGray;
        saleBtnSubmit.Enabled = false; 
   

    }
    protected void AgentBtnClick(object sender, EventArgs e)
    {
        long iAgentId;
        long iOfficePhone;
        long iPager;
        long iCellPhone;
        long iHomePhone;
        DateTime dHireDate;
        string sTitle;
        string sLastName;
        string sFirstName;
        string sMiddleInital;

        s = "Data Source=nova; User Id=#######; Password=#######";
        con = new OracleConnection(s);
        con.Open();
        cmd = new OracleCommand();
        cmd.Connection = con;

        iAgentId = Convert.ToInt64(agentIdTxtBox.Text);
        iAgentId = int.Parse(agentIdTxtBox.Text);
        iOfficePhone = Convert.ToInt64(agentOfficePhTxtBox.Text);
        iOfficePhone = int.Parse(agentOfficePhTxtBox.Text);
        iPager = Convert.ToInt64(agentPagerTxtBox.Text);
        iPager = int.Parse(agentPagerTxtBox.Text);
        iCellPhone = Convert.ToInt64(agentCellPhTxtBox.Text);
        iCellPhone = Int64.Parse(agentCellPhTxtBox.Text);
        iHomePhone = Convert.ToInt64(agentHomePhTxtBox.Text);
        iHomePhone = int.Parse(agentHomePhTxtBox.Text);
        dHireDate = DateTime.Parse(agentHireDtTxtBox.Text);
        sTitle = agentTitleTxtBox.Text;
        sLastName = agentLastNameTxtBox.Text;
        sFirstName = agentFirstNameTxtBox.Text;
        sMiddleInital = agentMidInitTxtBox.Text;

        cmd.CommandText = "INSERT INTO AGENT VALUES(" + iAgentId + "," + iOfficePhone +
            "," + iPager + "," + iCellPhone + ", " + iHomePhone + ", Trunc(TO_DATE('" + dHireDate.ToString("dd-MMM-yyyy") + "','DD-MON-YYYY')), '" +
            sTitle + "', '" + sLastName + "', '" + sFirstName + "', '" + sMiddleInital +"')";
        

        int rowsUpdated = cmd.ExecuteNonQuery();

        if (rowsUpdated == 0)
            Result.InnerText = "Record not inserted";
        else
            Result.InnerText = "Information Submitted Successfully";
        con.Dispose();

        System.Threading.Thread.Sleep(50);
        Response.Redirect("Insert.aspx");

    }
    protected void SaleBtnClick(object sender, EventArgs e)
    {
        int iSaleID;
        int iCustomerID;
        int iAgentID;
        int iHomeID;
        int iContractID;
        int iActualAmount;

        s = "Data Source=nova; User Id=#######; Password=#######";
        con = new OracleConnection(s);
        con.Open();
        cmd = new OracleCommand();
        cmd.Connection = con;

        iSaleID = Convert.ToInt32(saleIdTxtBox.Text);
        iSaleID = int.Parse(saleIdTxtBox.Text);

        iCustomerID = Convert.ToInt32(saleCustIdTxtBox.Text);
        iCustomerID = int.Parse(saleCustIdTxtBox.Text);

        iAgentID = Convert.ToInt32(saleAgentIdTxtBox.Text);
        iAgentID = int.Parse(saleAgentIdTxtBox.Text);

        iHomeID = Convert.ToInt32(saleHomeIdTxtBox.Text);
        iHomeID = int.Parse(saleHomeIdTxtBox.Text);

        iContractID = Convert.ToInt32(saleContractIdTxtBox.Text);
        iContractID = int.Parse(saleContractIdTxtBox.Text);

        DateTime isDate = DateTime.Parse(saleDateTxtBox.Text);
        iActualAmount = Convert.ToInt32(saleActualAmountTxtBox.Text);
        iActualAmount = int.Parse(saleActualAmountTxtBox.Text);

        cmd.CommandText = "INSERT INTO SALE VALUES(" + iSaleID + ", " + iCustomerID +
            ", Trunc(TO_DATE('" + isDate.ToString("dd-MMM-yyyy") + "','DD-MON-YYYY'))," +
            iHomeID + ", " + iContractID + ", " + iActualAmount + ", " + iAgentID + ")";
        int rowsUpdated = cmd.ExecuteNonQuery();

        if (rowsUpdated == 0)
            Result.InnerText = "Record not inserted";
        else
            Result.InnerText = "Information Submitted Successfully";
        con.Dispose();

        System.Threading.Thread.Sleep(50);
        Response.Redirect("Insert.aspx");

    }
    protected void CustBtnClick(object sender, EventArgs e)
    {

        int iCustomerId;
        string sLastName;
        string sFirstName;
        string sMiddleInitial;
        long iCellPhone;
        long iHomePhone;
        string sStreetAddress;
        string sCity;
        string sStateAbbr;
        int iZipCode;
        string sProfession;
        string sEmployer;
        int iAgentId;
        DateTime dDOB;
        string sReferrer;

        s = "Data Source=nova; User Id=#######; Password=#######";
        con = new OracleConnection(s);
        con.Open();
        cmd = new OracleCommand();
        cmd.Connection = con;

        iCustomerId = Convert.ToInt32(custIdTxtBox.Text);
        iCustomerId = int.Parse(custIdTxtBox.Text);
        sLastName = custLastNameTxtBox.Text;
        sFirstName = custFirstNameTxtBox.Text;
        sMiddleInitial = custMidInitTxtBox.Text;
        iCellPhone = Convert.ToInt64(custCellPhTxtBox.Text);
        iCellPhone = Int64.Parse(custCellPhTxtBox.Text);
        iHomePhone = Convert.ToInt64(custHomePhTxtBox.Text);
        iHomePhone = Int64.Parse(custHomePhTxtBox.Text);
        sStreetAddress = custStAddyTxtBox.Text;
        sCity = custCityTxtBox.Text;
        sStateAbbr = custStAbbrTxtBox.Text;
        iZipCode = Convert.ToInt32(custZipCodeTxtBox.Text);
        iZipCode = int.Parse(custZipCodeTxtBox.Text);
        sProfession = custProfessionTxtBox.Text;
        sEmployer = custEmployerTxtBox.Text;
        iAgentId = Convert.ToInt32(custAgentIdTxtBox.Text);
        iAgentId = int.Parse(custAgentIdTxtBox.Text);
        dDOB = DateTime.Parse(custDOBTxtBox.Text);
        sReferrer = custReferrerTxtBox.Text;


        cmd.CommandText = "INSERT INTO CUSTOMER VALUES(" + iCustomerId + ", '" + sLastName +
            "', '" + sFirstName + "', '" + sMiddleInitial + "', " + iCellPhone + ", " + iHomePhone + 
            ", '" + sStreetAddress + "', '" + sCity + "', '" + sStateAbbr + "', " + iZipCode + 
            ", '" + sProfession + "', '" + sEmployer + "', " + iAgentId +
            ", Trunc(TO_DATE('" + dDOB.ToString("dd-MMM-yyyy") + "','DD-MON-YYYY')), '" + sReferrer + "')";
        string value = cmd.CommandText;
        int rowsUpdated = cmd.ExecuteNonQuery();

        if (rowsUpdated == 0)
            Result.InnerText = "Record not inserted";
        else
            Result.InnerText = "Information Submitted Successfully";
        con.Dispose();

        System.Threading.Thread.Sleep(50);
        Response.Redirect("Insert.aspx");
    }
    protected void HomeBtnClick(object sender, EventArgs e)
    {
        int iHomeId;
        int iLotSize;
        string sLocation;
        int iModelId;
        int iPurchsePrice;
        string sStreetAddress;
        string sCity;
        string sStateAbb;
        string sZipcode;

        s = "Data Source=nova; User Id=#######; Password=#######";
        con = new OracleConnection(s);
        con.Open();
        cmd = new OracleCommand();
        cmd.Connection = con;

        iHomeId = Convert.ToInt32(homeIdTxtBox.Text);
        iHomeId = int.Parse(homeIdTxtBox.Text);
        iLotSize = Convert.ToInt32(lotSzTxtBox.Text);
        iLotSize = int.Parse(lotSzTxtBox.Text);
        sLocation = locateTxtBox.Text;
        iModelId = Convert.ToInt32(modelIdTxtBox.Text);
        iModelId = int.Parse(modelIdTxtBox.Text);
        iPurchsePrice = Convert.ToInt32(pruchPriceTxtBox.Text);
        iPurchsePrice = int.Parse(pruchPriceTxtBox.Text);
        sStreetAddress = stAddyTxtBox.Text;
        sCity = homeCtyTxtBox.Text;
        sStateAbb = homeStAbbrTxtBox.Text;
        sZipcode = homeZipCodeTxtBox.Text;

        cmd.CommandText = "INSERT INTO HOME VALUES(" + iHomeId + ", " + iLotSize +
            ", '" + sLocation + "', " + iModelId + ", " + iPurchsePrice + ", '" + sStreetAddress + "', '" + sCity + "', '" + sStateAbb + "', '" + sZipcode + "')";

        int rowsUpdated = cmd.ExecuteNonQuery();

        if (rowsUpdated == 0)
            Result.InnerText = "Record not inserted";
        else
            Result.InnerText = "Information Submitted Successfully";
        con.Dispose();

        System.Threading.Thread.Sleep(50);
        Response.Redirect("Insert.aspx");

    }
    protected void homeRdBtn_CheckedChanged(object sender, EventArgs e)
    {
        homeIdTxtBox.Enabled = true;
        homeIdTxtBox.BackColor = Color.White;
        lotSzTxtBox.Enabled = true;
        lotSzTxtBox.BackColor = Color.White;
        locateTxtBox.Enabled = true;
        locateTxtBox.BackColor = Color.White;
        modelIdTxtBox.Enabled = true;
        modelIdTxtBox.BackColor = Color.White;
        pruchPriceTxtBox.Enabled = true;
        pruchPriceTxtBox.BackColor = Color.White;
        stAddyTxtBox.Enabled = true;
        stAddyTxtBox.BackColor = Color.White;
        homeCtyTxtBox.Enabled = true;
        homeCtyTxtBox.BackColor = Color.White;
        homeStAbbrTxtBox.Enabled = true;
        homeStAbbrTxtBox.BackColor = Color.White;
        homeZipCodeTxtBox.Enabled = true;
        homeZipCodeTxtBox.BackColor = Color.White;
        homeBtnSubmit.Enabled = true;

        //Disabled
        custIdTxtBox.Enabled = false;
        custIdTxtBox.BackColor = Color.LightGray;
        custLastNameTxtBox.Enabled = false;
        custLastNameTxtBox.BackColor = Color.LightGray;
        custFirstNameTxtBox.Enabled = false;
        custFirstNameTxtBox.BackColor = Color.LightGray;
        custMidInitTxtBox.Enabled = false;
        custMidInitTxtBox.BackColor = Color.LightGray;
        custCellPhTxtBox.Enabled = false;
        custCellPhTxtBox.BackColor = Color.LightGray;
        custHomePhTxtBox.Enabled = false;
        custHomePhTxtBox.BackColor = Color.LightGray;
        custStAddyTxtBox.Enabled = false;
        custStAddyTxtBox.BackColor = Color.LightGray;
        custCityTxtBox.Enabled = false;
        custCityTxtBox.BackColor = Color.LightGray;
        custStAbbrTxtBox.Enabled = false;
        custStAbbrTxtBox.BackColor = Color.LightGray;
        custZipCodeTxtBox.Enabled = false;
        custZipCodeTxtBox.BackColor = Color.LightGray;
        custProfessionTxtBox.Enabled = false;
        custProfessionTxtBox.BackColor = Color.LightGray;
        custEmployerTxtBox.Enabled = false;
        custEmployerTxtBox.BackColor = Color.LightGray;
        custAgentIdTxtBox.Enabled = false;
        custAgentIdTxtBox.BackColor = Color.LightGray;
        custDOBTxtBox.Enabled = false;
        custDOBTxtBox.BackColor = Color.LightGray;
        custReferrerTxtBox.Enabled = false;
        custReferrerTxtBox.BackColor = Color.LightGray;
        custBtnSubmit.Enabled = false;

        agentIdTxtBox.Enabled = false;
        agentIdTxtBox.BackColor = Color.LightGray;
        agentLastNameTxtBox.Enabled = false;
        agentLastNameTxtBox.BackColor = Color.LightGray;
        agentFirstNameTxtBox.Enabled = false;
        agentFirstNameTxtBox.BackColor = Color.LightGray;
        agentMidInitTxtBox.Enabled = false;
        agentMidInitTxtBox.BackColor = Color.LightGray;
        agentOfficePhTxtBox.Enabled = false;
        agentOfficePhTxtBox.BackColor = Color.LightGray;
        agentPagerTxtBox.Enabled = false;
        agentPagerTxtBox.BackColor = Color.LightGray;
        agentCellPhTxtBox.Enabled = false;
        agentCellPhTxtBox.BackColor = Color.LightGray;
        agentHomePhTxtBox.Enabled = false;
        agentHomePhTxtBox.BackColor = Color.LightGray;
        agentHireDtTxtBox.Enabled = false;
        agentHireDtTxtBox.BackColor = Color.LightGray;
        agentTitleTxtBox.Enabled = false;
        agentTitleTxtBox.BackColor = Color.LightGray;
        agentBtnSubmit.Enabled = false;

        saleIdTxtBox.Enabled = false;
        saleIdTxtBox.BackColor = Color.LightGray;
        saleCustIdTxtBox.Enabled = false;
        saleCustIdTxtBox.BackColor = Color.LightGray;
        saleHomeIdTxtBox.Enabled = false;
        saleHomeIdTxtBox.BackColor = Color.LightGray;
        saleContractIdTxtBox.Enabled = false;
        saleContractIdTxtBox.BackColor = Color.LightGray;
        saleAgentIdTxtBox.Enabled = false;
        saleAgentIdTxtBox.BackColor = Color.LightGray;
        saleDateTxtBox.Enabled = false;
        saleDateTxtBox.BackColor = Color.LightGray;
        saleActualAmountTxtBox.Enabled = false;
        saleActualAmountTxtBox.BackColor = Color.LightGray;
        saleBtnSubmit.Enabled = false;     
            
    }
    protected void custRdBtn_CheckedChanged(object sender, EventArgs e)
    {
        custIdTxtBox.Enabled = true;
        custIdTxtBox.BackColor = Color.White;
        custLastNameTxtBox.Enabled = true;
        custLastNameTxtBox.BackColor = Color.White;
        custFirstNameTxtBox.Enabled = true;
        custFirstNameTxtBox.BackColor = Color.White;
        custMidInitTxtBox.Enabled = true;
        custMidInitTxtBox.BackColor = Color.White;
        custCellPhTxtBox.Enabled = true;
        custCellPhTxtBox.BackColor = Color.White;
        custHomePhTxtBox.Enabled = true;
        custHomePhTxtBox.BackColor = Color.White;
        custStAddyTxtBox.Enabled = true;
        custStAddyTxtBox.BackColor = Color.White;
        custCityTxtBox.Enabled = true;
        custCityTxtBox.BackColor = Color.White;
        custStAbbrTxtBox.Enabled = true;
        custStAbbrTxtBox.BackColor = Color.White;
        custZipCodeTxtBox.Enabled = true;
        custZipCodeTxtBox.BackColor = Color.White;
        custProfessionTxtBox.Enabled = true;
        custProfessionTxtBox.BackColor = Color.White;
        custEmployerTxtBox.Enabled = true;
        custEmployerTxtBox.BackColor = Color.White;
        custAgentIdTxtBox.Enabled = true;
        custAgentIdTxtBox.BackColor = Color.White;
        custDOBTxtBox.Enabled = true;
        custDOBTxtBox.BackColor = Color.White;
        custReferrerTxtBox.Enabled = true;
        custReferrerTxtBox.BackColor = Color.White;
        custBtnSubmit.Enabled = true;

        //Disabled
        homeIdTxtBox.Enabled = false;
        homeIdTxtBox.BackColor = Color.LightGray;
        lotSzTxtBox.Enabled = false;
        lotSzTxtBox.BackColor = Color.LightGray;
        locateTxtBox.Enabled = false;
        locateTxtBox.BackColor = Color.LightGray;
        modelIdTxtBox.Enabled = false;
        modelIdTxtBox.BackColor = Color.LightGray;
        pruchPriceTxtBox.Enabled = false;
        pruchPriceTxtBox.BackColor = Color.LightGray;
        stAddyTxtBox.Enabled = false;
        stAddyTxtBox.BackColor = Color.LightGray;
        homeCtyTxtBox.Enabled = false;
        homeCtyTxtBox.BackColor = Color.LightGray;
        homeStAbbrTxtBox.Enabled = false;
        homeStAbbrTxtBox.BackColor = Color.LightGray;
        homeZipCodeTxtBox.Enabled = false;
        homeZipCodeTxtBox.BackColor = Color.LightGray;
        homeBtnSubmit.Enabled = false;

        agentIdTxtBox.Enabled = false;
        agentIdTxtBox.BackColor = Color.LightGray;
        agentLastNameTxtBox.Enabled = false;
        agentLastNameTxtBox.BackColor = Color.LightGray;
        agentFirstNameTxtBox.Enabled = false;
        agentFirstNameTxtBox.BackColor = Color.LightGray;
        agentMidInitTxtBox.Enabled = false;
        agentMidInitTxtBox.BackColor = Color.LightGray;
        agentOfficePhTxtBox.Enabled = false;
        agentOfficePhTxtBox.BackColor = Color.LightGray;
        agentPagerTxtBox.Enabled = false;
        agentPagerTxtBox.BackColor = Color.LightGray;
        agentCellPhTxtBox.Enabled = false;
        agentCellPhTxtBox.BackColor = Color.LightGray;
        agentHomePhTxtBox.Enabled = false;
        agentHomePhTxtBox.BackColor = Color.LightGray;
        agentHireDtTxtBox.Enabled = false;
        agentHireDtTxtBox.BackColor = Color.LightGray;
        agentTitleTxtBox.Enabled = false;
        agentTitleTxtBox.BackColor = Color.LightGray;
        agentBtnSubmit.Enabled = false;

        saleIdTxtBox.Enabled = false;
        saleIdTxtBox.BackColor = Color.LightGray;
        saleCustIdTxtBox.Enabled = false;
        saleCustIdTxtBox.BackColor = Color.LightGray;
        saleHomeIdTxtBox.Enabled = false;
        saleHomeIdTxtBox.BackColor = Color.LightGray;
        saleContractIdTxtBox.Enabled = false;
        saleContractIdTxtBox.BackColor = Color.LightGray;
        saleAgentIdTxtBox.Enabled = false;
        saleAgentIdTxtBox.BackColor = Color.LightGray;
        saleDateTxtBox.Enabled = false;
        saleDateTxtBox.BackColor = Color.LightGray;
        saleActualAmountTxtBox.Enabled = false;
        saleActualAmountTxtBox.BackColor = Color.LightGray;
        saleBtnSubmit.Enabled = false; 
        
    }
    protected void agentRdBtn_CheckedChanged(object sender, EventArgs e)
    {
        agentIdTxtBox.Enabled = true;
        agentIdTxtBox.BackColor = Color.White;
        agentLastNameTxtBox.Enabled = true;
        agentLastNameTxtBox.BackColor = Color.White;
        agentFirstNameTxtBox.Enabled = true;
        agentFirstNameTxtBox.BackColor = Color.White;
        agentMidInitTxtBox.Enabled = true;
        agentMidInitTxtBox.BackColor = Color.White;
        agentOfficePhTxtBox.Enabled = true;
        agentOfficePhTxtBox.BackColor = Color.White;
        agentPagerTxtBox.Enabled = true;
        agentPagerTxtBox.BackColor = Color.White;
        agentCellPhTxtBox.Enabled = true;
        agentCellPhTxtBox.BackColor = Color.White;
        agentHomePhTxtBox.Enabled = true;
        agentHomePhTxtBox.BackColor = Color.White;
        agentHireDtTxtBox.Enabled = true;
        agentHireDtTxtBox.BackColor = Color.White;
        agentTitleTxtBox.Enabled = true;
        agentTitleTxtBox.BackColor = Color.White;
        agentBtnSubmit.Enabled = true;

        //Disabled
        homeIdTxtBox.Enabled = false;
        homeIdTxtBox.BackColor = Color.LightGray;
        lotSzTxtBox.Enabled = false;
        lotSzTxtBox.BackColor = Color.LightGray;
        locateTxtBox.Enabled = false;
        locateTxtBox.BackColor = Color.LightGray;
        modelIdTxtBox.Enabled = false;
        modelIdTxtBox.BackColor = Color.LightGray;
        pruchPriceTxtBox.Enabled = false;
        pruchPriceTxtBox.BackColor = Color.LightGray;
        stAddyTxtBox.Enabled = false;
        stAddyTxtBox.BackColor = Color.LightGray;
        homeCtyTxtBox.Enabled = false;
        homeCtyTxtBox.BackColor = Color.LightGray;
        homeStAbbrTxtBox.Enabled = false;
        homeStAbbrTxtBox.BackColor = Color.LightGray;
        homeZipCodeTxtBox.Enabled = false;
        homeZipCodeTxtBox.BackColor = Color.LightGray;
        homeBtnSubmit.Enabled = false;

        custIdTxtBox.Enabled = false;
        custIdTxtBox.BackColor = Color.LightGray;
        custLastNameTxtBox.Enabled = false;
        custLastNameTxtBox.BackColor = Color.LightGray;
        custFirstNameTxtBox.Enabled = false;
        custFirstNameTxtBox.BackColor = Color.LightGray;
        custMidInitTxtBox.Enabled = false;
        custMidInitTxtBox.BackColor = Color.LightGray;
        custCellPhTxtBox.Enabled = false;
        custCellPhTxtBox.BackColor = Color.LightGray;
        custHomePhTxtBox.Enabled = false;
        custHomePhTxtBox.BackColor = Color.LightGray;
        custStAddyTxtBox.Enabled = false;
        custStAddyTxtBox.BackColor = Color.LightGray;
        custCityTxtBox.Enabled = false;
        custCityTxtBox.BackColor = Color.LightGray;
        custStAbbrTxtBox.Enabled = false;
        custStAbbrTxtBox.BackColor = Color.LightGray;
        custZipCodeTxtBox.Enabled = false;
        custZipCodeTxtBox.BackColor = Color.LightGray;
        custProfessionTxtBox.Enabled = false;
        custProfessionTxtBox.BackColor = Color.LightGray;
        custEmployerTxtBox.Enabled = false;
        custEmployerTxtBox.BackColor = Color.LightGray;
        custAgentIdTxtBox.Enabled = false;
        custAgentIdTxtBox.BackColor = Color.LightGray;
        custDOBTxtBox.Enabled = false;
        custDOBTxtBox.BackColor = Color.LightGray;
        custReferrerTxtBox.Enabled = false;
        custReferrerTxtBox.BackColor = Color.LightGray;
        custBtnSubmit.Enabled = false;

        saleIdTxtBox.Enabled = false;
        saleIdTxtBox.BackColor = Color.LightGray;
        saleCustIdTxtBox.Enabled = false;
        saleCustIdTxtBox.BackColor = Color.LightGray;
        saleHomeIdTxtBox.Enabled = false;
        saleHomeIdTxtBox.BackColor = Color.LightGray;
        saleContractIdTxtBox.Enabled = false;
        saleContractIdTxtBox.BackColor = Color.LightGray;
        saleAgentIdTxtBox.Enabled = false;
        saleAgentIdTxtBox.BackColor = Color.LightGray;
        saleDateTxtBox.Enabled = false;
        saleDateTxtBox.BackColor = Color.LightGray;
        saleActualAmountTxtBox.Enabled = false;
        saleActualAmountTxtBox.BackColor = Color.LightGray;
        saleBtnSubmit.Enabled = false; 
    }
    protected void saleRdBtn_CheckedChanged(object sender, EventArgs e)
    {
        saleIdTxtBox.Enabled = true;
        saleIdTxtBox.BackColor = Color.White;
        saleCustIdTxtBox.Enabled = true;
        saleCustIdTxtBox.BackColor = Color.White;
        saleHomeIdTxtBox.Enabled = true;
        saleHomeIdTxtBox.BackColor = Color.White;
        saleContractIdTxtBox.Enabled = true;
        saleContractIdTxtBox.BackColor = Color.White;
        saleAgentIdTxtBox.Enabled = true;
        saleAgentIdTxtBox.BackColor = Color.White;
        saleDateTxtBox.Enabled = true;
        saleDateTxtBox.BackColor = Color.White;
        saleActualAmountTxtBox.Enabled = true;
        saleActualAmountTxtBox.BackColor = Color.White;
        saleBtnSubmit.Enabled = true;

        //Disabled
        homeIdTxtBox.Enabled = false;
        homeIdTxtBox.BackColor = Color.LightGray;
        lotSzTxtBox.Enabled = false;
        lotSzTxtBox.BackColor = Color.LightGray;
        locateTxtBox.Enabled = false;
        locateTxtBox.BackColor = Color.LightGray;
        modelIdTxtBox.Enabled = false;
        modelIdTxtBox.BackColor = Color.LightGray;
        pruchPriceTxtBox.Enabled = false;
        pruchPriceTxtBox.BackColor = Color.LightGray;
        stAddyTxtBox.Enabled = false;
        stAddyTxtBox.BackColor = Color.LightGray;
        homeCtyTxtBox.Enabled = false;
        homeCtyTxtBox.BackColor = Color.LightGray;
        homeStAbbrTxtBox.Enabled = false;
        homeStAbbrTxtBox.BackColor = Color.LightGray;
        homeZipCodeTxtBox.Enabled = false;
        homeZipCodeTxtBox.BackColor = Color.LightGray;
        homeBtnSubmit.Enabled = false;

        custIdTxtBox.Enabled = false;
        custIdTxtBox.BackColor = Color.LightGray;
        custLastNameTxtBox.Enabled = false;
        custLastNameTxtBox.BackColor = Color.LightGray;
        custFirstNameTxtBox.Enabled = false;
        custFirstNameTxtBox.BackColor = Color.LightGray;
        custMidInitTxtBox.Enabled = false;
        custMidInitTxtBox.BackColor = Color.LightGray;
        custCellPhTxtBox.Enabled = false;
        custCellPhTxtBox.BackColor = Color.LightGray;
        custHomePhTxtBox.Enabled = false;
        custHomePhTxtBox.BackColor = Color.LightGray;
        custStAddyTxtBox.Enabled = false;
        custStAddyTxtBox.BackColor = Color.LightGray;
        custCityTxtBox.Enabled = false;
        custCityTxtBox.BackColor = Color.LightGray;
        custStAbbrTxtBox.Enabled = false;
        custStAbbrTxtBox.BackColor = Color.LightGray;
        custZipCodeTxtBox.Enabled = false;
        custZipCodeTxtBox.BackColor = Color.LightGray;
        custProfessionTxtBox.Enabled = false;
        custProfessionTxtBox.BackColor = Color.LightGray;
        custEmployerTxtBox.Enabled = false;
        custEmployerTxtBox.BackColor = Color.LightGray;
        custAgentIdTxtBox.Enabled = false;
        custAgentIdTxtBox.BackColor = Color.LightGray;
        custDOBTxtBox.Enabled = false;
        custDOBTxtBox.BackColor = Color.LightGray;
        custReferrerTxtBox.Enabled = false;
        custReferrerTxtBox.BackColor = Color.LightGray;
        custBtnSubmit.Enabled = false;

        agentIdTxtBox.Enabled = false;
        agentIdTxtBox.BackColor = Color.LightGray;
        agentLastNameTxtBox.Enabled = false;
        agentLastNameTxtBox.BackColor = Color.LightGray;
        agentFirstNameTxtBox.Enabled = false;
        agentFirstNameTxtBox.BackColor = Color.LightGray;
        agentMidInitTxtBox.Enabled = false;
        agentMidInitTxtBox.BackColor = Color.LightGray;
        agentOfficePhTxtBox.Enabled = false;
        agentOfficePhTxtBox.BackColor = Color.LightGray;
        agentPagerTxtBox.Enabled = false;
        agentPagerTxtBox.BackColor = Color.LightGray;
        agentCellPhTxtBox.Enabled = false;
        agentCellPhTxtBox.BackColor = Color.LightGray;
        agentHomePhTxtBox.Enabled = false;
        agentHomePhTxtBox.BackColor = Color.LightGray;
        agentHireDtTxtBox.Enabled = false;
        agentHireDtTxtBox.BackColor = Color.LightGray;
        agentTitleTxtBox.Enabled = false;
        agentTitleTxtBox.BackColor = Color.LightGray;
        agentBtnSubmit.Enabled = false;
    }
}