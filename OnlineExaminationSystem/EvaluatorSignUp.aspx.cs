using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config


public partial class EvaluatorSignUp : System.Web.UI.Page
{
    int E_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select max(E_ID) from Evaluator "; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        E_ID = Convert.ToInt32(dr[0]); // Converting data into Integer
        E_ID++;      // Increment by one
        dr.Close();
        con.Close();

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "insert into Evaluator values(@t0,@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8)"; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        cmd.Parameters.AddWithValue("@t0", E_ID);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t1", txtName.Text);
        cmd.Parameters.AddWithValue("@t2", txtAddr.Text);
        cmd.Parameters.AddWithValue("@t3", txtEmail.Text);
        cmd.Parameters.AddWithValue("@t4", txtSubject.Text);
        cmd.Parameters.AddWithValue("@t5", txtName.Text);
        cmd.Parameters.AddWithValue("@t6", txtPasswd.Text);
        
        string gender;      // for radio Button
        if (rdbMale.Checked)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        cmd.Parameters.AddWithValue("@t7", gender);
        long mob = Convert.ToInt64(txtMob.Text);
        cmd.Parameters.AddWithValue("@t8",mob);
        int i = cmd.ExecuteNonQuery(); //Execute SQL Query
        if (i == 1)  // Checking  Data Inserted or not
        {
            lblSubmitMsg.Visible = true;
            lblSubmitMsg.Text = "Successful Sign Up";
        }
        else
        {
            lblSubmitMsg.Visible = true;
            lblSubmitMsg.Text = "Unsuccessful Sign Up";
        }

        con.Close();

    }
}