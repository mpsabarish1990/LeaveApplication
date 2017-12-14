<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ResignationForm.ascx.cs" Inherits="LeaveApplication.ResignationForm.ResignationForm" %>

<script src="../_layouts/15/LeaveApplication/LeaveRequest.js"></script>
<script src="../_layouts/15/LeaveApplication/jquery.min.js"></script>
<%--<link href="../_layouts/15/LeaveApplication/StyleSheet.css" rel="stylesheet" />--%>
<div class="content-box container">
    <h4>Resignation Process</h4>
    <div class="form-horizontal">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-xs-12  col-md-4">Employee Name</label>

                    <div class="col-xs-12 col-md-8">
                        <asp:DropDownList runat="server" ID="ddlEmployee" AutoPostBack="True" OnSelectedIndexChanged="DdlEmployeeSelectedIndexChanged" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="col-md-6">

                <div class="form-group">
                    <label class="control-label col-xs-12  col-md-4">Employee id</label>

                    <div class="col-xs-12 col-md-8">
                        <asp:Label ID="lblEmpID" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-xs-12  col-md-4">Department</label>

                    <div class="col-xs-12 col-md-8">
                        <asp:Label ID="lblDepartment" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-xs-12  col-md-4">Designation</label>

                    <div class="col-xs-12 col-md-8">
                        <asp:Label ID="lblDesgination" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group" id="Selecteddates">
                    <label class="control-label col-xs-12  col-md-4">Date (MM/DD/YYYY)</label>

                    <div class="col-xs-12 col-md-8 halfdaycont">
                        <SharePoint:DateTimeControl ID="dateTimeDate" runat="server" DateOnly="true" LocaleId="1033" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-xs-12  col-md-4">PL Current Balance</label>

                    <div class="col-xs-12 col-md-8">
                        <asp:Label ID="lblplCurrent" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-xs-12  col-md-4">PL Need to pay</label>

                    <div class="col-xs-12 col-md-8">
                        <asp:Label ID="lblplneedtopay" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <ul class="submit_cnt">
                <li>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="BtnSubmitClick" CssClass="btn btn-md submit_btn" /></li>
                <li>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="BtnResetClick" CssClass="btn btn-md cancel_btn" /></li>

            </ul>
        </div>
        <div class="row">
            <asp:HiddenField runat="server" ID="hdnCurrentUsername" />
            <asp:HiddenField runat="server" ID="hdnReportingTo"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnEmployeeType" />
            <asp:HiddenField runat="server" ID="hdnHolidayList"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnFnclStarts"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnFnclEnds"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnFinancialStratmonth"></asp:HiddenField>
        </div>
        <div class="row">
            <asp:Label ID="lblError" runat="server" ForeColor="red" Font-Bold="True"></asp:Label>
        </div>
    </div>
</div>



