using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for TestWebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class TestWebService : System.Web.Services.WebService {

    public TestWebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public bool CardDetails(int CardNo, int cvv, string Name, string Upto, string CardLimit)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBcon"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("Select * from CardPayment where P_CardNo=@t1 and P_CVV=@t2 and P_NameOnCard=@t3 and ValidUpTo=@t4 and CardLimit>=@t5", con);
            cmd.Parameters.AddWithValue("@t1", CardNo);
            cmd.Parameters.AddWithValue("@t2", cvv);
            cmd.Parameters.AddWithValue("@t3", Name);
            cmd.Parameters.AddWithValue("@t4", Upto);
            cmd.Parameters.AddWithValue("@t5", CardLimit);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
    }
    
}
