using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool LoggedIn = logintest();
        Session["bruger_navn"] = "Hans";

        if (LoggedIn == true)
        {
            LoggedInView.ActiveViewIndex = -1;
            login_besked.Text = "Velkommen " + Session["bruger_navn"].ToString();
        }
        else
        {
            LoggedInView.ActiveViewIndex = 0;
            login_besked.Text += "Velkommen Gæst";
        }
    }



    private bool logintest()
    {
        bool loggedIn = false;

        if (Session["bruger_id"] != null)
        {
            loggedIn = true;
        }

        return loggedIn;
    }

    private SqlConnection Conn()
    {
        SqlConnection conn = new SqlConnection();
        //["ConnectionString"] fås fra min webconfig-fil copy/paste navnet
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBCONN"].ToString();
        conn.Open();
        return conn;
    }

    private void loginForm(string user, string pass)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = Conn();
        cmd.CommandText = @"SELECT * FROM bruger 
                            WHERE bruger_username = @bnavn 
                            AND bruger_password = @bpass";
        cmd.Parameters.Add("@bnavn", SqlDbType.Int).Value = user;
        cmd.Parameters.Add("@bpass", SqlDbType.Int).Value = pass;

        SqlDataReader reader = new SqlDataReader();
        if (reader.Read)
	{
        Session["bruger_id"] = reader["bruger_id"].ToString();
        Session["bruger_rolle"] = reader["fk_rolle_id"].ToString();

	}
        

    }

    protected void btn_login_Click(object sender, EventArgs e)
    {

    }
}
