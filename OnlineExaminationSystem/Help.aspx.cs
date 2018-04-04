using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Help : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }

   
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View4);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View6);
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View5);
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View7);
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View8);
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View9);
    }
    protected void LinkButton16_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View10);
    }
}