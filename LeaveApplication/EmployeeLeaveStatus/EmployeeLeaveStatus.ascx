<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLeaveStatus.ascx.cs" Inherits="LeaveApplication.EmployeeLeaveStatus.EmployeeLeaveStatus" %>

<script src="../_layouts/15/LeaveApplication/LeaveStatus.js"></script>
<% DataTable results = (DataTable)ViewState["Results"];
   if (results != null && results.Rows.Count > 0)
   {
%>
<div class="Container1 empleavestatus">

    <div class="table-responsive">
        <table class="table header">
            <tr class="header">
                <th colspan="9" style="border-top: 1px solid #FFF; border-left: 1px solid #FFF; border-right: 1px solid #FFF; padding: 0px;">
                    <h4 class="font">Leave Requests</h4>
                </th>
            </tr>
            <tr class="header font">
                <th width="2%" align="center">
                    <input type="checkbox" onclick="checkAll(this);">
                </th>
                <th class="font" width="17%">Requested From
                </th>
                <th class="font" width="10%">Leave Type
                </th>
                <th class="font" width="5%">Start Date
                </th>
                <th class="font" width="5%">End Date
                </th>
                <th class="font" width="5%">Duration
                </th>
                <th class="font" width="20%">Reason
                </th>
                <th class="font" width="6%">Status
                </th>
                <th class="font" width="30%">Remarks
                </th>
            </tr>

            <% foreach (DataRow dataRow in results.Rows)
               {
            %>
            <tr>
                <td>
                    <input type="checkbox" onclick="Check_Click(this);" name='<%= "Chk" + dataRow["Id"].ToString() %>' />
                </td>
                <td>
                    <%= dataRow["RequestedFrom"].ToString() %>
                </td>
                <td>
                    <%= dataRow["Leave Type"].ToString()%>
                </td>
                <td>
                    <%= dataRow["Starting Date"].ToString()%>
                </td>
                <td>
                    <%= dataRow["Ending Date"].ToString()%>
                </td>
                <td>
                    <%= dataRow["Duration"].ToString()%>
                </td>
                <td>
                    <div>
                        <%= dataRow["Reason"].ToString()%>
                    </div>
                </td>
                <td>
                    <%if (dataRow["Status"].ToString().Trim() == "Pending")
                      {%>
                    <div style="color: #e84743">
                        <%= dataRow["Status"].ToString()%>
                    </div>
                    <% }
                      else
                      { %>
                    <div>
                        <%= dataRow["Status"].ToString()%>
                    </div>
                    <% }%>
                </td>
                <td>
                    <input type="text" class="form-control" name='<%= "txt" + dataRow["Id"].ToString() %>'
                        id='<%= "txt" + dataRow["Id"].ToString() %>' />
                </td>
            </tr>
            <%} %>
        </table>
        <ul class="submit_cnt mtop-15 mright-0">
            <li>
                <asp:Button runat="server" Text="Approve" ID="BtnApprove" OnClick="BtnApproveClick" CssClass="btn btn-md submit_btn" /></li>
            <li>
                <asp:Button runat="server" Text="Reject" ID="BtnReject" OnClick="BtnRejectClick" CssClass="btn btn-md cancel_btn" /></li>
        </ul>
        <asp:Label runat="server" ID="lblErr"></asp:Label>
        <asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>
    </div>
</div>
<% }
   else
   { %>
<div class="Container1 empleavestatus">
    <div class="table-responsive">
        <table class="table">
            <tr>
                <th>There is no pending leave requests to approve.
                </th>
            </tr>
        </table>
    </div>
</div>
<% } %>