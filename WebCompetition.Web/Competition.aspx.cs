using WebCompetition.DAL;
using WebCompetition.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Competition : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();

    protected void BindData()
    {
        var results = from r in db.race
                      select r;

        GridViewRace.DataSource = results;
        GridViewRace.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("Competition") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
        BindData();
    }
}