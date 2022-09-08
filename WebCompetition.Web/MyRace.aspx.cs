using WebCompetition.DAL;
using WebCompetition.BLL;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyRace : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();
    protected void BindData()
    {
        string sid = (Session["sid"]).ToString();
        var results = from r in db.eroll
                     where r.sid == sid
                     select r;

         GridViewMyRace.DataSource = results;
        GridViewMyRace.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("MyRace") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
        if ((Session["sid"])!=null)
        BindData();
        else
        {
            Response.Write("<script>alert('请先登录')</script>");
        }
    }
}