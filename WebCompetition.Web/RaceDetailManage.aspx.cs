using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebCompetition.DAL;
using WebCompetition.BLL;
public partial class RaceDetailManage : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["rid"] == null)
            Response.Redirect("~/RaceManage.aspx");
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("RaceDetailManage") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
        LinqDataSource1.Where = "rid==" + (Request.QueryString["rid"]).ToString();
    }

    protected void DvRace_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        DetailsView1.DataBind();
    }
    protected void DvRace_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        DetailsView1.DataBind();
    }

}