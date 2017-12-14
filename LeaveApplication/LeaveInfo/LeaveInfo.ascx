<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeaveInfo.ascx.cs" Inherits="LeaveApplication.LeaveInfo.LeaveInfo" %>
<% System.Data.DataTable result = ViewState["Result"] as System.Data.DataTable;
   if (result != null && result.Rows.Count > 0)
   {
%>
<div class="Container1 leave_info">
    <h4>Leave Information</h4>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr class="header">
                    <th>Leave Type
                    </th>
                    <th>Leave Balance
                    </th>
                    <th>Leave Requested
                    </th>
                    <th>Leave Utilized
                    </th>
                </tr>
            </thead>
            <tbody>

                <% foreach (System.Data.DataRow row in result.Rows)
                   {%>
                <tr>
                    <td>
                        <%=row["Leave Type"].ToString()%>
                    </td>
                    <td>
                        <%=row["Balance Leave"].ToString()%>
                    </td>
                    <td>
                        <%=row["Leave Requested"].ToString()%>
                    </td>
                    <td>
                        <%=row["Leave utilized"].ToString()%>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>
<% }
   else
   { %>
<div class="Container1">
    <div class="table-responsive">
        <table class="table">
            <tr>
                <td>
                    <asp:Label ID="lblErr" runat="server" ForeColor="red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>There is no records.
                </td>
            </tr>
        </table>
    </div>
</div>
<% } %>
<asp:HiddenField runat="server" ID="hdnCurrentUsername" />
<asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>