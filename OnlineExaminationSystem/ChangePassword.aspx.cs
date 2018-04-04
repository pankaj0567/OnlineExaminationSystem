using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        string type = Session["type"].ToString();
        if (type == "Student")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from Student where usernm=@t1 and passwd=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", Session["usr"].ToString()); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtCurPass.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                pnlNewPassword.Visible = true;
                lblWrongPassMsg.Visible = false;
                pnlCurrentPassword.Visible = false;
            }
            else //If Unmatched
            {
                lblWrongPassMsg.Visible = true;
                lblWrongPassMsg.Text = "Wrong Password";
            }
            dr.Close();
            con.Close();
    
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from Evaluator where usernm=@t1 and passwd=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", Session["usr"].ToString()); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtCurPass.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                pnlNewPassword.Visible = true;
                lblWrongPassMsg.Visible = false;
                pnlCurrentPassword.Visible = false;
            }
            else //If Unmatched
            {
                lblWrongPassMsg.Visible = true;
                lblWrongPassMsg.Text = "Wrong Password";
            }
            dr.Close();
            con.Close();
    
        }
       
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string type = Session["type"].ToString();
        if (type == "Student")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "update Student set passwd=@t1 where usernm=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t2", Session["usr"].ToString()); //Passing parameters to the Query   
            cmd.Parameters.AddWithValue("@t1", txtNewPass.Text);
            cmd.ExecuteNonQuery();
            lblCurPass.Visible = true;
            lblCurPass.Text = "Password Changed Successfully";
            lblWrongPassMsg.Visible = false;
            con.Close();
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "update Evaluator set passwd=@t1 where usernm=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t2", Session["usr"].ToString()); //Passing parameters to the Query   
            cmd.Parameters.AddWithValue("@t1", txtNewPass.Text);
            cmd.ExecuteNonQuery();
            lblCurPass.Visible = true;
            lblCurPass.Text = "Password Changed Successfully";
            lblWrongPassMsg.Visible = false;
            con.Close();
        }

        
    }
}