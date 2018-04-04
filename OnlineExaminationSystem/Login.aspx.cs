using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (DropDownType.SelectedIndex == 0)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from Student where usernm=@t1 and passwd=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", usernm.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", passwd.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["usr"] = usernm.Text;
                Session["roll"]=dr["S_ID"].ToString();
                Session["type"] = DropDownType.Text;
                Response.Redirect("StudentHome.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                LoginMsg.Visible = true;
                LoginMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();

        }

        else if (DropDownType.SelectedIndex == 1)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from Evaluator where usernm=@t1 and passwd=@t2"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            cmd.Parameters.AddWithValue("@t1", usernm.Text); //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", passwd.Text);
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())  //If Record matched
            {
                Session["usr"] = usernm.Text;
                Session["type"] = DropDownType.Text;
                Response.Redirect("EvaluatorHome.aspx");     //Open HomePage
            }
            else //If Unmatched
            {
                LoginMsg.Visible = true;
                LoginMsg.Text = "Invalid Username/Password";
            }
            dr.Close();
            con.Close();

        }
       
        

    }
}