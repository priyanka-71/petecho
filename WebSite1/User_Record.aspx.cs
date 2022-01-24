using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Record : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter adaa = new SqlDataAdapter();
    System.Data.DataSet dss = new DataSet();
    public SqlConnection DefaultConnection { get; private set; }
    public  string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows!=null)
        {
           
            rep_bind();
            GridView1.Visible = true;
            TextBox1.Text = "";
            Label2.Text = "";
        }
        else
        {
            GridView1.Visible = false;
            Label2.Visible = true;
            Label2.Text = "The search Term " + TextBox1.Text + " Is Not Available in the Records";
        }
    }
    public void rep_bind() { 
        string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        cmd.Connection = con;        
        cmd.CommandText = "Select * from [Requests] where Email='" +TextBox1.Text + "'";
        cmd.Connection = con;
       
        adaa.SelectCommand = cmd;
        adaa.Fill(dss);
        GridView1.DataSource = dss;
        GridView1.DataBind();
        


    }

}