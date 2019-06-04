using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587)
        {
            Credentials = new NetworkCredential("yourMail@gmail.com", "[YourMailPassword]"),
            EnableSsl = true
        };
        client.Send("yourMail@gmail.com", "toMail@gmail.com", "test", "testbody");
        //Console.WriteLine("Sent");
        //Console.ReadLine();
        Response.Write("SEND MAIL");
    }
}