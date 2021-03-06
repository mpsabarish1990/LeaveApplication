﻿<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Edit-EmployeeInformation.ascx.cs" Inherits="LeaveApplication.NewWebparts.Edit_EmployeeInformation.Edit_EmployeeInformation" %>


<asp:Label ID="lblrr" runat="server"></asp:Label>

<script lang="javascript" type="text/javascript">
    $(document).ready(function () {
        hideOrVisibleDivdop($.trim($('#<%= DdlEmptype.ClientID %>').val()));
        $('#<%= DdlEmptype.ClientID %>').change(function () {
            hideOrVisibleDivdop($.trim($(this).val()));
        });
        function hideOrVisibleDivdop(selectedValue) {
            if (selectedValue == "Permanent") {
                $('#<%= divdop.ClientID %>').show();
                $('#<%= divCFPL.ClientID %>').show();
            } else {
                $('#<%= divdop.ClientID %>').hide();
                $('#<%= divCFPL.ClientID %>').hide();
            }
        }
    });
</script>

<div class="whitbg leave_form">
    <h3>Please enter the following details.</h3>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Employee Id<asp:Label runat="server" ID="lb1" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:TextBox runat="server" ID="txtempid" ReadOnly="True" CssClass="ReadOnly form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Employee Name<asp:Label runat="server" ID="Label1" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:TextBox runat="server" ID="txtempusername" ReadOnly="True" CssClass="ReadOnly form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">First Name<asp:Label runat="server" ID="Label2" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:TextBox runat="server" ID="txtfristname" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Last Name<asp:Label runat="server" ID="Label3" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:TextBox runat="server" ID="txtlastname" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Employee Type<asp:Label runat="server" ID="Label4" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:DropDownList runat="server" ID="DdlEmptype" AutoPostBack="False" CssClass="form-control" OnSelectedIndexChanged="DdlEmptype_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Department<asp:Label runat="server" ID="Label5" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:DropDownList runat="server" ID="DdlDep" AutoPostBack="False" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Designation<asp:Label runat="server" ID="Label6" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:DropDownList runat="server" ID="DdlDesignation" AutoPostBack="False" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4  col-md-4">Reporting To<asp:Label runat="server" ID="Label7" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label></label>
            
            <div class="col-xs-8  col-md-8">
                <asp:DropDownList runat="server" ID="ddlReportingTo" AutoPostBack="True"
                    OnSelectedIndexChanged="DdlReportingToSelectedIndexChanged" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group caldcont">
            <label class="control-label col-xs-4  col-md-4">
                Date of Join (MM/DD/YYYY)<asp:Label runat="server" ID="Label8" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label>
            </label>
            
            <div class="col-xs-8  col-md-8">

                <SharePoint:DateTimeControl ID="DtDoj" runat="server" DateOnly="true" LocaleId="1033" CssClassTextBox="form-control" />
            </div>
        </div>
        <div class="form-group caldcont" id="divdop" runat="server">
            <label class="control-label col-xs-4  col-md-4">
                Date of Permanent (MM/DD/YYYY)<asp:Label runat="server" ID="Label9" Text="*" CssClass="validspan"  ForeColor="RED"></asp:Label>
            </label>
            
            <div class="col-xs-8  col-md-8">
                <SharePoint:DateTimeControl ID="DtDOP" runat="server" DateOnly="true" LocaleId="1033" CssClassTextBox="form-control" />
            </div>
        </div>
        <div class="form-group" id="divCFPL" runat="server">
            <label class="control-label col-xs-4  col-md-4">Carry forward PL's</label>
            <div class="col-xs-8  col-md-8">
                <asp:CheckBox runat="server" ID="chkPrePL" CssClass="form-control" />
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
                    <asp:Button runat="server" Text="Submit" ID="BtnRegister" OnClick="BtnUpdateClick" CssClass="btn btn-md submit_btn"
                        ValidationGroup="save" />
                </li>
                <li>
                    <asp:Button runat="server" Text="Close" ID="BtnCancel" OnClick="BtnCancelClick" CssClass="btn btn-md cancel_btn" />
                </li>
            </ul>
        </div>
        <asp:HiddenField runat="server" ID="empSPid" />
        <asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>
        <asp:HiddenField runat="server" ID="hdnCurrentEmpType"></asp:HiddenField>
        <asp:HiddenField runat="server" ID="hdnStrtFnclMnth"></asp:HiddenField>
        <asp:HiddenField runat="server" ID="hdnCurrentUsername"></asp:HiddenField>
        <asp:HiddenField runat="server" ID="hdnCurrentManager"></asp:HiddenField>
        <asp:HiddenField runat="server" ID="hdncurrentEmployee"></asp:HiddenField>
    </div>
</div>



