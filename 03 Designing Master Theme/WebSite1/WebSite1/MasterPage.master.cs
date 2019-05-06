using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string Label1 { set { lblInMaster.Text = value + ":)"; } }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label mylbl = ContentPlaceHolder1.FindControl("lblP2") as Label;
        if (mylbl != null)
        {
            mylbl.Text += " from master!";
        }
    }
}
