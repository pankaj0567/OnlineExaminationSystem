using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config
using System.Net.Mail;          //For Sending Mail
public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAltSend_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select passwd from Student where EmailId=@t1 "; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        cmd.Parameters.AddWithValue("@t1", txtAltEmail.Text); //Passing parameters to the Query
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Read();
            string pwd = dr[0].ToString();
            MailMessage msg = new MailMessage();
            msg.To.Add(txtAltEmail.Text);
            msg.From = new MailAddress("pk52546@gmail.com");
            msg.Subject = "Password Recovery";
            msg.Body = "Ur password is " + pwd;
            SmtpClient sm = new SmtpClient("smtp.gmail.com");
            sm.Port = 587;
            sm.Credentials = new System.Net.NetworkCredential("pk52546@gmail.com", "pankaj726525");
            sm.EnableSsl=true;
            sm.Send(msg);
            mailMsg.Visible = true;
            mailMsg.Text = "Your Password has been sent";

        }
        else
        {
            mailMsg.Visible = true;
            mailMsg.Text = "Invalid Email Id";
        }
    }
}