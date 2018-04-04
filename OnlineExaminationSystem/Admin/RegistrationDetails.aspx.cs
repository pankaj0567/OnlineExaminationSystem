using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config
public partial class Admin_RegistrationDetails : System.Web.UI.Page
{
    public void connect()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from StudentReg"; //SQL Query

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
        string qry = "delete from StudentReg where RollNo=@t1";
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
        string qry = "update StudentReg set S_Name=@t1,S_FatherName=@t2,DOB=@t3,Gender=@t4,Category=@t5,Addr=@t6,Country=@t7,City=@t8,PinCode=@t9,ContactNo=@t10,Email=@t11,Qual=@t12,Nationality=@t13,BoardUniv=@t14,YearPassing=@t15,TransactionID=@t16,ExamName=@t17,pic=@t18,sign=@t19 where RollNo=@t20";
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string FatherName = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string DOB = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        
        string sex = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string cate = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string addr = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string country= ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        string city = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        string pincode = ((TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0]).Text;
        string Mb = ((TextBox)GridView1.Rows[e.RowIndex].Cells[11].Controls[0]).Text;
        long mob = Convert.ToInt64(Mb);
        string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[12].Controls[0]).Text;
        string qual = ((TextBox)GridView1.Rows[e.RowIndex].Cells[13].Controls[0]).Text;
        string nationality = ((TextBox)GridView1.Rows[e.RowIndex].Cells[14].Controls[0]).Text;
        string board = ((TextBox)GridView1.Rows[e.RowIndex].Cells[15].Controls[0]).Text;
        string year = ((TextBox)GridView1.Rows[e.RowIndex].Cells[16].Controls[0]).Text;
        string tran = ((TextBox)GridView1.Rows[e.RowIndex].Cells[17].Controls[0]).Text;
        int tranId = Convert.ToInt32(tran);
        string Examnm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[18].Controls[0]).Text;
        string pic = ((TextBox)GridView1.Rows[e.RowIndex].Cells[19].Controls[0]).Text;
        string sign = ((TextBox)GridView1.Rows[e.RowIndex].Cells[20].Controls[0]).Text;
        cmd.Parameters.AddWithValue("@t1", name);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t2", FatherName);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t3", DOB);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t4", sex);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t5", cate);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t6", addr);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t7", country);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t8", city);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t9", pincode);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t10", mob);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t11", email);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t12", qual);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t13", nationality);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t14", board);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t15", year);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t16", tranId);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t17", Examnm);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t18", pic);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t19", sign);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t20", cid);          //Passing parameters to the Query
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        connect();
    }
}