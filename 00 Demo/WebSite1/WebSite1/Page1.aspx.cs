using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Response.Write("not frist time!");
        }
        else
        {
            DropDownList1.Items.Add("Wensday");
            Response.Write("frist time!");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "hello " + txtName.Text;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDays.Text = DropDownList1.SelectedValue + ", " + DropDownList1.SelectedItem;
    }

    protected void txtName_TextChanged(object sender, EventArgs e)
    {
        Response.Write(txtName.Text);
    }
}