using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config
/// <summary>
/// Summary description for BankService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class BankService : System.Web.Services.WebService {

    public BankService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public bool checkcard(int cno, string vu, int cvv, string cnm, int climit)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select * from  CardPayment where P_CardNo=@t1 and P_CVV=@t2 and P_NameOnCard=@t3 and ValidUpTo=@t4  and CardLimit>=@t5"; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        cmd.Parameters.AddWithValue("@t1", cno); //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t2", cvv); //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t3", cnm); //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t4", vu); //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t5", climit); //Passing parameters to the Query
       
        SqlDataReader dr = cmd.ExecuteReader(); //Execute SQL Query
        if (dr.HasRows)
        {
            return true;
        }
        else
        {
            return false;
        }
        dr.Close();
        cmd.Clone();
    }
}
