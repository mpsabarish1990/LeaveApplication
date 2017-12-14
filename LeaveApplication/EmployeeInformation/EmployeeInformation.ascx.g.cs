﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18034
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LeaveApplication.EmployeeInformation {
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
    
    
    public partial class EmployeeInformation {
        
        protected global::System.Web.UI.WebControls.Label lblError;
        
        protected global::System.Web.UI.WebControls.HiddenField hdncurrentURl;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnCurrentYear;
        
        public static implicit operator global::System.Web.UI.TemplateControl(EmployeeInformation target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Label @__BuildControllblError() {
            global::System.Web.UI.WebControls.Label @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Label();
            this.lblError = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "lblError";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdncurrentURl() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdncurrentURl = @__ctrl;
            @__ctrl.ID = "hdncurrentURl";
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
        private void @__BuildControlTree(global::LeaveApplication.EmployeeInformation.EmployeeInformation @__ctrl) {
            global::System.Web.UI.WebControls.Label @__ctrl1;
            @__ctrl1 = this.@__BuildControllblError();
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(@__ctrl1);
            global::System.Web.UI.WebControls.HiddenField @__ctrl2;
            @__ctrl2 = this.@__BuildControlhdncurrentURl();
            @__parser.AddParsedSubObject(@__ctrl2);
            global::System.Web.UI.WebControls.HiddenField @__ctrl3;
            @__ctrl3 = this.@__BuildControlhdnCurrentYear();
            @__parser.AddParsedSubObject(@__ctrl3);
            @__ctrl.SetRenderMethodDelegate(new System.Web.UI.RenderMethod(this.@__Render__control1));
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__Render__control1(System.Web.UI.HtmlTextWriter @__w, System.Web.UI.Control parameterContainer) {
            @__w.Write("\r\n\r\n\r\n<script src=\"../_layouts/15/LeaveApplication/SPOpenDialog.js\"></script>\r\n<l" +
                    "ink href=\"../_layouts/15/LeaveApplication/StyleSheet.css\" rel=\"stylesheet\" />\r\n\r" +
                    "\n\r\n\r\n");
   System.Data.DataTable result = ViewState["Result"] as System.Data.DataTable;

   if (result != null && result.Rows.Count> 0)
   {

            @__w.Write(@"

<div class=""Container"">
    <table>
        <tr class=""header font"">
            <th class=""font"">
                Employee Id
            </th>
            <th class=""font"">
                Employee Name
            </th>
            <th class=""font"">
                Employee Type
            </th>
            
            <th class=""font"">
                Edit
            </th>
        </tr>
        ");
           foreach (System.Data.DataRow row in result.Rows)
           {
            @__w.Write("\r\n        <tr class=\"data\">\r\n            <td>\r\n                ");
        @__w.Write(row["Employee Id"].ToString());

            @__w.Write("\r\n            </td>\r\n            <td>\r\n                ");
        @__w.Write(row["Employee Name"].ToString());

            @__w.Write("\r\n            </td>\r\n            <td>\r\n                ");
        @__w.Write(row["Employee Type"].ToString());

            @__w.Write("\r\n            </td>\r\n            \r\n            <td>\r\n                ");
        @__w.Write(row["Edit"].ToString());

            @__w.Write("\r\n            </td>\r\n        </tr>\r\n        ");
           } 
            @__w.Write("\r\n        <tr class=\"newOption\">\r\n            <td>\r\n                <a href=\"Java" +
                    "Script:openDialog(\'");
                                        @__w.Write( SPContext.Current.Site.Url );

            @__w.Write("/SitePages/NewEmployee.aspx\');\">\r\n                    New Employee</a>\r\n         " +
                    "   </td>\r\n        </tr>\r\n    </table>\r\n</div>\r\n");
   }
   else
   { 
            @__w.Write(@"
<div class=""Container"">
    <table>
        <tr class=""header"">
            <th>
                There is no employee list.
            </th>
        </tr>
        <tr class=""newOption"">
            <td>
                <a href=""JavaScript:openDialog('");
                                        @__w.Write( SPContext.Current.Site.Url );

            @__w.Write("/SitePages/NewEmployee.aspx\');\">\r\n                    Add\r\n                New Em" +
                    "ployee</a>\r\n            </td>\r\n        </tr>\r\n    </table>\r\n</div>\r\n");
   } 
            @__w.Write("<br />\r\n<br />\r\n");
            parameterContainer.Controls[0].RenderControl(@__w);
            @__w.Write("\r\n");
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