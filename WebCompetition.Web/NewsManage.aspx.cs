using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewsManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("NewsManage") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
    }
}