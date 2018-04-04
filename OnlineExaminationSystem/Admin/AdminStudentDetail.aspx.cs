using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config
public partial class Admin_AdminStudentDetail : System.Web.UI.Page
{
    public void connect()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from Student"; //SQL Query

        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {

            GridView1.DataSource = dr;
            GridView1.DataBind();
        }

        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            connect();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        connect();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int cid = (int)GridView1.DataKeys[e.RowIndex].Value;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "delete from Student where S_ID=@t1";
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        cmd.Parameters.AddWithValue("@t1", cid);          //Passing parameters to the Query
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        connect();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        connect();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int cid = (int)GridView1.DataKeys[e.RowIndex].Value;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "update Student set S_Name=@t1,S_phn=@t2,S_Addr=@t3,S_DOB=@t4,S_Sex=@t5,EmailId=@t6,usernm=@t7,passwd=@t8 where S_ID=@t9";
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string phn = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        long phnn = Convert.ToInt64(phn);
        string addr = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

        string DOB = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string sex = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string EmailId = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string usernm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        string passwd = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        cmd.Parameters.AddWithValue("@t1", name);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t2", phnn);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t3", addr);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t4", DOB);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t5", sex);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t6", EmailId);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t7", usernm);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t8", passwd);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t9", cid);          //Passing parameters to the Query
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        connect();
    }
    
}