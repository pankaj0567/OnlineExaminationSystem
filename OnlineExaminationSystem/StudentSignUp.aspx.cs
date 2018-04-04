using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class StudentSignUp : System.Web.UI.Page
{
    int rollno;   // declaring variable for auto generate roll no 
    protected void Page_Load(object sender, EventArgs e)
    {
        int d, m, y;  // declaring variable for later use
        if (!IsPostBack)    // code doesn't  repeat when submit the form
        {
            for (d = 1; d <= 31; d++)   // using for loop for inserting date in dropdownlist
            {
                DOBd.Items.Add(d.ToString());  // Adding date in DropDownList
            }
            for (m = 1; m <= 12; m++)  // using for loop for inserting month in dropdownlist
            {
                DOBm.Items.Add(m.ToString());  // Adding month in DropDownList
            }
            for (y = 1950; y <= 2017; y++) // using for loop for inserting Year in dropdownlist
            {
                DOBy.Items.Add(y.ToString());  // Adding Year in DropDownList
            }
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select max(S_ID) from Student "; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
         rollno = Convert.ToInt32(dr[0]); // Converting data into Integer
        rollno++;      // Increment by one
        dr.Close();
        con.Close();

    }
    protected void DOBd_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
      protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "insert into Student values(@t0,@t1+' '+@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9)"; //SQL Query
        
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin

        cmd.Parameters.AddWithValue("@t0", rollno);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t1", txtFirstName.Text); 
        cmd.Parameters.AddWithValue("@t2", txtLastName.Text);
        long mob = Convert.ToInt64(txtMob.Text);
        cmd.Parameters.AddWithValue("@t3", mob);
        cmd.Parameters.AddWithValue("@t4", txtAddr.Text);
          string DOB=DOBd.Text+'/'+DOBm.Text+'/'+DOBy.Text;
        cmd.Parameters.AddWithValue("@t5",DOB );
        string gender;      // for radio Button
        if (rdbMale.Checked)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        cmd.Parameters.AddWithValue("@t6", gender);
        cmd.Parameters.AddWithValue("@t7", txtEmail.Text);
        cmd.Parameters.AddWithValue("@t8", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@t9", txtPasswd.Text);

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