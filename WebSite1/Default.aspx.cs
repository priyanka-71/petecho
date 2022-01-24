using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter  ada = new SqlDataAdapter();
    System.Data.DataSet ds = new DataSet();

    public SqlConnection DefaultConnection { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        show();
    }





    protected void Button1_Click1(object sender, EventArgs e)
    {
        string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        if (con == null) Console.WriteLine("No connection");
        con.Open();
         string querystring = "insert into Comments (Name,Comment,Time)values(@Name,@Comment,@Time)";
         SqlCommand cmd = new SqlCommand(querystring, con);
         cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Comment", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Time", DateTime.Now);
        cmd.ExecuteNonQuery();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void show()
    {
        string a;
        a = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        cmd.CommandText = "Select * from Comments order by Time desc";
        cmd.Connection = con;
        ada.SelectCommand = cmd;
        ada.Fill(ds,"Table");
        Repeater2.DataSource = ds;
        Repeater2.DataBind();
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}