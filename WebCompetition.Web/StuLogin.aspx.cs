using WebCompetition.DAL;
using WebCompetition.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sid = TextBox1.Text;
        string spassword = TextBox2.Text;
        var stu = from r in db.student where r.sid == sid select r;
        string stupwd = stu.First().spassword;
        if (stupwd != null)
            if (stupwd == spassword)
            {
                Session["sid"] = stu.First().sid;
                Session["sname"] = stu.First().sname;
                Session["snickname"] = stu.First().snickname;
                Response.Redirect("~/DefaultNews.aspx");
                
            }   
        else 
         Label1.Text = "学号或密码错误";
    }

 
}