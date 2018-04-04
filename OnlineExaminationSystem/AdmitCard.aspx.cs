using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class AdmitCard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from AdmitCard where RollNo=@t1"; //SQL Query

        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin

        cmd.Parameters.AddWithValue("@t1", txtRollNo.Text);          //Passing parameters to the Query  
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            pnlAdmitDetails.Visible = true;

            lblRollNo.Text = txtRollNo.Text;
            lblName.Text = dr["Name"].ToString();
            lblFatherName.Text = dr["FatherName"].ToString();
            lblExamName.Text = dr["ExamName"].ToString();
           imgPic.ImageUrl = dr["pic"].ToString();
            
            lblMsg.Visible = false;
        }
        else
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Admit Card not Declared yet";
            pnlAdmitDetails.Visible = false;
        }
        dr.Close();
        con.Close();

    }
}