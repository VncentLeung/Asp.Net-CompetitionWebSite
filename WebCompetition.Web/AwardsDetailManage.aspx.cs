using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebCompetition.DAL;

public partial class AwardsDetailManage : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["rid"] == null)
            Response.Redirect("~/AwardsManage.aspx");
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("AwardsDetailManage") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
        LinqDataSource1.Where = "rid==" + (Request.QueryString["rid"]).ToString();
    }

}