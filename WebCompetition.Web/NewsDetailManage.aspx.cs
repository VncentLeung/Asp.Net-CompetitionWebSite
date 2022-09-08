using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewsDetailManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("NewsDetailManage") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
        if (Request.QueryString["nid"] == null)
            Response.Redirect("~/NewsManage.aspx");
        LinqDataSource1.Where = "nid==" + (Request.QueryString["nid"]).ToString();
    }
    protected void Dv_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        DetailsView1.DataBind();
    }
    protected void Dv_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        DetailsView1.DataBind();
    }
}