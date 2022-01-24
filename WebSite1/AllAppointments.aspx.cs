using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllAppointments : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter ad = new SqlDataAdapter();
    System.Data.DataSet d = new DataSet();
    public SqlConnection DefaultConnection { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
    }
    public void rep_bind()
    {
        string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select Name,Specialization,Title,TimeSlot,Date from [Appointment] where Specialization='" + DropDownList1.SelectedItem.Text + "'";
        cmd.Connection = con;

        ad.SelectCommand = cmd;
        ad.Fill(d);
        GridView2.DataSource = d;
        GridView2.DataBind();



    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (GridView2.Rows!=null)
        {

            rep_bind();
            GridView2.Visible = true;
            
            Label2.Text = "";
        }
        else
        {
            GridView2.Visible = false;
            Label2.Visible = true;
            Label2.Text = "The search Term " + DropDownList1.SelectedItem.Text + " Is Not Available in the Records";
        }
    } 
}