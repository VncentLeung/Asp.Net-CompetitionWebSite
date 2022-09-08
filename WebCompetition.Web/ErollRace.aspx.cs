using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebCompetition.DAL;
using WebCompetition.BLL;
public partial class ErollRace : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

       
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("ErollRace") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
        if (Session["sid"] == null)
        {
            Response.Write("<script>alert('请先登录')</script>");

            Response.Redirect("~/StuLogin.aspx");
        }
        else
        if (Request.QueryString["rid"] != null)
        {
             int rid =Convert.ToInt32( Request.QueryString["rid"]);
            string sid =( Session["sid"]).ToString();
            int ifExist =( from r in db.eroll where rid == r.rid && sid == r.sid select r).Count();
            if (ifExist!=0)
            {
                Response.Write("<script>alert('已经报过名，请勿重复报名！')</script>");
                Response.Redirect("~/MyRace.aspx");

            }
            var racenew =( from r in db.race where rid == r.rid select r).First();
            
            eroll erollnew = new eroll();
            erollnew.rid = racenew.rid;
            erollnew.rname = racenew.rname;
            erollnew.sid = (Session["sid"]).ToString();
            erollnew.esubmit = racenew.rsubmit;
            erollnew.estatus = false;
            db.eroll.InsertOnSubmit(erollnew);
            db.SubmitChanges();
            
            Response.Write("<script>alert('报名成功！')</script>");
            Response.Redirect("~/MyRace.aspx");

        }

    }
}