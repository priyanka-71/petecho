using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestAppointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();

        string Email = Request.QueryString["em"].ToString();
        string Pet = Request.QueryString["pt"].ToString();
        string Vet = Request.QueryString["vt"].ToString();
        string Date = Request.QueryString["dt"].ToString();
     
        string querystring = "insert into [Requests] values(@Email,@Pet,@Vet,@Date)";
        SqlCommand cmd = new SqlCommand(querystring, con);
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@Pet", Pet);
        cmd.Parameters.AddWithValue("@Vet", Vet);
        cmd.Parameters.AddWithValue("@Date", Date);
       
        cmd.ExecuteNonQuery();
        con.Close();

    }
}