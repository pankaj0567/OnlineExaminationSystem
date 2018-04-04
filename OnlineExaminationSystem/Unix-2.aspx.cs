using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config
public partial class Unix_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime time = DateTime.Now;             // Use current time.
            string formatDate = "dd MMMM yyyy";   // Use this format.
            string formatHour = "HH";
            string formatTime = ":mm:ss";
            lblCurrentDate.Text = time.ToString(formatDate); // for getting Date
            lblCurrentHour.Text = time.ToString(formatHour); // for getting Hour
            lblCurrentTime.Text = time.ToString(formatTime); // for getting Time
            string format = "dd MMMM yyyy HH:mm:ss";           // declare varivable for exam starting time
            Session["NowDateTime"] = time.ToString(format);   // making session 
        }
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from Unix"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            dr.Read();
            rdbOptionA.Text = dr["Q_option1"].ToString();  // inserting option in radio button
            rdbOptionB.Text = dr["Q_option2"].ToString();  // inserting option in radio button
            rdbOptionC.Text = dr["Q_option3"].ToString(); // inserting option in radio button
            rdbOptionD.Text = dr["Q_option4"].ToString();  // inserting option in radio button
            Session["Qno"] = 1;                           // Session for Question Number
            string ans = dr["Q_ans"].ToString();
            Session["Ans"] = ans;                     // Session for comparing ans later
            lblQNo.Text = Session["Qno"].ToString();    // inserting Question Number in label
            lblQuestion.Text = dr["Q_subject"].ToString(); // inserting Question in label
            con.Close(); // connection close
            Session["marks"] = 0;
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        conn.Open();  // Open DB Connection
        string qury = "select max(R_ID) from Result "; //SQL Query
        SqlCommand cmmd = new SqlCommand(qury, conn); // Send Qry for executioin
        SqlDataReader drr = cmmd.ExecuteReader();
        drr.Read();
        int R_ID = Convert.ToInt32(drr[0]); // Converting data into Integer
        R_ID++;      // Increment by one
        Session["R_ID"] = R_ID;

    }

    protected void btnSubmitExam_Click(object sender, EventArgs e)
    {
        string ans = Session["Ans"].ToString();
        string ansCam = null;
        if (rdbOptionA.Checked) // checking which radio button checked
        {
            ansCam = rdbOptionA.Text;
        }
        else if (rdbOptionB.Checked)  // checking which radio button checked
        {
            ansCam = rdbOptionB.Text;
        }
        else if (rdbOptionC.Checked)   // checking which radio button checked
        {
            ansCam = rdbOptionC.Text;

        }
        else if (rdbOptionD.Checked)   // checking which radio button checked
        {
            ansCam = rdbOptionD.Text;
        }
        int marks = Convert.ToInt32(Session["marks"]);
        if (ans.Equals(ansCam, StringComparison.OrdinalIgnoreCase)) // comparing answer is right or not
        {
            marks = marks + 10;        // storing marks in variable if question is right
            Session["marks"] = marks;  // making Session of marks
        }
        else
        {
            marks = marks - 1; // reducing marks when answer is wrong
            Session["marks"] = marks;
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "insert into Result values(@t1,@t2,@t3,@t4,@t5,@t6)"; //SQL Query

        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        int R_ID = Convert.ToInt32(Session["R_ID"]);
        cmd.Parameters.AddWithValue("@t1", R_ID);          //Passing parameters to the Query
        string subject = "Unix";
        cmd.Parameters.AddWithValue("@t2", subject);          //Passing parameters to the Query
        marks = Convert.ToInt32(Session["marks"]);
        cmd.Parameters.AddWithValue("@t3", marks);          //Passing parameters to the Query
        string status;
        if (marks >= 40)
        {
            status = "Pass";
        }
        else
        {
            status = "Fail";
        }
        cmd.Parameters.AddWithValue("@t4", status);          //Passing parameters to the Query
        string NowDateTime = Session["NowDateTime"].ToString();
        cmd.Parameters.AddWithValue("@t5", NowDateTime);          //Passing parameters to the Query
        int S_Rolno = Convert.ToInt32(Session["roll"]);
        cmd.Parameters.AddWithValue("@t6", S_Rolno);          //Passing parameters to the Query
        cmd.ExecuteNonQuery(); //Execute SQL Query
        Response.Redirect("Result.aspx");
        con.Close(); // connection close
    }


    protected void btnNextQuestion_Click(object sender, ImageClickEventArgs e)
    {
        string ans = Session["Ans"].ToString();
        string ansCam = null;
        if (rdbOptionA.Checked) // checking which radio button checked
        {
            ansCam = rdbOptionA.Text;
        }
        else if (rdbOptionB.Checked)  // checking which radio button checked
        {
            ansCam = rdbOptionB.Text;
        }
        else if (rdbOptionC.Checked)   // checking which radio button checked
        {
            ansCam = rdbOptionC.Text;

        }
        else if (rdbOptionD.Checked)   // checking which radio button checked
        {
            ansCam = rdbOptionD.Text;
        }
        int marks = Convert.ToInt32(Session["marks"]);
        if (ans.Equals(ansCam, StringComparison.OrdinalIgnoreCase)) // comparing answer is right or not
        {
            marks = marks + 10;        // storing marks in variable if question is right
            Session["marks"] = marks;  // making Session of marks
        }
        else
        {
            marks = marks - 1; // reducing marks when answer is wrong
            Session["marks"] = marks;
        }
        int Qno = Convert.ToInt32(Session["Qno"]);
        Qno++;
        Session["Qno"] = Qno;
        if (Qno == 10)
        {
            btnNextQuestion.Visible = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from Unix where Q_no=" + "'" + Qno + "'"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())
            {
                rdbOptionA.Text = dr["Q_option1"].ToString();  // inserting option in radio button
                rdbOptionB.Text = dr["Q_option2"].ToString();  // inserting option in radio button
                rdbOptionC.Text = dr["Q_option3"].ToString();  // inserting option in radio button
                rdbOptionD.Text = dr["Q_option4"].ToString(); // inserting option in radio button
                lblQNo.Text = Qno.ToString();
                lblQuestion.Text = dr["Q_subject"].ToString(); // inserting Question in label
                string answer = dr["Q_ans"].ToString();
                Session["Ans"] = answer;
            }
            rdbOptionA.Checked = false; // uncheck checked radio button
            rdbOptionB.Checked = false; // uncheck checked radio button
            rdbOptionC.Checked = false; // uncheck checked radio button
            rdbOptionD.Checked = false; // uncheck checked radio button
            con.Close(); // connection close            

        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "select * from Unix where Q_no=" + "'" + Qno + "'"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
            if (dr.Read())
            {
                rdbOptionA.Text = dr["Q_option1"].ToString();  // inserting option in radio button
                rdbOptionB.Text = dr["Q_option2"].ToString();  // inserting option in radio button
                rdbOptionC.Text = dr["Q_option3"].ToString();  // inserting option in radio button
                rdbOptionD.Text = dr["Q_option4"].ToString();  // inserting option in radio button
                lblQNo.Text = Qno.ToString();
                lblQuestion.Text = dr["Q_subject"].ToString(); // inserting Question in label
                string answer = dr["Q_ans"].ToString();
                Session["Ans"] = answer;
            }
            rdbOptionA.Checked = false; // uncheck checked radio button
            rdbOptionB.Checked = false; // uncheck checked radio button
            rdbOptionC.Checked = false; // uncheck checked radio button
            rdbOptionD.Checked = false; // uncheck checked radio button
            con.Close(); // connection close
        }
    }
}