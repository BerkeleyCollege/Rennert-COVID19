using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SharePoint;
using Microsoft.SharePoint.Client;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.SharePoint.WorkflowServices;
using Microsoft.SharePoint.Client.Workflow;
using Microsoft.SharePoint.Client.WorkflowServices;
using System.Web.UI.HtmlControls;

namespace Rennert_COVID19Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page lastPage = (Page)Context.Handler;
            Label1.Text = ((TextBox)lastPage.FindControl("questionName")).Text;
            Label2.Text = ((TextBox)lastPage.FindControl("choiceResult")).Text;
            results.Text = ((TextBox)lastPage.FindControl("choiceResult")).Text;
        }

        protected void CloseWindow (object sender, EventArgs e)
        { 
            Server.Transfer("Default.aspx");
        }
    }
}