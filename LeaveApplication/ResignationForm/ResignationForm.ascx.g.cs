﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LeaveApplication.ResignationForm {
    using System.Web.UI.WebControls.Expressions;
    using System.Web.UI.HtmlControls;
    using System.Collections;
    using System.Text;
    using System.Web.UI;
    using System.Collections.Generic;
    using System.Linq;
    using System.Xml.Linq;
    using Microsoft.SharePoint.WebPartPages;
    using System.Web.SessionState;
    using System.Configuration;
    using Microsoft.SharePoint;
    using System.Web;
    using System.Web.DynamicData;
    using System.Web.Caching;
    using System.Web.Profile;
    using System.ComponentModel.DataAnnotations;
    using System.Web.UI.WebControls;
    using System.Web.Security;
    using System;
    using Microsoft.SharePoint.Utilities;
    using System.Text.RegularExpressions;
    using System.Collections.Specialized;
    using System.Web.UI.WebControls.WebParts;
    using Microsoft.SharePoint.WebControls;
    
    
    public partial class ResignationForm {
        
        protected global::System.Web.UI.WebControls.DropDownList ddlEmployee;
        
        protected global::System.Web.UI.WebControls.Label lblEmpID;
        
        protected global::System.Web.UI.WebControls.Label lblDepartment;
        
        protected global::System.Web.UI.WebControls.Label lblDesgination;
        
        protected global::Microsoft.SharePoint.WebControls.DateTimeControl dateTimeDate;
        
        protected global::System.Web.UI.WebControls.Label lblplCurrent;
        
        protected global::System.Web.UI.WebControls.Label lblplneedtopay;
        
        protected global::System.Web.UI.WebControls.Button btnSubmit;
        
        protected global::System.Web.UI.WebControls.Button btnReset;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnCurrentUsername;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnReportingTo;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnCurrentYear;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnEmployeeType;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnHolidayList;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnFnclStarts;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnFnclEnds;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnFinancialStratmonth;
        
        protected global::System.Web.UI.WebControls.Label lblError;
        
        public static implicit operator global::System.Web.UI.TemplateControl(ResignationForm target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.DropDownList @__BuildControlddlEmployee() {
            global::System.Web.UI.WebControls.DropDownList @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.DropDownList();
            this.ddlEmployee = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "ddlEmployee";
            @__ctrl.AutoPostBack = true;
            @__ctrl.CssClass = "form-control";
            @__ctrl.SelectedIndexChanged -= new System.EventHandler(this.DdlEmployeeSelectedIndexChanged);
            @__ctrl.SelectedIndexChanged += new System.EventHandler(this.DdlEmployeeSelectedIndexChanged);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Label @__BuildControllblEmpID() {
            global::System.Web.UI.WebControls.Label @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Label();
            this.lblEmpID = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "lblEmpID";
            @__ctrl.Text = "";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Label @__BuildControllblDepartment() {
            global::System.Web.UI.WebControls.Label @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Label();
            this.lblDepartment = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "lblDepartment";
            @__ctrl.Text = "";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Label @__BuildControllblDesgination() {
            global::System.Web.UI.WebControls.Label @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Label();
            this.lblDesgination = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "lblDesgination";
            @__ctrl.Text = "";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::Microsoft.SharePoint.WebControls.DateTimeControl @__BuildControldateTimeDate() {
            global::Microsoft.SharePoint.WebControls.DateTimeControl @__ctrl;
            @__ctrl = new global::Microsoft.SharePoint.WebControls.DateTimeControl();
            this.dateTimeDate = @__ctrl;
            @__ctrl.ID = "dateTimeDate";
            @__ctrl.DateOnly = true;
            @__ctrl.LocaleId = 1033;
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Label @__BuildControllblplCurrent() {
            global::System.Web.UI.WebControls.Label @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Label();
            this.lblplCurrent = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "lblplCurrent";
            @__ctrl.Text = "";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Label @__BuildControllblplneedtopay() {
            global::System.Web.UI.WebControls.Label @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Label();
            this.lblplneedtopay = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "lblplneedtopay";
            @__ctrl.Text = "";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Button @__BuildControlbtnSubmit() {
            global::System.Web.UI.WebControls.Button @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Button();
            this.btnSubmit = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "btnSubmit";
            @__ctrl.Text = "Submit";
            @__ctrl.CssClass = "btn btn-md submit_btn";
            @__ctrl.Click -= new System.EventHandler(this.BtnSubmitClick);
            @__ctrl.Click += new System.EventHandler(this.BtnSubmitClick);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Button @__BuildControlbtnReset() {
            global::System.Web.UI.WebControls.Button @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Button();
            this.btnReset = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "btnReset";
            @__ctrl.Text = "Reset";
            @__ctrl.CssClass = "btn btn-md cancel_btn";
            @__ctrl.Click -= new System.EventHandler(this.BtnResetClick);
            @__ctrl.Click += new System.EventHandler(this.BtnResetClick);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnCurrentUsername() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnCurrentUsername = @__ctrl;
            @__ctrl.ID = "hdnCurrentUsername";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnReportingTo() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnReportingTo = @__ctrl;
            @__ctrl.ID = "hdnReportingTo";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnCurrentYear() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnCurrentYear = @__ctrl;
            @__ctrl.ID = "hdnCurrentYear";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnEmployeeType() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnEmployeeType = @__ctrl;
            @__ctrl.ID = "hdnEmployeeType";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnHolidayList() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnHolidayList = @__ctrl;
            @__ctrl.ID = "hdnHolidayList";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnFnclStarts() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnFnclStarts = @__ctrl;
            @__ctrl.ID = "hdnFnclStarts";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnFnclEnds() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnFnclEnds = @__ctrl;
            @__ctrl.ID = "hdnFnclEnds";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnFinancialStratmonth() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnFinancialStratmonth = @__ctrl;
            @__ctrl.ID = "hdnFinancialStratmonth";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Label @__BuildControllblError() {
            global::System.Web.UI.WebControls.Label @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Label();
            this.lblError = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "lblError";
            @__ctrl.ForeColor = global::System.Drawing.Color.Red;
            @__ctrl.Font.Bold = true;
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__BuildControlTree(global::LeaveApplication.ResignationForm.ResignationForm @__ctrl) {
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"

<script src=""../_layouts/15/LeaveApplication/LeaveRequest.js""></script>
<script src=""../_layouts/15/LeaveApplication/jquery.min.js""></script>

<div class=""content-box container"">
    <h4>Resignation Process</h4>
    <div class=""form-horizontal"">
        <div class=""row"">
            <div class=""col-md-6"">
                <div class=""form-group"">
                    <label class=""control-label col-xs-12  col-md-4"">Employee Name</label>

                    <div class=""col-xs-12 col-md-8"">
                        "));
            global::System.Web.UI.WebControls.DropDownList @__ctrl1;
            @__ctrl1 = this.@__BuildControlddlEmployee();
            @__parser.AddParsedSubObject(@__ctrl1);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"
                    </div>
                </div>
            </div>
            <div class=""col-md-6"">

                <div class=""form-group"">
                    <label class=""control-label col-xs-12  col-md-4"">Employee id</label>

                    <div class=""col-xs-12 col-md-8"">
                        "));
            global::System.Web.UI.WebControls.Label @__ctrl2;
            @__ctrl2 = this.@__BuildControllblEmpID();
            @__parser.AddParsedSubObject(@__ctrl2);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"
                    </div>
                </div>
            </div>
        </div>
        <div class=""row"">
            <div class=""col-md-6"">
                <div class=""form-group"">
                    <label class=""control-label col-xs-12  col-md-4"">Department</label>

                    <div class=""col-xs-12 col-md-8"">
                        "));
            global::System.Web.UI.WebControls.Label @__ctrl3;
            @__ctrl3 = this.@__BuildControllblDepartment();
            @__parser.AddParsedSubObject(@__ctrl3);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"
                    </div>
                </div>
            </div>
            <div class=""col-md-6"">
                <div class=""form-group"">
                    <label class=""control-label col-xs-12  col-md-4"">Designation</label>

                    <div class=""col-xs-12 col-md-8"">
                        "));
            global::System.Web.UI.WebControls.Label @__ctrl4;
            @__ctrl4 = this.@__BuildControllblDesgination();
            @__parser.AddParsedSubObject(@__ctrl4);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"
                    </div>
                </div>
            </div>
        </div>
        <div class=""row"">
            <div class=""col-md-6"">
                <div class=""form-group"" id=""Selecteddates"">
                    <label class=""control-label col-xs-12  col-md-4"">Date (MM/DD/YYYY)</label>

                    <div class=""col-xs-12 col-md-8 halfdaycont"">
                        "));
            global::Microsoft.SharePoint.WebControls.DateTimeControl @__ctrl5;
            @__ctrl5 = this.@__BuildControldateTimeDate();
            @__parser.AddParsedSubObject(@__ctrl5);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"
                    </div>
                </div>
            </div>
        </div>
        <div class=""row"">
            <div class=""col-md-6"">
                <div class=""form-group"">
                    <label class=""control-label col-xs-12  col-md-4"">PL Current Balance</label>

                    <div class=""col-xs-12 col-md-8"">
                        "));
            global::System.Web.UI.WebControls.Label @__ctrl6;
            @__ctrl6 = this.@__BuildControllblplCurrent();
            @__parser.AddParsedSubObject(@__ctrl6);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"
                    </div>
                </div>
            </div>
            <div class=""col-md-6"">
                <div class=""form-group"">
                    <label class=""control-label col-xs-12  col-md-4"">PL Need to pay</label>

                    <div class=""col-xs-12 col-md-8"">
                        "));
            global::System.Web.UI.WebControls.Label @__ctrl7;
            @__ctrl7 = this.@__BuildControllblplneedtopay();
            @__parser.AddParsedSubObject(@__ctrl7);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n                    </div>\r\n                </div>\r\n            </div>\r\n       " +
                        " </div>\r\n        <div class=\"row\">\r\n            <ul class=\"submit_cnt\">\r\n       " +
                        "         <li>\r\n                    "));
            global::System.Web.UI.WebControls.Button @__ctrl8;
            @__ctrl8 = this.@__BuildControlbtnSubmit();
            @__parser.AddParsedSubObject(@__ctrl8);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("</li>\r\n                <li>\r\n                    "));
            global::System.Web.UI.WebControls.Button @__ctrl9;
            @__ctrl9 = this.@__BuildControlbtnReset();
            @__parser.AddParsedSubObject(@__ctrl9);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("</li>\r\n\r\n            </ul>\r\n        </div>\r\n        <div class=\"row\">\r\n          " +
                        "  "));
            global::System.Web.UI.WebControls.HiddenField @__ctrl10;
            @__ctrl10 = this.@__BuildControlhdnCurrentUsername();
            @__parser.AddParsedSubObject(@__ctrl10);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n            "));
            global::System.Web.UI.WebControls.HiddenField @__ctrl11;
            @__ctrl11 = this.@__BuildControlhdnReportingTo();
            @__parser.AddParsedSubObject(@__ctrl11);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n            "));
            global::System.Web.UI.WebControls.HiddenField @__ctrl12;
            @__ctrl12 = this.@__BuildControlhdnCurrentYear();
            @__parser.AddParsedSubObject(@__ctrl12);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n            "));
            global::System.Web.UI.WebControls.HiddenField @__ctrl13;
            @__ctrl13 = this.@__BuildControlhdnEmployeeType();
            @__parser.AddParsedSubObject(@__ctrl13);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n            "));
            global::System.Web.UI.WebControls.HiddenField @__ctrl14;
            @__ctrl14 = this.@__BuildControlhdnHolidayList();
            @__parser.AddParsedSubObject(@__ctrl14);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n            "));
            global::System.Web.UI.WebControls.HiddenField @__ctrl15;
            @__ctrl15 = this.@__BuildControlhdnFnclStarts();
            @__parser.AddParsedSubObject(@__ctrl15);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n            "));
            global::System.Web.UI.WebControls.HiddenField @__ctrl16;
            @__ctrl16 = this.@__BuildControlhdnFnclEnds();
            @__parser.AddParsedSubObject(@__ctrl16);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n            "));
            global::System.Web.UI.WebControls.HiddenField @__ctrl17;
            @__ctrl17 = this.@__BuildControlhdnFinancialStratmonth();
            @__parser.AddParsedSubObject(@__ctrl17);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n        </div>\r\n        <div class=\"row\">\r\n            "));
            global::System.Web.UI.WebControls.Label @__ctrl18;
            @__ctrl18 = this.@__BuildControllblError();
            @__parser.AddParsedSubObject(@__ctrl18);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n\r\n\r\n"));
        }
        
        private void InitializeControl() {
            this.@__BuildControlTree(this);
            this.Load += new global::System.EventHandler(this.Page_Load);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        protected virtual object Eval(string expression) {
            return global::System.Web.UI.DataBinder.Eval(this.Page.GetDataItem(), expression);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        protected virtual string Eval(string expression, string format) {
            return global::System.Web.UI.DataBinder.Eval(this.Page.GetDataItem(), expression, format);
        }
    }
}
