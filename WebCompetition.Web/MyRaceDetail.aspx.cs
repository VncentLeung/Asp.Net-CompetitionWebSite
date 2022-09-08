using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebCompetition.DAL;
using WebCompetition.BLL;
public partial class MyRaceDetail : System.Web.UI.Page
{
    WebCompetitionDataContext db = new WebCompetitionDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["rid"] == null)
            Response.Redirect("~/MyRace.aspx");
        ContentPlaceHolder contentPlaceHolder = Master.FindControl("MyRaceDetail") as ContentPlaceHolder;
        contentPlaceHolder.Visible = true;
        LinqDataSource1.Where = "rid==" + (Request.QueryString["rid"]).ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int rid =Convert.ToInt32( Request.QueryString["rid"]);
        string sid = (Session["sid"]).ToString();
        String savePath = @"~:\111\";
        if (FileUpload1.HasFile)
        {
            String filename;
            filename = FileUpload1.FileName;
            savePath += filename;
            FileUpload1.SaveAs(Server.MapPath("~/Files/")+ filename);
            var result = from r in db.eroll where r.rid == rid && r.sid == sid select r;
            foreach (var res in result)
            {
                res.esubmitfile = "~/Files/" + filename;
                res.estatus = true;
            }
            db.SubmitChanges();
            DetailsView1.DataBind();
        }
        else
        {
            Page.Response.Write("<script>alert('出现错误')</script>");
            Response.Redirect("~/MyRace.aspx");
        }
    }
}