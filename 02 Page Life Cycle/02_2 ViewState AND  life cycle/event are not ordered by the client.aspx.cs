using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class event_are_not_ordered_by_the_client : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(TextBox1.Text);
        Response.Write("<br/>" + TextBox2.Text);
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        TextBox1.Text += " " + TextBox2.Text + " int txt1 ";
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        TextBox2.Text += " " + TextBox1.Text + " int txt2 ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<br/>btn_click!");
    }
}