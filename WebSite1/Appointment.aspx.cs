using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
       

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AllAppointments.aspx");
            }

    //[WebMethod]
    /*  public static void saveAppointment(string Token, string Name, string Specialization, string Title, string TimeSlot, string Date)
      {

          string a;
          a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
          SqlConnection con = new SqlConnection(a);
          con.Open();
          SqlCommand cmd = new SqlCommand("insert into Appointments values(@Token, @Name,@Specialization,@Title,@TimeSlot,@Date)", con);
          cmd.Parameters.AddWithValue("@Token",Token);
          cmd.Parameters.AddWithValue("@Name",Name);
          cmd.Parameters.AddWithValue("@Specialization",Specialization);
          cmd.Parameters.AddWithValue("@Title",Title);
          cmd.Parameters.AddWithValue("@TimeSlot",TimeSlot);
          cmd.Parameters.AddWithValue("@Date",Date);
          cmd.ExecuteNonQuery();
          con.Close();


      }*/
   /* public static void saveAppointment(Appointment Apt)

    {     string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Appointments values(@Token, @Name,@Specialization,@Title,@TimeSlot,@Date)", con);
        cmd.Parameters.AddWithValue("@Token", Apt.Token);
        cmd.Parameters.AddWithValue("@Name", Apt.Name);
        cmd.Parameters.AddWithValue("@Specialization", Apt.Specialization);
        cmd.Parameters.AddWithValue("@Title", Apt.Title);
        cmd.Parameters.AddWithValue("@TimeSlot", Apt.TimeSlot);
        cmd.Parameters.AddWithValue("@Date", Apt.Date);
        cmd.ExecuteNonQuery();
        con.Close();


    }*/

}
