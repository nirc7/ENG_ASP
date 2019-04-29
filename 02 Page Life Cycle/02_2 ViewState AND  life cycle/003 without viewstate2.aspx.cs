using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class without_viewstate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //btnRes.Text = "pageload";
    }
    protected void btnADD_Click(object sender, EventArgs e)
    {
       result.Text =  (int.Parse( num1.Text) + int.Parse(num2.Text) + int.Parse(num3.Value)).ToString();
       lblRes.Text = (int.Parse(num1.Text) + int.Parse(num2.Text) + int.Parse(num3.Value)).ToString();
       btnRes.Text = (int.Parse(num1.Text) + int.Parse(num2.Text) + int.Parse(num3.Value)).ToString();
    }
}