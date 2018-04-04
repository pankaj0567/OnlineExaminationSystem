using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config
public partial class Admin_ResultDetails : System.Web.UI.Page
{
    public void connect()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from Result"; //SQL Query

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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int cid = (int)GridView1.DataKeys[e.RowIndex].Value;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "update Result set R_subject=@t1,R_marks=@t2,R_status=@t3,R_TimeDate=@t4,RollNo=@t5 where R_ID=@t6";
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        string subject = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string marks = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        int mark = Convert.ToInt32(marks);
        string status = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        
        string TimeDate = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string RllNo = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        int RollNo = Convert.ToInt32(RllNo);
        cmd.Parameters.AddWithValue("@t1", subject);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t2", mark);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t3", status);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t4", TimeDate);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t5", RollNo);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t6", cid);          //Passing parameters to the Query
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
        string qry = "delete from Result where R_ID=@t1";
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        cmd.Parameters.AddWithValue("@t1", cid);          //Passing parameters to the Query
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        connect();
    }
}