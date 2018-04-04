using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config
public partial class Admin_IBPS : System.Web.UI.Page
{
    public void connect()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from IBPS"; //SQL Query

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
        string qry = "delete from IBPS where Q_no=@t1";
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
        string qry = "update IBPS set Q_subject=@t1,Q_option1=@t2,Q_option2=@t3,Q_option3=@t4,Q_option4=@t5,Q_ans=@t6 where Q_no=@t7";
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        string subject = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string opt1 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string opt2 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string opt3 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string opt4 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string ans = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        cmd.Parameters.AddWithValue("@t1", subject);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t2", opt1);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t3", opt2);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t4", opt3);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t5", opt4);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t6", ans);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t7", cid);          //Passing parameters to the Query

        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        connect();
    }
}