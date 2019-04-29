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

    }
  
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (ViewState["count"] == null)
        {
            ViewState["count"] = 1;
        }
        else
        {
            ViewState["count"] = (int)ViewState["count"] + 1;
        }
        lblRes.Text = ((int)ViewState["count"]).ToString();
    }
}