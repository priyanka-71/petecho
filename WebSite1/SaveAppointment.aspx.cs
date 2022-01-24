using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SaveAppointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        string Token = Request.QueryString["tn"].ToString();
        string Name= Request.QueryString["nm"].ToString();
        string Specialization= Request.QueryString["sp"].ToString();
        string Title= Request.QueryString["tt"].ToString();
        string TimeSlot= Request.QueryString["ts"].ToString();
        string Date= Request.QueryString["dt"].ToString();
        string querystring = "insert into [Appointment] values(@Token,@Name,@Specializaton,@Title,@TimeSlot,@Date)";
        SqlCommand cmd = new SqlCommand(querystring, con);
        cmd.Parameters.AddWithValue("@Token", Token);
        cmd.Parameters.AddWithValue("@Name", Name);
        cmd.Parameters.AddWithValue("@Specializaton",Specialization);
        cmd.Parameters.AddWithValue("@Title", Title);
        cmd.Parameters.AddWithValue("@TimeSlot", TimeSlot);
        cmd.Parameters.AddWithValue("@Date",Date);
        cmd.ExecuteNonQuery();
        con.Close();
       
    }
}