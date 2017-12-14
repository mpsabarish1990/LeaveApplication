<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="New-EmployeeInformation.ascx.cs" Inherits="LeaveApplication.NewWebparts.New_EmployeeInformation.New_EmployeeInformation" %>

<script src="../_layouts/15/LeaveApplication/SPOpenDialog.js"></script>

<% System.Data.DataTable result = ViewState["Result"] as System.Data.DataTable;

   if (result != null && result.Rows.Count > 0)
   {
%>
<div class="content-box container">
    <div class="Container1">
        <div class="table-responsive">
            <table class="table">
                <tr class="header font">
                    <th class="font">Employee Id
                    </th>
                    <th class="font">Employee Name
                    </th>
                    <th class="font">Employee Type
                    </th>

                    <th class="font">Edit
                    </th>
                </tr>
                <% foreach (System.Data.DataRow row in result.Rows)
                   {%>
                <tr class="data">
                    <td>
                        <%=row["Employee Id"].ToString()%>
                    </td>
                    <td>
                        <%=row["Employee Name"].ToString()%>
                    </td>
                    <td>
                        <%=row["Employee Type"].ToString()%>
                    </td>

                    <td>
                        <%=row["Edit"].ToString()%>
                    </td>
                </tr>
                <% } %>
                <tr class="newOption">
                    <td>
                        <a href="JavaScript:openDialog('<%= SPContext.Current.Site.Url %>/Pages/NewEmployee.aspx');">New Employee</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <% }
   else
   { %>
    <div class="Container1">
        <div class="table-responsive">
            <table class="table">
                <tr class="header">
                    <th>There is no employee list.
                    </th>
                </tr>
                <tr class="newOption">
                    <td>
                        <a href="JavaScript:openDialog('<%= SPContext.Current.Site.Url %>/Pages/NewEmployee.aspx');">Add
                New Employee</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <% } %>
    <asp:Label runat="server" ID="lblError"></asp:Label>
    <asp:HiddenField runat="server" ID="hdncurrentURl" />
    <asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>
</div>