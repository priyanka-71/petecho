using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vtoken : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter adaa = new SqlDataAdapter();
    System.Data.DataTable dss = new DataTable();
    public SqlConnection DefaultConnection { get; private set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        string token = Request.QueryString["token"];
        string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select * from [Vets] where Token='" + token + "'";
        cmd.Connection = con;
        adaa.SelectCommand = cmd;
        adaa.Fill(dss);
        string sp;
        string nm;
        if(dss.Rows.Count>0)
        {
            sp = dss.Rows[0].Field<string>(2);
            nm = dss.Rows[0].Field<string>(0);
        }
        else
        {
            sp = "";
            nm = "";
        }
        Response.Redirect("AppointmentCalendar.html?tk=" + token + "&nm=" + nm + "&sp=" + sp +"#vtoken");
        //ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "vtoken();", true);

    }
}