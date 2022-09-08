using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebCompetition.DAL;
using WebCompetition.BLL;
public partial class RaceDetailspx : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

        ContentPlaceHolder contentPlaceHolder = Master.FindControl("RaceDetail") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
        LinqDataSource1.Where = "rid==" + (Request.QueryString["rid"]).ToString() ;
        //LinqDataSource1.Where.Contains(Request.QueryString["rid"]);
        //LinqDataSource1.ContextTypeName = "";
        //if (Request.QueryString["rid"] != null)
        //{
        //    int rid = Convert.ToInt32(Request.QueryString["rid"]);
        //    var result = from r in db.race where rid == r.rid select r;

        //    DetailsView1.DataSource = result;
        //    DetailsView1.DataBind();
        //}
        //else
        //    Response.Redirect("~/DefaultNews.aspx");
    }
    //protected void DetailsView1_ModeChanged(object sender, DetailsViewModeEventArgs e)
    //{

    //    DetailsView1.ChangeMode(e.NewMode);

    //}

    protected void DvRace_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        DetailsView1.DataBind();
    }
    protected void DvRace_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        DetailsView1.DataBind();
    }

    protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
    {

    }
}