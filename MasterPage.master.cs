using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool LoggedIn = login();
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

    private bool login(string user, string pass)
    {
        bool loggedIn = false;

        return loggedIn;
    }


}
