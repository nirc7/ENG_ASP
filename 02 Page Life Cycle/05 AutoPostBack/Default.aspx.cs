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
        Response.Write(DateTime.Now + "<br/>");
        Response.Write(Dropdownlist1.SelectedValue + "<br/>");
        Response.Write(Dropdownlist2.SelectedValue + "<br/>");

    }
    protected void Dropdownlist1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("in the func!" + "<br/>");
    }
}