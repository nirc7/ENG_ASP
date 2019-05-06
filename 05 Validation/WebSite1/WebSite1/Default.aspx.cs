using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Validate();
        if (IsPostBack)
            if (IsValid)
            {
                Response.Write("valid");
            }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("btn");
    }
}