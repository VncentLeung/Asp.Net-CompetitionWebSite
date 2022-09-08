using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mnickname"] != null)
        {
            string mnickname = (Session["mnickname"]).ToString();

            Label1.Text = "你好 " + mnickname;
            AlertLogin.Visible = false;
        }
        else
            Response.Redirect("~/ManagerLogin.aspx");
    }
}
