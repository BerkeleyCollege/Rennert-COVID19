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
using Rennert_COVID19Web;


namespace Rennert_COVID19Web
{
    public partial class Default : System.Web.UI.Page
    {
        static Uri _site = new Uri("https://rennert365.sharepoint.com/");
        string realm = TokenHelper.GetRealmFromTargetUrl(_site);

        protected void submit(object sender, EventArgs e)
        {
            using (ClientContext clientContext = TokenHelper.GetClientContextWithAccessToken(_site.ToString(), GetAccessToken()))
            {
                List list = clientContext.Web.Lists.GetByTitle("COVID-19");
                ListItemCreationInformation info = new ListItemCreationInformation();

                Microsoft.SharePoint.Client.ListItem entry = list.AddItem(info);
                entry["Title"] = "Rennert COVID-19 Submission";
                entry["Name"] = questionName.Text;
                entry["Result"] = choiceResult.Text;
                entry["Role"] = personRole.SelectedItem.Value;

                entry.Update();
                clientContext.Load(entry);
                clientContext.ExecuteQuery();

                if (choiceResult.Text == "Cleared")
                {
                    Server.Transfer("WebForm1.aspx");
                    questionName.Text = string.Empty;
                    this.personRole.ClearSelection();
                    this.question1.ClearSelection();
                    this.question2.ClearSelection();
                    this.question3.ClearSelection();
                    this.question4.ClearSelection();
                    this.question5.ClearSelection();
                }
                else
                {
                    Server.Transfer("WebForm2.aspx");
                    questionName.Text = string.Empty;
                    this.personRole.ClearSelection();
                    this.question1.ClearSelection();
                    this.question2.ClearSelection();
                    this.question3.ClearSelection();
                    this.question4.ClearSelection();
                    this.question5.ClearSelection();
                }
            }
        }

        private string GetAccessToken()
        {
            var tokenResponse = TokenHelper.GetAppOnlyAccessToken(TokenHelper.SharePointPrincipal, _site.Authority, realm);
            var accessToken = tokenResponse.AccessToken;
            return accessToken;
        }

    }
}