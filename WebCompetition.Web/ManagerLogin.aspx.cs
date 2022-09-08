using WebCompetition.DAL;
using WebCompetition.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagerLogin : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string mid = TextBox1.Text;
        string mpassword = TextBox2.Text;
        var manager = from r in db.manager where r.mid == mid select r;
        string mpwd = manager.First().mpassword;
        if (mpwd != null)
            if (mpwd == mpassword)
            {
                Session["mid"] = manager.First().mid;
                Session["mnickname"] = manager.First().mnickname;
                Response.Redirect("~/RaceManage.aspx");
            }
            else Label1.Text = "用户名或密码错误";
        else Label1.Text = "请输入管理员id和密码";
    }
}