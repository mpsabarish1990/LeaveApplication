﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LeaveApplication.Test_probationary {
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
    
    
    public partial class Test_probationary {
        
        protected global::System.Web.UI.WebControls.Button btnCalculate;
        
        protected global::System.Web.UI.WebControls.Button btnUpdate;
        
        protected global::System.Web.UI.WebControls.Button btbolreset;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnCurrentYear;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnUpdatingMonth;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnOLUpdate;
        
        protected global::System.Web.UI.WebControls.Label lblError;
        
        protected global::System.Web.UI.WebControls.Label lblErr;
        
        public static implicit operator global::System.Web.UI.TemplateControl(Test_probationary target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Button @__BuildControlbtnCalculate() {
            global::System.Web.UI.WebControls.Button @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Button();
            this.btnCalculate = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "btnCalculate";
            @__ctrl.Text = "View Report";
            @__ctrl.Click -= new System.EventHandler(this.BtnCalculateClick);
            @__ctrl.Click += new System.EventHandler(this.BtnCalculateClick);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Button @__BuildControlbtnUpdate() {
            global::System.Web.UI.WebControls.Button @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Button();
            this.btnUpdate = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "btnUpdate";
            @__ctrl.Text = "Update";
            @__ctrl.Click -= new System.EventHandler(this.BtnUpdateClick);
            @__ctrl.Click += new System.EventHandler(this.BtnUpdateClick);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.Button @__BuildControlbtbolreset() {
            global::System.Web.UI.WebControls.Button @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.Button();
            this.btbolreset = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "btbolreset";
            @__ctrl.Text = "Optional Leave Reset";
            @__ctrl.Width = new System.Web.UI.WebControls.Unit(167D, global::System.Web.UI.WebControls.UnitType.Pixel);
            @__ctrl.Click -= new System.EventHandler(this.BtnOLresetClick);
            @__ctrl.Click += new System.EventHandler(this.BtnOLresetClick);
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
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnUpdatingMonth() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnUpdatingMonth = @__ctrl;
            @__ctrl.ID = "hdnUpdatingMonth";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnOLUpdate() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnOLUpdate = @__ctrl;
            @__ctrl.ID = "hdnOLUpdate";
            return @__ctrl;
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
        private void @__BuildControlTree(global::LeaveApplication.Test_probationary.Test_probationary @__ctrl) {
            global::System.Web.UI.WebControls.Button @__ctrl1;
            @__ctrl1 = this.@__BuildControlbtnCalculate();
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(@__ctrl1);
            global::System.Web.UI.WebControls.Button @__ctrl2;
            @__ctrl2 = this.@__BuildControlbtnUpdate();
            @__parser.AddParsedSubObject(@__ctrl2);
            global::System.Web.UI.WebControls.Button @__ctrl3;
            @__ctrl3 = this.@__BuildControlbtbolreset();
            @__parser.AddParsedSubObject(@__ctrl3);
            global::System.Web.UI.WebControls.HiddenField @__ctrl4;
            @__ctrl4 = this.@__BuildControlhdnCurrentYear();
            @__parser.AddParsedSubObject(@__ctrl4);
            global::System.Web.UI.WebControls.HiddenField @__ctrl5;
            @__ctrl5 = this.@__BuildControlhdnUpdatingMonth();
            @__parser.AddParsedSubObject(@__ctrl5);
            global::System.Web.UI.WebControls.HiddenField @__ctrl6;
            @__ctrl6 = this.@__BuildControlhdnOLUpdate();
            @__parser.AddParsedSubObject(@__ctrl6);
            global::System.Web.UI.WebControls.Label @__ctrl7;
            @__ctrl7 = this.@__BuildControllblError();
            @__parser.AddParsedSubObject(@__ctrl7);
            global::System.Web.UI.WebControls.Label @__ctrl8;
            @__ctrl8 = this.@__BuildControllblErr();
            @__parser.AddParsedSubObject(@__ctrl8);
            @__ctrl.SetRenderMethodDelegate(new System.Web.UI.RenderMethod(this.@__Render__control1));
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__Render__control1(System.Web.UI.HtmlTextWriter @__w, System.Web.UI.Control parameterContainer) {
            @__w.Write("\r\n\r\n<link href=\"../_layouts/15/LeaveApplication/StyleSheet.css\" rel=\"stylesheet\" " +
                    "/>\r\n\r\n");
            parameterContainer.Controls[0].RenderControl(@__w);
            @__w.Write("\r\n");
            parameterContainer.Controls[1].RenderControl(@__w);
            @__w.Write("\r\n");
            parameterContainer.Controls[2].RenderControl(@__w);
            @__w.Write("\r\n");
            parameterContainer.Controls[3].RenderControl(@__w);
            @__w.Write("\r\n");
            parameterContainer.Controls[4].RenderControl(@__w);
            @__w.Write("\r\n");
            parameterContainer.Controls[5].RenderControl(@__w);
            @__w.Write("\r\n");
            parameterContainer.Controls[6].RenderControl(@__w);
            @__w.Write("\r\n");
   System.Data.DataTable result = ViewState["Result"] as System.Data.DataTable;

   if (result != null && result.Rows.Count > 0)
   {

            @__w.Write("\r\n<div class=\"Container\">\r\n    <table>\r\n        <tr class=\"header\">\r\n            " +
                    "");
               foreach (System.Data.DataColumn column in result.Columns)
               {
                   if (column.ColumnName != "TempEmployeeName" && column.ColumnName != "TempReportingTo")
                   {
            @__w.Write("\r\n            <th>\r\n                ");
        @__w.Write( column.ColumnName );

            @__w.Write("\r\n            </th>\r\n            ");
               }
               } 
            @__w.Write("\r\n        </tr>\r\n        ");
           foreach (System.Data.DataRow row in result.Rows)
           {
            @__w.Write("\r\n        <tr class=\"data\">\r\n            ");
               foreach (System.Data.DataColumn column in result.Columns)
               {
                   if (column.ColumnName != "TempEmployeeName" && column.ColumnName != "TempReportingTo")
                   {
            @__w.Write("\r\n            <td>\r\n                ");
        @__w.Write( row[column.ColumnName].ToString() );

            @__w.Write("\r\n            </td>\r\n            ");
               }
               }
            @__w.Write("\r\n        </tr>\r\n        ");
           } 
            @__w.Write("\r\n    </table>\r\n</div>\r\n");
   }
   else
   { 
            @__w.Write("\r\n<div class=\"Container\">\r\n    <table>\r\n        <tr class=\"data\">\r\n            <t" +
                    "d colspan=\"2\">\r\n                ");
            parameterContainer.Controls[7].RenderControl(@__w);
            @__w.Write("\r\n            </td>\r\n        </tr>\r\n        <tr class=\"header\">\r\n            <th>" +
                    "\r\n                There is no records.\r\n            </th>\r\n        </tr>\r\n    </" +
                    "table>\r\n</div>\r\n");
   } 
            @__w.Write("<br />\r\n<br />\r\n");
   System.Data.DataTable pendingResult = ViewState["PendingResult"] as System.Data.DataTable;

   if (pendingResult != null && pendingResult.Rows.Count > 0)
   {

            @__w.Write("\r\n<div class=\"Container\">\r\n    <table>\r\n        <tr class=\"header\">\r\n            " +
                    "");
               foreach (System.Data.DataColumn column in pendingResult.Columns)
               {
            @__w.Write("\r\n            <th>\r\n                ");
        @__w.Write(column.ColumnName );

            @__w.Write("\r\n            </th>\r\n            ");
               } 
            @__w.Write("\r\n        </tr>\r\n        ");
           foreach (System.Data.DataRow row in pendingResult.Rows)
           {
            @__w.Write("\r\n        <tr class=\"data\">\r\n            ");
               foreach (System.Data.DataColumn column in pendingResult.Columns)
               {
            @__w.Write("\r\n            <td>\r\n                ");
        @__w.Write( row[column.ColumnName].ToString() );

            @__w.Write("\r\n            </td>\r\n            ");
               } 
            @__w.Write("\r\n        </tr>\r\n        ");
           } 
            @__w.Write("\r\n    </table>\r\n</div>\r\n");
   } 
            @__w.Write("<br />\r\n<br />\r\n");
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
