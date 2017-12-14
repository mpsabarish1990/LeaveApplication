<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Add-NewEmployee.ascx.cs" Inherits="LeaveApplication.NewWebparts.Add_NewEmployee.Add_NewEmployee" %>
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
<div class="whitbg leave_form">
    <h3>Please enter the following details.</h3>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Employee Id<asp:Label runat="server" ID="lb1" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:TextBox runat="server" ID="txtempid" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Employee Name<asp:Label runat="server" ID="Label1" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8 pplpicker">
                <SharePoint:PeopleEditor ID="peoplepickeremp" Visible="true" AllowEmpty="false"
                    ValidatorEnabled="true" SelectionSet="User" MultiSelect="false" runat="server"
                    CssClass="NoBorder"></SharePoint:PeopleEditor>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">First Name<asp:Label runat="server" ID="Label2" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            

            <div class="col-xs-8  col-md-8">
                <asp:TextBox runat="server" ID="txtfristname" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Last Name<asp:Label runat="server" ID="Label3" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:TextBox runat="server" ID="txtlastname" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Employee Type<asp:Label runat="server" ID="Label4" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:DropDownList runat="server" ID="DdlEmptype" AutoPostBack="False" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Department<asp:Label runat="server" ID="Label5" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:DropDownList runat="server" ID="DdlDep" AutoPostBack="False" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Designation<asp:Label runat="server" ID="Label6" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:DropDownList runat="server" ID="DdlDesignation" AutoPostBack="False" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Reporting To<asp:Label runat="server" ID="Label7" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:DropDownList runat="server" ID="ddlReportingTo" AutoPostBack="False" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>


        <div class="form-group caldcont">
            <label class="control-label col-xs-4  col-md-4">Date of Join (MM/DD/YYYY)<asp:Label runat="server" ID="Label8" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
               <%-- <asp:Label runat="server" ID="lbldoj"></asp:Label>--%>
                <SharePoint:DateTimeControl ID="DtDoj" runat="server" DateOnly="true" MaxDate="3000-12-31" CssClassTextBox="form-control"
                    LocaleId="1033" />
            </div>
        </div>


        <div class="form-group caldcont" id="divdop" runat="server">
            <label class="control-label col-xs-4  col-md-4">Date of Permanent (MM/DD/YYYY)<asp:Label runat="server" ID="Label9" Text="*" CssClass="validspan" ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <SharePoint:DateTimeControl ID="DtDOP" runat="server" DateOnly="true" MaxDate="3000-12-31" CssClassTextBox="form-control" 
                    LocaleId="1033" />
            </div>
        </div>


        <div class="form-group error-label">
            <% if (!string.IsNullOrEmpty(LblError.Text.Trim()))
               {%>
            <asp:Label runat="server" ID="LblError" CssClass="ErrorInfo" ForeColor="red"></asp:Label>
            <% } %>
        </div>

        <div class="row">
            <ul class="submit_cnt">
                <li>
                    <asp:Button runat="server" Text="Submit" ID="BtnRegister" OnClick="BtnRegisterClick" CssClass="btn btn-md submit_btn"
                        ValidationGroup="save" />
                </li>
                <li>
                    <asp:Button runat="server" Text="Close" ID="BtnCancel" OnClick="BtnResetClick" CssClass="btn btn-md cancel_btn" />
                </li>
            </ul>
        </div>
        <asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>
        <asp:HiddenField runat="server" ID="hdnStrtFnclMnth"></asp:HiddenField>
    </div>          
</div>
