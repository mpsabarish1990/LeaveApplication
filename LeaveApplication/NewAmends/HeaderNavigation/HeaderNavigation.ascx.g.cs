﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LeaveApplication.NewAmends.HeaderNavigation {
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
    
    
    public partial class HeaderNavigation {
        
        protected global::System.Web.UI.WebControls.Literal litNavigation;
        
        protected global::System.Web.UI.WebControls.Literal Emp_ID;
        
        protected global::System.Web.UI.WebControls.Literal Emp_Designation;
        
        protected global::System.Web.UI.WebControls.Literal Emp_Department;
        
        protected global::System.Web.UI.WebControls.Literal Emp_Support;
        
        public static implicit operator global::System.Web.UI.TemplateControl(HeaderNavigation target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Literal @__BuildControllitNavigation() {
            global::System.Web.UI.WebControls.Literal @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Literal();
            this.litNavigation = @__ctrl;
            @__ctrl.ID = "litNavigation";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Literal @__BuildControlEmp_ID() {
            global::System.Web.UI.WebControls.Literal @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Literal();
            this.Emp_ID = @__ctrl;
            @__ctrl.ID = "Emp_ID";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Literal @__BuildControlEmp_Designation() {
            global::System.Web.UI.WebControls.Literal @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Literal();
            this.Emp_Designation = @__ctrl;
            @__ctrl.ID = "Emp_Designation";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Literal @__BuildControlEmp_Department() {
            global::System.Web.UI.WebControls.Literal @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Literal();
            this.Emp_Department = @__ctrl;
            @__ctrl.ID = "Emp_Department";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Literal @__BuildControlEmp_Support() {
            global::System.Web.UI.WebControls.Literal @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Literal();
            this.Emp_Support = @__ctrl;
            @__ctrl.ID = "Emp_Support";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__BuildControlTree(global::LeaveApplication.NewAmends.HeaderNavigation.HeaderNavigation @__ctrl) {
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"



<div class=""sticky_menu"">
    <div class=""fstchild hovrmenu"">
        <a href=""/Pages/Calendar.aspx"">Calendar View</a>
    </div>
    <div class=""scndchild hovrmenu"">
        <a href=""/Pages/Holidays.aspx"">Holiday List</a>
    </div>
</div>

<header>
    <div class=""row topheader_row"">
        <div class=""logo"">
            <a href=""/Pages/Home.aspx"">
                <img class=""img-responsive"" src=""../../SiteAssets/LeaveApp/images/logo.png"" alt=""Tillid Softwares Leave Application"" /></a>
        </div>
        <ul class=""user_tab"">
            <li class=""hassublink""><a href=""#"" title=""Menu"" class=""navmenu""></a>
                "));
            global::System.Web.UI.WebControls.Literal @__ctrl1;
            @__ctrl1 = this.@__BuildControllitNavigation();
            @__parser.AddParsedSubObject(@__ctrl1);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"              
            </li>
           
            <li><a href=""/_layouts/SignOut.aspx"" title=""Logout"" class=""logout""></a></li>
        </ul>
    </div>

    <div class=""row topbox_row"">
        <div class=""col-md-3 col-sm-6"">
            <div class=""topbox employee_id"">
                <h4>Employee ID</h4>
                <span>
                    "));
            global::System.Web.UI.WebControls.Literal @__ctrl2;
            @__ctrl2 = this.@__BuildControlEmp_ID();
            @__parser.AddParsedSubObject(@__ctrl2);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("</span>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-" +
                        "6\">\r\n            <div class=\"topbox designation\">\r\n                <h4>Designati" +
                        "on</h4>\r\n                <span>\r\n                    "));
            global::System.Web.UI.WebControls.Literal @__ctrl3;
            @__ctrl3 = this.@__BuildControlEmp_Designation();
            @__parser.AddParsedSubObject(@__ctrl3);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("</span>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-" +
                        "6\">\r\n            <div class=\"topbox department\">\r\n                <h4>Department" +
                        "</h4>\r\n                <span>\r\n                    "));
            global::System.Web.UI.WebControls.Literal @__ctrl4;
            @__ctrl4 = this.@__BuildControlEmp_Department();
            @__parser.AddParsedSubObject(@__ctrl4);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("</span>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-" +
                        "6\">\r\n            <div class=\"topbox reporting_to\">\r\n                <h4>Reportin" +
                        "g To</h4>\r\n                <span>\r\n                    "));
            global::System.Web.UI.WebControls.Literal @__ctrl5;
            @__ctrl5 = this.@__BuildControlEmp_Support();
            @__parser.AddParsedSubObject(@__ctrl5);
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("</span>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</header>\r\n\r\n"));
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
