using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vet_Record : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter ad = new SqlDataAdapter();
    System.Data.DataSet d = new DataSet();
    public SqlConnection DefaultConnection { get; private set; }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows != null)
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
    public void rep_bind()
    {
        string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select Name,Specialization,Title,TimeSlot,Date from [Appointment] where Token='" + TextBox1.Text + "'";
        cmd.Connection = con;

        ad.SelectCommand = cmd;
        ad.Fill(d);
        GridView1.DataSource = d;
        GridView1.DataBind();



    }

}