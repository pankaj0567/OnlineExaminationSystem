using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;  // using namespaces 

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();    //making object reference for mail
        msg.To.Add("pk52546@gmail.com");           // where to send email 
        msg.From = new MailAddress(txtFrom.Text);  // where to receive 
        msg.Subject = txtSubject.Text;             // Title of mail
        msg.Body = txtBody.Text;                 // msg body
        SmtpClient sm = new SmtpClient("Smtp.gmail.com");            //  smtp client
        sm.Port = 587;                    // This is port no of smtp client
        sm.Credentials = new System.Net.NetworkCredential("pk52546@gmail.com", "pankaj726525"); // checking login id and password both are correct
        sm.EnableSsl = true;                  
        sm.Send(msg);
        lblMsg.Visible = true;
        lblMsg.Text = "Your Mail has been sent";  // Display message after sent email
    }
    protected void btnDiscard_Click(object sender, EventArgs e)
    {
        txtBody.Text = "";             // Clean text box
        txtFrom.Text = "";              // Clean text box
        txtSubject.Text = "";           // Clean textarea
        lblMsg.Visible = false;
    }
}