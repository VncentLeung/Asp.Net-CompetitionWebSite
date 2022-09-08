using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebCompetition.DAL;

public partial class Register : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string sid, spassword, sname, snickname, ssex, semail, sphone;
        sid = TextBox1.Text;
        spassword = TextBox2.Text;
        sname = TextBox3.Text; 
        snickname = TextBox4.Text;
        ssex = TextBox5.Text;
        semail = TextBox6.Text;
        sphone = TextBox7.Text;
        var result = from r in db.student where sid == r.sid select r;
        if (result.Count() == 0)
        {
            student stu = new student();
            stu.sid = sid;
            stu.spassword = spassword;
             stu.sname = sname;
            stu.snickname = snickname;
            stu.ssex = ssex;
            stu.semail = semail;
             stu.sphone = sphone;
            db.student.InsertOnSubmit(stu);
            Response.Redirect("~/StuLogin.aspx");
        }
    }
}