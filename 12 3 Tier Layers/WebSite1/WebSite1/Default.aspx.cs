using System;
using BALProj;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write(BALServices.Login(txtName.Text, txtPass.Text));
    }
}