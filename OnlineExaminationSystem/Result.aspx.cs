using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from Result r, StudentReg s where r.RollNo=@t1 and r.RollNo=s.RollNo "; //SQL Query
       
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
       
        cmd.Parameters.AddWithValue("@t1",txtEnterRollNo.Text );          //Passing parameters to the Query  
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            pnlResultDetail.Visible = true;

            lblRollNo.Text = txtEnterRollNo.Text;
            lblMarks.Text = dr["R_marks"].ToString();

            lblDateTime.Text = dr["R_TimeDate"].ToString();
            lblExamName.Text = dr["R_subject"].ToString();
            lblStatus.Text = dr["R_status"].ToString();
            lblName.Text = dr["S_Name"].ToString();
            lblFatherName.Text = dr["S_FatherName"].ToString();
            lblMsg.Visible = false;
            btnPrintResult.Visible = true;
        }
        else
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Invalid Roll No";
            pnlResultDetail.Visible = false;
        }
        dr.Close();
        con.Close();

        }
    }
