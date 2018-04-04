using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class PaymentDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from Payment where TransactionID=@t1"; //SQL Query

        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin

        cmd.Parameters.AddWithValue("@t1", txtEnterTranId.Text );          //Passing parameters to the Query  
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Transaction ID Not Found";
            
        }
        dr.Close();
        con.Close();
    }
}