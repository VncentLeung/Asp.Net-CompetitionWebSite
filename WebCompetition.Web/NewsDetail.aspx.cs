using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewsDetail : System.Web.UI.Page
{


  
    protected void Page_Load(object sender, EventArgs e)
    {
         ContentPlaceHolder contentPlaceHolder = Master.FindControl("NewsDetail") as ContentPlaceHolder;
            contentPlaceHolder.Visible = true;
        if (Request.QueryString["nid"] == null)
            Response.Redirect("~/DefaultNews.aspx");
        LinqDataSource1.Where = "nid=" +( Request.QueryString["nid"]).ToString();
    }

   
}