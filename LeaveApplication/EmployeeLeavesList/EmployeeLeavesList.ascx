<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLeavesList.ascx.cs" Inherits="LeaveApplication.EmployeeLeavesList.EmployeeLeavesList" %>
<script src="../_layouts/15/LeaveApplication/SPOpenDialog.js"></script>

<% System.Data.DataTable result = ViewState["Result"] as System.Data.DataTable;

   if (result != null && result.Rows.Count > 0)
   {
%>
<div class="Container1">
    <h4>My Leave</h4>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th>Requested To
                    </th>
                    <th>Leave Type
                    </th>
                    <th>Start Date
                    </th>
                    <th>End Date
                    </th>
                    <th>Leave Days
                    </th>
                    <th>Reason
                    </th>
                    <th>Remarks
                    </th>
                    <th>Status
                    </th>
                    <th>Cancel
                    </th>
                </tr>
            </thead>
            <tbody>
                <% foreach (System.Data.DataRow row in result.Rows)
                   {%>
                <tr>
                    <td>
                        <%=row["Requested To"].ToString()%>
                    </td>
                    <td>
                        <%=row["Leave Type"].ToString()%>
                    </td>
                    <td>
                        <%=row["Starting Date"].ToString()%>
                    </td>
                    <td>
                        <%=row["Ending Date"].ToString()%>
                    </td>
                    <td>
                        <%=row["Leave Days"].ToString()%>
                    </td>
                    <td>

                        <div class="wordWrap">
                            <%=row["Reason"].ToString()%>
                        </div>
                    </td>
                    <td>
                        <%=row["Remarks"].ToString() %>
                    </td>
                    <td>
                        <%if (row["Status"].ToString().Trim() == "Pending")
                          {%>
                        <div style="color: #e84743">
                            <%= row["Status"].ToString()%>
                        </div>
                        <% }
                          else
                          { %>
                        <div>
                            <%= row["Status"].ToString()%>
                        </div>
                        <% }%>
                    </td>

                    <td>
                        <%=row["Cancel"].ToString() %>
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
                <td>There is no Leave Requests.
                </td>
            </tr>
        </table>
    </div>
</div>
<% } %>
<asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>