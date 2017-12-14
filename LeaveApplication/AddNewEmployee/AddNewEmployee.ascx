<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddNewEmployee.ascx.cs" Inherits="LeaveApplication.AddNewEmployee.AddNewEmployee" %>
<link href="../_layouts/15/LeaveApplication/StyleSheet.css" rel="stylesheet" />
<script src="../_layouts/15/LeaveApplication/jquery.min.js"></script>


<script lang="javascript" type="text/javascript">
    $(document).ready(function () {
        hideOrVisibleDivdop($.trim($('#<%= DdlEmptype.ClientID %>').val()));
        $('#<%= DdlEmptype.ClientID %>').change(function () {
            hideOrVisibleDivdop($.trim($(this).val()));
        });
        function hideOrVisibleDivdop(selectedValue) {
            if (selectedValue == "Permanent") {
                $('#<%= divdop.ClientID %>').show();
            } else {
                $('#<%= divdop.ClientID %>').hide();
            }
        }
    });
</script>


<div class="Container">
    <table>
        <tr class="header"> 
            <th colspan="2">
                <h3>
                    Please enter the following details.</h3>
            </th>
        </tr>
        <tr class="data">
            <td>
                <label>
                    Employee Id</label>
                <asp:Label runat="server" ID="lb1" Text="*" ForeColor="RED"></asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtempid"></asp:TextBox>
            </td>
        </tr>
        <tr class="data">
            <td>
                <label>
                    Employee Name</label>
                <asp:Label runat="server" ID="Label1" Text="*" ForeColor="RED"></asp:Label>
            </td>
            <td>
                <SharePoint:PeopleEditor ID="peoplepickeremp" Width="355px" Visible="true" AllowEmpty="false"
                    ValidatorEnabled="true" SelectionSet="User" MultiSelect="false" runat="server"
                    CssClass="NoBorder"></SharePoint:PeopleEditor>

            </td>
        </tr>
        <tr class="data">
            <td>
                <label>
                    First Name</label>
                <asp:Label runat="server" ID="Label2" Text="*" ForeColor="RED"></asp:Label>

            </td>
            <td>
                <asp:TextBox runat="server" ID="txtfristname"></asp:TextBox>
            </td>
        </tr>
        <tr class="data">
            <td>
                <label>
                    Last Name</label>
                <asp:Label runat="server" ID="Label3" Text="*" ForeColor="RED"></asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtlastname"></asp:TextBox>
            </td>
        </tr>
        <tr class="data">
            <td>
                <label>
                    Employee Type</label>
                <asp:Label runat="server" ID="Label4" Text="*" ForeColor="RED"></asp:Label>
            </td>
            <td>
                <asp:DropDownList runat="server" ID="DdlEmptype" AutoPostBack="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="data">
            <td>
                <label>
                    Department</label>
                <asp:Label runat="server" ID="Label5" Text="*" ForeColor="RED"></asp:Label>
            </td>
            <td>
                <asp:DropDownList runat="server" ID="DdlDep" AutoPostBack="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="data">
            <td>
                <label>
                    Designation</label>
                <asp:Label runat="server" ID="Label6" Text="*" ForeColor="RED"></asp:Label>
            </td>
            <td>
                <asp:DropDownList runat="server" ID="DdlDesignation" AutoPostBack="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="data">
            <td>
                <label>
                    Reporting To</label>
                <asp:Label runat="server" ID="Label7" Text="*" ForeColor="RED"></asp:Label>
            </td>
            <td>
                <asp:DropDownList runat="server" ID="ddlReportingTo" AutoPostBack="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="data">
            <td>
                <label>
                    Date of Join (MM/DD/YYYY)</label>
                <asp:Label runat="server" ID="Label8" Text="*" ForeColor="RED"></asp:Label>
            
            </td>
            <td class="NoBorder">
                <asp:Label runat="server" ID="lbldoj"></asp:Label>
                <SharePoint:DateTimeControl ID="DtDoj" runat="server" DateOnly="true" MaxDate="3000-12-31"
                    LocaleId="1033" />
            </td>
        </tr>
        <tr class="data" id="divdop" runat="server">
            <td>
                <label>
                    Date of Permanent (MM/DD/YYYY)</label>
                <asp:Label runat="server" ID="Label9" Text="*" ForeColor="RED"></asp:Label>
            </td>
            <td class="NoBorder">
                <SharePoint:DateTimeControl ID="DtDOP" runat="server" DateOnly="true" MaxDate="3000-12-31"
                    LocaleId="1033" />
            </td>
        </tr>
        <% if (!string.IsNullOrEmpty(LblError.Text.Trim()))
           {%>
        <tr class="data">
            <td colspan="2">
                <asp:Label runat="server" ID="LblError" CssClass="ErrorInfo" ForeColor="red"></asp:Label>
            </td>
        </tr>
        <% } %>
        <tr class="controls">
            <td class="noborders">
                <asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>
                <asp:HiddenField runat="server" ID="hdnStrtFnclMnth"></asp:HiddenField>
            </td>
            <td class="noborders">
                <asp:Button runat="server" Text="Submit" ID="BtnRegister" OnClick="BtnRegisterClick" 
                    ValidationGroup="save" />
                <asp:Button runat="server" Text="Reset" ID="BtnCancel" OnClick="BtnResetClick" />
            </td>
        </tr>
    </table>
</div>