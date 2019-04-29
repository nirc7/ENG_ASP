using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class without_ViewState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("server time - postback: " + DateTime.Now);
        Response.Write("<br/>" +  Calendar1.SelectedDate ) ;    //will always show the LAST selected date !!!
    }
    
    //this again will show the intial date
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Button1_Click- " + Calendar1.SelectedDate.ToShortDateString() + " - " + DateTime.Now.ToLongTimeString();
    }

    //this will show the selected date!
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = "Calendar1_SelectionChanged- " + Calendar1.SelectedDate.ToShortDateString() + " - " + DateTime.Now.ToLongTimeString();
    }
   
}