using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TextBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //we cant see any controls from the viewstate object!
        Response.Write("txtNum: " + ViewState["txtNum"] + "<br/>");
        Response.Write("txtNum2: " + ViewState["txtNum2"] + "<br/>");

        //count only elements we added as KEY\VALUE pair by ourselves!
        Response.Write("ViewState.Count: " + ViewState.Count + "<br/>");
        Response.Write("__VIEWSTATE: " + Request.Form["__VIEWSTATE"] + "<br/>");
        ViewState["a"] = (int)(ViewState["a"]==null ? 0 : ViewState["a"]) + 1;
        Response.Write("ViewState[\"a\"]: " + ViewState["a"] + "<br/>");

        if (!IsPostBack)
        {
            //here we can see that the viewstate of a TextBox is not really always enabled but only the text property is 
            //saved through the postbacks because the control has the IPostBackDataHandler!!!!
            //pay attention that the text property is saved through the postbacks while the forecolor not!!
            txtNum2.ForeColor = System.Drawing.Color.FromName("Blue"); 
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        int num1 = int.Parse(txtNum.Text);
        txtNum.Text = (++num1).ToString();
        int num2 = int.Parse(txtNum2.Text);
        txtNum2.Text = (++num2).ToString();
    }

    //this will be raised only when the changes are made by the user in the client side so we dont see
    //this when the changes where made  in the submit_Click event here in the code!!!
    protected void txtNum_TextChanged(object sender, EventArgs e)
    {
        Response.Write("txt1");
    }

    
    //we will see this because the txt_num2 is desabled on the viewstate and so this will always compare the value with the 
    //markup value which is 0. 
    protected void txtNum2_TextChanged(object sender, EventArgs e)
    {
        Response.Write("txt2");
    }
}