﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34209
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LeaveApplication.LeaveInfo {
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
    
    
    public partial class LeaveInfo {
        
        protected global::System.Web.UI.WebControls.Label lblErr;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnCurrentUsername;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnCurrentYear;
        
        public static implicit operator global::System.Web.UI.TemplateControl(LeaveInfo target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Label @__BuildControllblErr() {
            global::System.Web.UI.WebControls.Label @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Label();
            this.lblErr = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "lblErr";
            @__ctrl.ForeColor = global::System.Drawing.Color.Red;
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
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnCurrentYear() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnCurrentYear = @__ctrl;
            @__ctrl.ID = "hdnCurrentYear";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__BuildControlTree(global::LeaveApplication.LeaveInfo.LeaveInfo @__ctrl) {
            global::System.Web.UI.WebControls.Label @__ctrl1;
            @__ctrl1 = this.@__BuildControllblErr();
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(@__ctrl1);
            global::System.Web.UI.WebControls.HiddenField @__ctrl2;
            @__ctrl2 = this.@__BuildControlhdnCurrentUsername();
            @__parser.AddParsedSubObject(@__ctrl2);
            global::System.Web.UI.WebControls.HiddenField @__ctrl3;
            @__ctrl3 = this.@__BuildControlhdnCurrentYear();
            @__parser.AddParsedSubObject(@__ctrl3);
            @__ctrl.SetRenderMethodDelegate(new System.Web.UI.RenderMethod(this.@__Render__control1));
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__Render__control1(System.Web.UI.HtmlTextWriter @__w, System.Web.UI.Control parameterContainer) {
   System.Data.DataTable result = ViewState["Result"] as System.Data.DataTable;
   if (result != null && result.Rows.Count > 0)
   {

            @__w.Write(@"
<div class=""Container1 leave_info"">
    <h4>Leave Information</h4>
    <div class=""table-responsive"">
        <table class=""table"">
            <thead>
                <tr class=""header"">
                    <th>Leave Type
                    </th>
                    <th>Leave Balance
                    </th>
                    <th>Leave Requested
                    </th>
                    <th>Leave Utilized
                    </th>
                </tr>
            </thead>
            <tbody>

                ");
                   foreach (System.Data.DataRow row in result.Rows)
                   {
            @__w.Write("\r\n                <tr>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Leave Type"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Balance Leave"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Leave Requested"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Leave utilized"].ToString());

            @__w.Write("\r\n                    </td>\r\n                </tr>\r\n                ");
                   } 
            @__w.Write("\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</div>\r\n");
   }
   else
   { 
            @__w.Write("\r\n<div class=\"Container1\">\r\n    <div class=\"table-responsive\">\r\n        <table cl" +
                    "ass=\"table\">\r\n            <tr>\r\n                <td>\r\n                    ");
            parameterContainer.Controls[0].RenderControl(@__w);
            @__w.Write("\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td" +
                    ">There is no records.\r\n                </td>\r\n            </tr>\r\n        </table" +
                    ">\r\n    </div>\r\n</div>\r\n");
   } 
            parameterContainer.Controls[1].RenderControl(@__w);
            @__w.Write("\r\n");
            parameterContainer.Controls[2].RenderControl(@__w);
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
