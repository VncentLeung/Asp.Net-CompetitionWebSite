using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AwardsManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("AwardsManage") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
    }
}