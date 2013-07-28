using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reports : System.Web.UI.Page
{
    int total = 0;
    int average = 0;
    int home = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        GridView GridView1 = (GridView)form1.FindControl("Gridview1");
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["style"] = "display:none";
        }

        
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "ACTUAL_AMOUNT"));
            
        }

        

        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblamount = (Label)e.Row.FindControl("lblTotal");
            lblamount.Text = total.ToString("c");
            average = Convert.ToInt32(total.ToString()) / GridView1.Rows.Count;
            Label lblaverage = (Label)e.Row.FindControl("lblAverage");
            lblaverage.Text = average.ToString("c");
            home = GridView1.Rows.Count;
            Label lblhome = (Label)e.Row.FindControl("lblHome");
            lblhome.Text = home.ToString();

        }
    }
}