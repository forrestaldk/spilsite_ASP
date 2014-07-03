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
        //Session["bruger_navn"] = "Hans";
        //bool LoggedIn = true;

        if (LoggedIn == true)
        {
            LoggedInView.ActiveViewIndex = -1;
            besked.Text = "Velkommen " + Session["bruger_navn"].ToString();
            btn_logud.Visible = true;

        }
        else
        {
            LoggedInView.ActiveViewIndex = 0;
            besked.Text += "Velkommen Gæst";
        }

        //Page_Load(null, null);
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
        cmd.Parameters.Add("@bnavn", SqlDbType.VarChar).Value = user;
        cmd.Parameters.Add("@bpass", SqlDbType.VarChar).Value = pass;

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Session["bruger_id"] = reader["bruger_id"].ToString();
            Session["bruger_navn"] = reader["bruger_navn"].ToString();
            Session["bruger_rolle"] = reader["fk_rolle_id"];
        }


    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        loginForm(tb_username.Text, tb_password.Text);
    }
    protected void btn_logud_Click(object sender, EventArgs e)
    {

    }
}
