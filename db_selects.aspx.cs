using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class db_selects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HentBrugere();
        }
        else
        {
            HentBrugere(Convert.ToInt32(CheckBoxListRoles.SelectedValue));
        }
    }
    private SqlConnection Conn()
    { 
        SqlConnection conn = new SqlConnection();
        //["ConnectionString"] fås fra min webconfig-fil copy/paste navnet
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBCONN"].ToString();
        conn.Open();
        return conn;
    } 
    private void HentBrugere()
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = Conn();
        cmd.CommandText = "SELECT * FROM bruger";

        DataTable dt = new DataTable();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        adapter.Fill(dt);
        repeater_brugere.DataSource = dt;
        repeater_brugere.DataBind();

    }
        
    private void HentBrugere(int rolle)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = Conn();
        cmd.CommandText = "SELECT * FROM bruger WHERE fk_rolle_id = @rolle";
        cmd.Parameters.Add("@rolle", SqlDbType.Int).Value = rolle;

        DataTable dt = new DataTable();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        adapter.Fill(dt);
        repeater_brugere.DataSource = dt;
        repeater_brugere.DataBind();
    }
}