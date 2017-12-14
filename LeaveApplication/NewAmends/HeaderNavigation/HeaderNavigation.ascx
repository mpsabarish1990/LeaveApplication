<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderNavigation.ascx.cs" Inherits="LeaveApplication.NewAmends.HeaderNavigation.HeaderNavigation" %>



<div class="sticky_menu">
    <div class="fstchild hovrmenu">
        <a href="/Pages/Calendar.aspx">Calendar View</a>
    </div>
    <div class="scndchild hovrmenu">
        <a href="/Pages/Holidays.aspx">Holiday List</a>
    </div>
</div>

<header>
    <div class="row topheader_row">
        <div class="logo">
            <a href="/Pages/Home.aspx">
                <img class="img-responsive" src="../../SiteAssets/LeaveApp/images/logo.png" alt="Tillid Softwares Leave Application" /></a>
        </div>
        <ul class="user_tab">
            <li class="hassublink"><a href="#" title="Menu" class="navmenu"></a>
                <asp:Literal id="litNavigation" runat="server" />              
            </li>
           <%-- <li><a href="/Pages/MyHistory.aspx" title="History" class="history">History</a></li>--%>
            <li><a href="/_layouts/SignOut.aspx" title="Logout" class="logout"></a></li>
        </ul>
    </div>

    <div class="row topbox_row">
        <div class="col-md-3 col-sm-6">
            <div class="topbox employee_id">
                <h4>Employee ID</h4>
                <span>
                    <asp:Literal ID="Emp_ID" runat="server"></asp:Literal></span>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="topbox designation">
                <h4>Designation</h4>
                <span>
                    <asp:Literal ID="Emp_Designation" runat="server"></asp:Literal></span>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="topbox department">
                <h4>Department</h4>
                <span>
                    <asp:Literal ID="Emp_Department" runat="server"></asp:Literal></span>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="topbox reporting_to">
                <h4>Reporting To</h4>
                <span>
                    <asp:Literal ID="Emp_Support" runat="server"></asp:Literal></span>
            </div>
        </div>
    </div>
</header>

