using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class TestLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void btnStartExam_Click(object sender, EventArgs e)
    {
        if (DropDownExamName.SelectedIndex == 0)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["roll"] = txtUserRollNo.Text;
                
                Response.Redirect("OperatingSystem-1.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                lblMsg.Visible = true;
               lblMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();

        }
        else if (DropDownExamName.SelectedIndex == 1)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["roll"] = txtUserRollNo.Text;

                Response.Redirect("WebDevelopment-1.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();

        }
        else if (DropDownExamName.SelectedIndex == 2)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["roll"] = txtUserRollNo.Text;

                Response.Redirect("LogicalReasoning-1.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();

        }
         else if (DropDownExamName.SelectedIndex == 3)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["roll"] = txtUserRollNo.Text;

                Response.Redirect("GK-1.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();

        }
        else if (DropDownExamName.SelectedIndex == 4)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["roll"] = txtUserRollNo.Text;

                Response.Redirect("CompensationManagement-1.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();
        }
            else if (DropDownExamName.SelectedIndex == 5)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
                con.Open();  // Open DB Connection
                string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
                SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
                cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
                cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
                SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
                if (dr.Read())  //If Record matched
                {
                    Session["roll"] = txtUserRollNo.Text;

                    Response.Redirect("Unix-1.aspx");     //Open HomePage
                }
                else //If Unmatched
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Invalid Username/Password";
                }
                dr.Close();
                con.Close();

            }
             else if (DropDownExamName.SelectedIndex == 6)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
                con.Open();  // Open DB Connection
                string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
                SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
                cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
                cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
                SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
                if (dr.Read())  //If Record matched
                {
                    Session["roll"] = txtUserRollNo.Text;

                    Response.Redirect("Linux-1.aspx");     //Open HomePage
                }
                else //If Unmatched
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Invalid Username/Password";
                }
                dr.Close();
                con.Close();

            }
            else if (DropDownExamName.SelectedIndex==7)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["roll"] = txtUserRollNo.Text;
                
                Response.Redirect("MutualFund-1.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                lblMsg.Visible = true;
               lblMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();

        }
            else   if (DropDownExamName.SelectedIndex==8)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from StudentReg where RollNo=@t1 and S_Name=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", txtUserName.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["roll"] = txtUserRollNo.Text;
                
                Response.Redirect("IBPS-1.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                lblMsg.Visible = true;
               lblMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();

        }
        
    }
    protected void txtUserRollNo_TextChanged(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select ExamNameindex from StudentReg where RollNo=@t1"; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        cmd.Parameters.AddWithValue("@t1", txtUserRollNo.Text); //Passing parameters to the Query
        
        SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
        if (dr.Read())  //If Record matched
        {
            DropDownExamName.ClearSelection();
            int indx  = Convert.ToInt32(dr[0]);
            DropDownExamName.Items[indx].Selected = true;
            DropDownExamName.Enabled = false;
        }
        
        dr.Close();
        con.Close();
        
    }
}