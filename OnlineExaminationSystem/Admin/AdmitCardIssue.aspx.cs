using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class Admin_AdmitCardIssue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select max(AdmitCardId) from AdmitCard"; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int AdmitID = Convert.ToInt32(dr[0]); // Converting data into Integer
        AdmitID++;      // Increment by one
        Session["AdmitID"] = AdmitID;
        dr.Close();
        con.Close();

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "insert into AdmitCard values(@t1,@t2,@t3,@t4,@t5,@t6)"; //SQL Query

        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        int AdmitID=Convert.ToInt32(Session["AdmitID"]);
        cmd.Parameters.AddWithValue("@t1", AdmitID);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t2", txtName.Text);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t3", txtFatherName.Text);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t4", txtRollNo.Text);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t5", DropDownExamName.Text);          //Passing parameters to the Query
        string pic="~/Uploaded/"+ txtPhoto.Text;
        cmd.Parameters.AddWithValue("@t6", pic);          //Passing parameters to the Query
        int i = cmd.ExecuteNonQuery(); //Execute SQL Query
        if (i == 1)  // Checking  Data Inserted or not
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Record Inserted";
        }
        else
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Record Not Inserted";
        }

        con.Close();
    }
    protected void txtRollNo_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select ExamNameindex from StudentReg where RollNo=@t1"; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        cmd.Parameters.AddWithValue("@t1", txtRollNo.Text); //Passing parameters to the Query

        SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
        if (dr.Read())  //If Record matched
        {
            DropDownExamName.ClearSelection();
            int indx = Convert.ToInt32(dr[0]);
            DropDownExamName.Items[indx].Selected = true;
            DropDownExamName.Enabled = false;
        }

        dr.Close();
        con.Close();
     
    }
}