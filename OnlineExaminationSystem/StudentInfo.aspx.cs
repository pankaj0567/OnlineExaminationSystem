using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class StudentInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from StudentReg where RollNo=@t1"; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        cmd.Parameters.AddWithValue("@t1", txtRollNo.Text);          //Passing parameters to the Query
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblMsg.Visible = false;
            pnlStudentInfo.Visible = true;
            lblRollNo.Text=dr["RollNo"].ToString();
            lblName.Text = dr["S_Name"].ToString();
            lblFatherName.Text = dr["S_FatherName"].ToString();
            lblDOB.Text = dr["DOB"].ToString();
            lblEmail.Text = dr["Email"].ToString();
            lblAddr.Text = dr["Addr"].ToString();
            lblExamName.Text = dr["ExamName"].ToString();
            lblQual.Text = dr["Qual"].ToString();
            lblSex.Text = dr["Gender"].ToString();
            imgPic.ImageUrl = dr["pic"].ToString();
            lblTanID.Text = dr["TransactionID"].ToString();
            lblMob.Text = dr["ContactNo"].ToString();

        }
        else
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Roll Number Not Found";
            pnlStudentInfo.Visible = false;
        }
        con.Close();
    }
}