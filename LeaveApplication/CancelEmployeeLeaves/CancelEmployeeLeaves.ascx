<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CancelEmployeeLeaves.ascx.cs" Inherits="LeaveApplication.CancelEmployeeLeaves.CancelEmployeeLeaves" %>

<script type="text/javascript" lang="javascript ">

    function DateCompare() {
        var jsondata = document.getElementById("<%= hdnHolidayList.ClientID %>").value;
        var leaveType = document.getElementById("<%= ddlTypeofLeave.ClientID %>");
        var fromdate = document.getElementById("<%= dateTimeStartDate.Controls[0].ClientID %>").value;
        var endDate = document.getElementById("<%= dateTimeEndDate.Controls[0].ClientID %>").value;
        var optionalDates;

        var obj = jQuery.parseJSON(jsondata);

        var fValue = new Date(fromdate);
        var eValue = new Date(endDate);

        var selectedLeave = leaveType.options[leaveType.selectedIndex].value;
        var tempfromdate = fValue;

        while (IsHoliday(tempfromdate, obj)) {
            tempfromdate.setDate(tempfromdate.getDate() + 1);
        }

        var tempenddate = eValue;

        while (IsHoliday(tempenddate, obj)) {
            tempenddate.setDate(tempenddate.getDate() - 1);
        }

        var leaveDays;
        leaveDays = DayDifference(tempfromdate, tempenddate);
        if (tempfromdate.toString() != tempenddate.toString()) {
            if (leaveDays > 0)
                leaveDays = leaveDays + 1;
            else
                leaveDays = 0;
        } else {
            leaveDays = 1;
        }
        var i;
        if (selectedLeave == "Comp off") {
            var countWorkingDays = 0;
            for (i = tempfromdate; tempfromdate.getTime() != tempenddate.getTime() ; i.setDate(i.getDate() + 1)) {
                if (!IsHoliday(tempfromdate, obj))
                    countWorkingDays++;
            }
            document.getElementById("<%= txtDuration.ClientID %>").innerText = countWorkingDays + 1;
        }
        else if (selectedLeave == "Optional") {
            var leavesselected = 0;
            for (i = 0; i < optionalDates.options.length; i++) {
                var isSelected = optionalDates.options[i].selected;
                isSelected = (isSelected) ? "selected" : "not selected";

                if (isSelected == "selected")
                    leavesselected++;
            }

            document.getElementById("<%= txtDuration.ClientID %>").innerText = leavesselected;
        } else {
            document.getElementById("<%= txtDuration.ClientID %>").innerText = leaveDays;
        }
}

function DayDifference(tempfromdate, tempenddate) {
    var oneDay = 1000 * 60 * 60 * 24;

    var dayDiff = (Math.ceil((tempenddate.getTime() - tempfromdate.getTime()) / (oneDay)));

    return dayDiff;
}

function IsHoliday(fValue, jsondata) {
    var fdate = new Date(fValue);
    var tdate = fdate.getMonth() + 1 + "/" + fdate.getDate() + "/" + fdate.getFullYear();

    if (jsondata.toString().indexOf(tdate) != -1) {
        return true;
    }

    return IsSatOrSun(tdate);
}
function IsSatOrSun(fValue) {
    var tdate = new Date(fValue);

    if (tdate.getDay() == 0 || tdate.getDay() == 6) {
        return true;
    } else {
        return false;
    }
}
</script>

<div class="whitbg leave_form">
    <div class="form-horizontal">
        <div class="row" id="Selecteddates" runat="server">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="inputEmail" class="control-label col-xs-4  col-md-4">From Date<span>(MM/DD/YYYY)</span></label>
                    <div class="col-xs-8 col-md-8 halfdaycont">
                        <SharePoint:DateTimeControl ID="dateTimeStartDate" runat="server" DateOnly="true"
                            LocaleId="1033" OnValueChangeClientScript="javascript:DateCompare()" />
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="inputEmail" class="control-label col-xs-4  col-md-4">To Date<span>(MM/DD/YYYY)</span></label>
                    <div class="col-xs-8 col-md-8 halfdaycont">
                        <SharePoint:DateTimeControl ID="dateTimeEndDate" runat="server" DateOnly="true" LocaleId="1033"
                            OnValueChangeClientScript="javascript:DateCompare()" />
                    </div>
                </div>
            </div>
        </div>

        <div class="row optleave" style="display: none;">
            <div class="col-md-6">
                <div class="form-group">

                    <div id="optinalDates" runat="server" class="data double">

                        <label class="control-label  col-xs-4">
                            Optional Leave</label>

                        <div class="col-xs-8 col-md-8">
                            <asp:TextBox runat="server" ID="txtOptionalLeaves" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6" style="display: none">
                <div class="form-group">
                    <label class="control-label col-xs-4  col-md-4">
                        Employee Id</label>
                    <div class="col-xs-8 col-md-8">
                        <asp:Label ID="lblEmpID" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-4  col-md-4">
                        Designation</label>
                    <div class="col-xs-8 col-md-8">
                        <asp:Label ID="lblDesgination" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group" style="display: none">
                    <label class="control-label col-xs-4  col-md-4">
                        Department</label>
                    <div class="col-xs-8 col-md-8">
                        <asp:Label ID="lblDepartment" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-xs-4  col-md-4">
                        Type Of Leave</label>
                    <div class="col-xs-8 col-md-8">
                        <asp:DropDownList runat="server" ID="ddlTypeofLeave" CssClass="leavetype form-control" AutoPostBack="false">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-xs-4  col-md-4">
                        Duration</label>
                    <div class="col-xs-8 col-md-8">
                        <label type="text" runat="server" id="txtDuration" />
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword" class="control-label col-md-2 col-sm-4 col-xs-4">Purpose</label>
            <div class="col-md-10 col-sm-8 col-xs-8">
                <asp:TextBox runat="server" ID="txtPurpose" TextMode="MultiLine" ReadOnly="False" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="row" style="display: none">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label col-xs-4  col-md-4">
                        Reporting To</label>
                    <div class="col-xs-8 col-md-8">
                        <asp:TextBox runat="server" ID="ddlReportingTo" ReadOnly="True" CssClass="ReadOnly"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <ul class="submit_cnt">

                <li>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-md submit_btn" Text="Submit" OnClick="BtnSubmitClick" /></li>
                <li>
                    <asp:Button ID="btnReset" runat="server" CssClass="btn btn-md cancel_btn" Text="Reset" OnClick="BtnResetClick" /></li>
            </ul>
        </div>

        <div class="row">
            <asp:HiddenField runat="server" ID="hdnCurrentUsername" />
            <asp:HiddenField runat="server" ID="hdnEmployeeType" />
            <asp:HiddenField runat="server" ID="hdnHolidayList"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnStrtDate"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnEndDate"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnLeaveId"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnLeaveDuration"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnCurrentYear"></asp:HiddenField>
            <asp:HiddenField runat="server" ID="hdnReportingTo"></asp:HiddenField>
        </div>
        <div class="row">
            <asp:Label ID="lblError" runat="server" ForeColor="red" Font-Bold="True"></asp:Label>
        </div>
    </div>
</div>