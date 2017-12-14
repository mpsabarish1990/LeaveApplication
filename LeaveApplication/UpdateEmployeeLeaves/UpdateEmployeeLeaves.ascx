<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmployeeLeaves.ascx.cs" Inherits="LeaveApplication.UpdateEmployeeLeaves.UpdateEmployeeLeaves" %>

<div class="whitbg content-box container">
    <ul class="nav nav-pills">
        <li>
            <asp:Button runat="server" ID="btbolreset" Text="Update Optional Leave" OnClick="BtnOLresetClick" CssClass="btn btn-md" /></li>
        <li>
            <asp:Button ID="btnnewupdate" runat="server" Text="Update PL for Permanent" OnClick="btnnewupdate_Click" CssClass="btn btn-md" /></li>
        <li>
            <asp:Button ID="btnprobationary" runat="server" Text="Update PL for Probationary" OnClick="btnprobationary_Click" CssClass="btn btn-md" /></li>
        <li>
            <asp:Button ID="btnnewviewreport" runat="server" Text="View Leave Status" OnClick="btnnewviewreport_Click" CssClass="btn btn-md" /></li>
        <li class="updatenav">
            <asp:Label ID="lblupdation" runat="server" Text="Updation Status"></asp:Label></li>
    </ul>

    <asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>
    <asp:HiddenField runat="server" ID="hdnUpdatingMonth"></asp:HiddenField>
    <asp:HiddenField runat="server" ID="hdnoptionalmonth"></asp:HiddenField>
    <asp:HiddenField runat="server" ID="hdnprobupdating"></asp:HiddenField>
    <asp:HiddenField runat="server" ID="hdnupdated"></asp:HiddenField>

    <asp:HiddenField runat="server" ID="hdnOLUpdate"></asp:HiddenField>
    <asp:Label runat="server" ID="lblError"></asp:Label>

    <% System.Data.DataTable result = ViewState["Result"] as System.Data.DataTable;

       if (result != null && result.Rows.Count > 0)
       {
    %>
    <div class="table-responsive">
        <table class="table">

            <tr class="header font">
                <% foreach (System.Data.DataColumn column in result.Columns)
                   {
                       if (column.ColumnName != "TempEmployeeName" && column.ColumnName != "TempReportingTo")
                       {%>
                <th class="font">
                    <%= column.ColumnName %>
                </th>
                <% }
                   } %>
            </tr>
            <% foreach (System.Data.DataRow row in result.Rows)
               {%>
            <tr class="data">
                <% foreach (System.Data.DataColumn column in result.Columns)
                   {
                       if (column.ColumnName != "TempEmployeeName" && column.ColumnName != "TempReportingTo")
                       {%>
                <td>
                    <%= row[column.ColumnName].ToString() %>
                </td>
                <% }
                   }%>
            </tr>
            <% } %>
        </table>
    </div>
    <% }
       else
       { %>
    <div class="table-responsive">
        <table class="table">
            <tr class="data">
                <td colspan="2">
                    <asp:Label ID="lblErr" runat="server" ForeColor="red"></asp:Label>
                </td>
            </tr>
            <tr class="header font">
                <th class="font">There is no records.
                </th>
            </tr>
        </table>
    </div>
    <% } %><br />
    <br />
    <% System.Data.DataTable pendingResult = ViewState["PendingResult"] as System.Data.DataTable;

       if (pendingResult != null && pendingResult.Rows.Count > 0)
       {
    %>
    <div class="table-responsive">
        <table class="table">
            <tr class="header font">
                <% foreach (System.Data.DataColumn column in pendingResult.Columns)
                   {%>
                <th class="font">
                    <%=column.ColumnName %>
                </th>
                <% } %>
            </tr>
            <% foreach (System.Data.DataRow row in pendingResult.Rows)
               {%>
            <tr class="data">
                <% foreach (System.Data.DataColumn column in pendingResult.Columns)
                   {%>
                <td>
                    <%= row[column.ColumnName].ToString() %>
                </td>
                <% } %>
            </tr>
            <% } %>
        </table>
    </div>
    <% } %>
</div>