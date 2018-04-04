using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestWebServiceForForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TestWebService web = new TestWebService();
        BankService bs = new BankService();
        bs.checkcard(
        bool check=web.CardDetails(Convert.ToInt32(TextBox1.Text), Convert.ToInt32(TextBox2.Text), TextBox3.Text, TextBox4.Text, TextBox5.Text);
        if (check)
        {
            TextBox6.Text = "payment Accepted";
        }
        else
        {
            TextBox6.Text = "Payment not accepted";
         
        }
    }
}