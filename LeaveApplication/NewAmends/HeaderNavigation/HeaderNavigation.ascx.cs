using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Text;
using System.Web.UI.WebControls.WebParts;

namespace LeaveApplication.NewAmends.HeaderNavigation
{
    [ToolboxItemAttribute(false)]
    public partial class HeaderNavigation : WebPart
    {
        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling on a farm solution
        // using the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public HeaderNavigation()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Headernavigation();
            SubNavigation();
        }

        public void Headernavigation()
        {
            using (var site = new SPSite(SPContext.Current.Site.Url))
            {
                using (var web = site.OpenWeb())
                {
                    SPList spList = web.Lists.TryGetList("Employee Screen");
                    if (spList != null)
                    {
                        SPQuery qry = new SPQuery();
                        qry.Query =
                        @"   <Where>
                          <Eq>
                             <FieldRef Name='Employee_x0020_Name' />
                             <Value Type='Integer'>
                                <UserID />
                             </Value>
                          </Eq>
                       </Where>";
                        qry.ViewFields = @"<FieldRef Name='Title' /><FieldRef Name='Designation' /><FieldRef Name='Department' /><FieldRef Name='Manager' />";
                        SPListItemCollection listItems = spList.GetItems(qry);
                        foreach (SPListItem item in listItems)
                        {
                            Emp_ID.Text = item["Title"].ToString();

                            Emp_Designation.Text = item["Designation"].ToString();

                            Emp_Department.Text = item["Department"].ToString();

                            Emp_Support.Text = item["Manager"].ToString().Split('#')[1];
                        }
                    }
                }
            }
        }

        public void SubNavigation()
        {
            using (var site = new SPSite(SPContext.Current.Site.Url))
            {
                using (var web = site.OpenWeb())
                {
                    SPList spList = web.Lists.TryGetList("Navigation");
                    if (spList != null)
                    {
                        SPQuery qry = new SPQuery();
                        qry.Query =
                        @"
                            <OrderBy>
      <FieldRef Name='DisplayOrder' />
   </OrderBy>
                       ";
                        qry.ViewFields = @"<FieldRef Name='Title' /><FieldRef Name='Url' /><FieldRef Name='DisplayOrder' />";
                        SPListItemCollection listItems = spList.GetItems(qry);
                        StringBuilder sb = new StringBuilder();
                        sb.Append("<ul id=\"sublinks\">");
                        var navigationurl = "";
                        var navigationtitle = "";
                        foreach (SPListItem item in listItems)
                        {
                            navigationurl = item["Url"].ToString();
                            navigationtitle = item["Title"].ToString();
                            sb.Append("<li><a href=\"" + navigationurl + "\">" + navigationtitle + "</a></li>");
                        }
                        sb.Append("</ul>");
                        litNavigation.Text = sb.ToString();
                    }
                }
            }
        }
    }
}