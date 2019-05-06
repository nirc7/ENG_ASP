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
        if (!IsPostBack) // only first time!
        {
            Response.Write("first <br/>");
        }
        Response.Write("load<br/>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("btn<br/>");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Response.Write(TextBox1.Text + "<br/>");
    }
}