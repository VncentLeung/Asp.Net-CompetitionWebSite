using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using WebCompetition.DAL;

public partial class ForgetPwd : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnResetPwd_Click(object sender, EventArgs e)
    {
      

            if (TextBox1.Text.Length!=0 &&  TextBox2.Text.Length!=0)
            {
            var res = (from r in db.student where r.sid == TextBox1.Text && r.semail == TextBox2.Text select r).First();
            var res2 = (from r in db.manager where r.mid == TextBox1.Text && r.mmail == TextBox2.Text select r).First();
            string pwdold=null;
            if (res != null)
                pwdold = res.spassword;
            else if (res != null)
                pwdold = res2.mpassword;

            if (pwdold != null)
            {
                MailMessage mailMsg = new MailMessage();//两个类，别混了，要引入System.Net这个Assembly
                    mailMsg.From = new MailAddress("2589105869@qq.com", "MyPetShop找回密码");//源邮件地址 ，发件人的地址
                                                                                         //  mailMsg.To.Add(new MailAddress((Session["Email"]).ToString(), "用户"));//目的邮件地址。可以有多个收件人，收件人的地址
                    mailMsg.To.Add(new MailAddress(TextBox2.Text.Trim(), "用户"));//目的邮件地址。可以有多个收件人，收件人的地址

                
                    mailMsg.Subject = "找回密码";//发送邮件的标题 
                    mailMsg.Body = "你的密码为" + pwdold;//发送邮件的内容 
                                                            //smtp 是传输协议
                    SmtpClient client = new SmtpClient("smtp.qq.com");//smtp.163.com，smtp.qq.com
                    client.EnableSsl = false;
                    client.UseDefaultCredentials = false;
                    client.Port = 587;
                    client.Credentials = new NetworkCredential("2589105869@qq.com", "vcbunquarlfjdich");  //用户名和密码
                    client.Send(mailMsg);  //发送
                    Label1.Text = "已发送邮件，注意查收";
            }

            }
            else
                Label1.Text = "用户名与邮箱不匹配";
        
    }

   
}