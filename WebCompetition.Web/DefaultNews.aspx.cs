using WebCompetition.DAL;
using WebCompetition.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();

    protected void BindData()
    {
        var results = from r in db.news
                      select r;

        GridViewNews.DataSource = results;
        GridViewNews.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        ContentPlaceHolder contentPlaceHolder = Master.FindControl("DefaultNews") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;

        BindData();


    }
}