using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //For DB connectivity: ADO.NET
using System.Data.SqlClient;    //For DB connectivity: ADO.NET
using System.Configuration;     //For web.config
public partial class Registration : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (FileUploadPicture.HasFile)
            UpLoadAndDisplay();
        if (FileUploadSign.HasFile) 
            UpLoadAndDisplay1();
        int d, m, y;  // declaring variable for later use
        if (!IsPostBack)    // code doesn't  repeat when submit the form
        {
            for (d = 1; d <= 31; d++)   // using for loop for inserting date in dropdownlist
            {
                DOBd.Items.Add(d.ToString());  // Adding date in DropDownList
                YearPassingd.Items.Add(d.ToString());  // Adding date in DropDownList
                
            }
            for (m = 1; m <= 12; m++)  // using for loop for inserting month in dropdownlist
            {
                DOBm.Items.Add(m.ToString());  // Adding month in DropDownList
                YearPassingM.Items.Add(m.ToString());  // Adding month in DropDownList
                DropDownCardValidM.Items.Add(m.ToString());
            }
            for (y = 1950; y <= 2017; y++) // using for loop for inserting Year in dropdownlist
            {
                DOBy.Items.Add(y.ToString());  // Adding Year in DropDownList
                YearPassingY.Items.Add(y.ToString());  // Adding Year in DropDownList
            }

            
            for (y = 2017; y <= 2025; y++) // using for loop for inserting Year in dropdownlist
            {
                DropDownCardValidY.Items.Add(y.ToString());
            }
        }
        lblDate.Text = System.DateTime.Now.ToLongDateString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "select max(TransactionID) from Payment"; //SQL Query
        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int  TranID = Convert.ToInt32(dr[0]); // Converting data into Integer
        TranID++;      // Increment by one
        Session["TranID"]=TranID;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        conn.Open();  // Open DB Connection
        string qrry = "select max(RollNo) from StudentReg"; //SQL Query
        SqlCommand cmmd = new SqlCommand(qrry, conn); // Send Qry for executioin
        SqlDataReader drr = cmmd.ExecuteReader();
        drr.Read();
        int rollno = Convert.ToInt32(drr[0]); // Converting data into Integer
        rollno++;      // Increment by one
        Session["Rollno"] = rollno;
        SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        connn.Open();  // Open DB Connection
        string qrrry = "select ExamFee from Price where ExamName=@t7"; //SQL Query
        SqlCommand cmmmd = new SqlCommand(qrrry, connn); // Send Qry for executioin
        cmmmd.Parameters.AddWithValue("@t7", DropDownExamName.Text);          //Passing parameters to the Query
        SqlDataReader drrr = cmmmd.ExecuteReader();
        drrr.Read();
        txtAmount.ReadOnly = true;
        txtAmount.Text = drrr["ExamFee"].ToString();
        
        
        drr.Close();
        conn.Close();
        dr.Close();
        con.Close();
        drrr.Close();
        conn.Close();
        }
    private void UpLoadAndDisplay()
    {
        
        string imgName = FileUploadPicture.FileName;
        string imgPath = imgName; 
        int imgSize = FileUploadPicture.PostedFile.ContentLength;
        if (FileUploadPicture.HasFile)
        {
            FileUploadPicture.SaveAs(Server.MapPath("~/Uploaded/" + imgPath));
            imgPic.ImageUrl = "~/Uploaded/" + imgPath;
            string pic = "~/Uploaded/" + imgPath;
            Session["pic"] = pic;
        }
       
       
          
       
    }
    private void UpLoadAndDisplay1()
    {
        string imgName1 = FileUploadSign.FileName;
        string imgPath1 = imgName1;
        int imgSize = FileUploadSign.PostedFile.ContentLength;
        if (FileUploadSign.HasFile)
        {
            FileUploadSign.SaveAs(Server.MapPath("~/Uploaded/" + imgPath1));
            imgSign.ImageUrl = "~/Uploaded/" + imgPath1;
            string sign = "~/Uploaded/" + imgPath1;
            Session["sign"] = sign;
            
        } 
    }
    

    protected void btnPayAmount_Click(object sender, EventArgs e)
    {
        string bnm = DropDownBankName.Text;
        int cno = Convert.ToInt32(txtCardNo.Text);
        string vu = DropDownCardValidM.Text + "/" + DropDownCardValidY.Text;
        int cvv = Convert.ToInt32(txtCardCVV.Text);
        string cnm = txtCardName.Text;
        int amt = Convert.ToInt32(txtAmount.Text);
        string pdate = lblDate.Text;
        BankService bs = new BankService();
        bool res = bs.checkcard(cno, vu, cvv, cnm, amt);
        if (res == false)
        {
            lblPaymentMsg.Visible = true;
            lblPaymentMsg.Text = "Invalid Card Details";
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            con.Open();  // Open DB Connection
            string qry = "insert into Payment values(@t1,@t2,@t3,@t4,@t5,@t6,@t7)"; //SQL Query
            SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
            conn.Open();  // Open DB Connection
            string qrry = "select ExamFee from Price where ExamName=@t8"; //SQL Query
            SqlCommand cmmd = new SqlCommand(qrry, conn); // Send Qry for executioin
            
            
            int TranID = Convert.ToInt32(Session["TranID"]);
            cmd.Parameters.AddWithValue("@t1", TranID);          //Passing parameters to the Query
            cmd.Parameters.AddWithValue("@t2", pdate );
            cmd.Parameters.AddWithValue("@t3", cno);
            cmd.Parameters.AddWithValue("@t4", cnm);
            cmd.Parameters.AddWithValue("@t5", bnm);
            cmd.Parameters.AddWithValue("@t6", amt);
            int Rollno = Convert.ToInt32(Session["Rollno"]);
            
            cmd.Parameters.AddWithValue("@t7", Rollno);
            
            cmd.ExecuteNonQuery(); //Execute SQL Query
            lblPaymentMsg.Visible = true;
            lblPaymentMsg.Text="Transaction Successful";
            lblTranID.Visible=true;
            lblTranIDNo.Visible=true;
            lblTranIDNo.Text=TranID.ToString();
            btnPrint.Visible = true;
            btnPayAmount.Visible = false;
         con.Close();
       
        }
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);  // Create DB Connection
        con.Open();  // Open DB Connection
        string qry = "insert into StudentReg values(@t0,@t1+' '+@t2,@t3+' '+@t4,@t5,@t6,@t7,@t8,@t9,@t10,@t11,@t12,@t13,@t14,@t15,@t16,@t17,@t18,@t19,@t20,@t21,@t22)"; //SQL Query

        SqlCommand cmd = new SqlCommand(qry, con); // Send Qry for executioin

        cmd.Parameters.AddWithValue("@t0", Session["Rollno"]);          //Passing parameters to the Query
        cmd.Parameters.AddWithValue("@t1", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@t2", txtLastName.Text);
        cmd.Parameters.AddWithValue("@t3", txtFatherName.Text);
        cmd.Parameters.AddWithValue("@t4", txtFatherLastName.Text);
        string DOB = DOBd.Text + "/" + DOBm.Text + "/" + DOBy.Text;
        cmd.Parameters.AddWithValue("@t5", DOB);
        string gender;      // for radio Button
        if (rdbMale.Checked)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        cmd.Parameters.AddWithValue("@t6", gender);
        string Categry="";
        if (rdbGeneral.Checked)
        {
            Categry = "General";
        }
        else if (rdbOBC.Checked)
        {
            Categry = "OBC";
        }
        else if (rdbSC.Checked)
        {
            Categry = "SC";
        }
        else if (rdbOthers.Checked)
        {
            Categry = "Others";
        }
        cmd.Parameters.AddWithValue("@t7", Categry);
        cmd.Parameters.AddWithValue("@t8", txtAddr.Text);
        cmd.Parameters.AddWithValue("@t9", DropDownCountry.Text);
        cmd.Parameters.AddWithValue("@t10", DropDownState.Text);
        cmd.Parameters.AddWithValue("@t11", txtPinCode.Text );
        long mob = Convert.ToInt64(txtMob.Text);
        cmd.Parameters.AddWithValue("@t12", mob);
        cmd.Parameters.AddWithValue("@t13", txtEmail.Text);


        
        cmd.Parameters.AddWithValue("@t14", DropDownQual.Text);
        cmd.Parameters.AddWithValue("@t15", DropDownNationality.Text);
        cmd.Parameters.AddWithValue("@t16", DropDownBoard.Text);
        string yearpassing=YearPassingd.Text+"/"+YearPassingM.Text+"/"+YearPassingY.Text;
      
        cmd.Parameters.AddWithValue("@t17", yearpassing);
        int TranID = Convert.ToInt32(Session["TranID"]);
        cmd.Parameters.AddWithValue("@t18", TranID);

        
        cmd.Parameters.AddWithValue("@t19", Session["pic"]);
        
        cmd.Parameters.AddWithValue("@t20", Session["sign"]);
        cmd.Parameters.AddWithValue("@t21", DropDownExamName.Text);
        int index = Convert.ToInt32(DropDownExamName.SelectedIndex);
        cmd.Parameters.AddWithValue("@t22", index);
           int i=cmd.ExecuteNonQuery(); //Execute SQL Query
           if (i == 1)
           {
               pnlDetails.Visible = true;
               lblName.Text = txtFirstName.Text + " " + txtLastName.Text;
               lblDate.Text = System.DateTime.Now.ToShortDateString();
               lblAddr.Text = txtAddr.Text;
               lblExamName.Text = DropDownExamName.Text;
               lblFatherName.Text = txtFirstName.Text + " " + txtFatherLastName.Text;
               lblRegNo.Text = Session["Rollno"].ToString();
               

           }
           con.Close();
    }
}