﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34209
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LeaveApplication.AllEmployeeLeaveList {
    using System.Linq;
    using System.Web.Security;
    using System.ComponentModel.DataAnnotations;
    using System.Collections.Generic;
    using System.Text.RegularExpressions;
    using System.Web.UI.WebControls;
    using System.Xml.Linq;
    using System.Web.UI;
    using System.Web.UI.HtmlControls;
    using System.Web;
    using System.Configuration;
    using System;
    using System.Text;
    using System.Web.Profile;
    using System.Web.Caching;
    using System.Collections;
    using System.Web.UI.WebControls.WebParts;
    using System.Web.UI.WebControls.Expressions;
    using System.Collections.Specialized;
    using System.Web.SessionState;
    using System.Web.DynamicData;
    
    
    public partial class AllEmployeeLeaveList {
        
        protected global::System.Web.UI.WebControls.DropDownList CmbRequestFrom;
        
        protected global::System.Web.UI.WebControls.DropDownList CmbLeaveType;
        
        protected global::System.Web.UI.WebControls.Label lblErr;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnCurrentYear;
        
        protected global::System.Web.UI.WebControls.HiddenField hdnyear;
        
        public static implicit operator global::System.Web.UI.TemplateControl(AllEmployeeLeaveList target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.DropDownList @__BuildControlCmbRequestFrom() {
            global::System.Web.UI.WebControls.DropDownList @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.DropDownList();
            this.CmbRequestFrom = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "CmbRequestFrom";
            @__ctrl.AutoPostBack = true;
            @__ctrl.SelectedIndexChanged -= new System.EventHandler(this.CmbRequestFrom_SelectedIndexChanged);
            @__ctrl.SelectedIndexChanged += new System.EventHandler(this.CmbRequestFrom_SelectedIndexChanged);
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.DropDownList @__BuildControlCmbLeaveType() {
            global::System.Web.UI.WebControls.DropDownList @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.DropDownList();
            this.CmbLeaveType = @__ctrl;
            @__ctrl.ApplyStyleSheetSkin(this.Page);
            @__ctrl.ID = "CmbLeaveType";
            @__ctrl.AutoPostBack = true;
            @__ctrl.SelectedIndexChanged -= new System.EventHandler(this.CmbLeaveType_SelectedIndexChanged);
            @__ctrl.SelectedIndexChanged += new System.EventHandler(this.CmbLeaveType_SelectedIndexChanged);
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
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnCurrentYear() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnCurrentYear = @__ctrl;
            @__ctrl.ID = "hdnCurrentYear";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private global::System.Web.UI.WebControls.HiddenField @__BuildControlhdnyear() {
            global::System.Web.UI.WebControls.HiddenField @__ctrl;
            @__ctrl = new global::System.Web.UI.WebControls.HiddenField();
            this.hdnyear = @__ctrl;
            @__ctrl.ID = "hdnyear";
            return @__ctrl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__BuildControlTree(global::LeaveApplication.AllEmployeeLeaveList.AllEmployeeLeaveList @__ctrl) {
            global::System.Web.UI.WebControls.DropDownList @__ctrl1;
            @__ctrl1 = this.@__BuildControlCmbRequestFrom();
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(@__ctrl1);
            global::System.Web.UI.WebControls.DropDownList @__ctrl2;
            @__ctrl2 = this.@__BuildControlCmbLeaveType();
            @__parser.AddParsedSubObject(@__ctrl2);
            global::System.Web.UI.WebControls.Label @__ctrl3;
            @__ctrl3 = this.@__BuildControllblErr();
            @__parser.AddParsedSubObject(@__ctrl3);
            global::System.Web.UI.WebControls.HiddenField @__ctrl4;
            @__ctrl4 = this.@__BuildControlhdnCurrentYear();
            @__parser.AddParsedSubObject(@__ctrl4);
            global::System.Web.UI.WebControls.HiddenField @__ctrl5;
            @__ctrl5 = this.@__BuildControlhdnyear();
            @__parser.AddParsedSubObject(@__ctrl5);
            @__ctrl.SetRenderMethodDelegate(new System.Web.UI.RenderMethod(this.@__Render__control1));
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__Render__control1(System.Web.UI.HtmlTextWriter @__w, System.Web.UI.Control parameterContainer) {
            @__w.Write(@"

<script src=""../_layouts/15/LeaveApplication/SPOpenDialog.js""></script>
<link rel=""stylesheet"" href=""../../siteassets/fullyearcalendarpage.css"" />
<div class=""content-box container"">
    <div class=""container1"">
        <div class=""row"">
            <div class=""col-md-12"">                
                <div class=""holidaytypecont"">
                    <div class=""holidaytype"">
                        <div class=""select-year-control"">
                            <label>Request From:</label>
                           ");
            parameterContainer.Controls[0].RenderControl(@__w);
            @__w.Write("\r\n                        </div>\r\n                    </div>\r\n                   " +
                    " <div class=\"select-year\">\r\n                        <div class=\"select-year-cont" +
                    "rol\">\r\n                            <label>Leave Type :</label>\r\n                " +
                    "            ");
            parameterContainer.Controls[1].RenderControl(@__w);
            @__w.Write("\r\n                        </div>\r\n                    </div>\r\n                </d" +
                    "iv>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    ");
       System.Data.DataTable result = ViewState["Result"] as System.Data.DataTable;

       if (result != null && result.Rows.Count > 0)
       {
    
            @__w.Write(@"
    <div class=""Container1"">
        <div class=""table-responsive"">
            <table class=""table"">
                <tr class=""header font"">
                    <th class=""font"">Requested From
                    </th>
                    <th class=""font"">Requested To
                    </th>
                    <th class=""font"">Leave Type
                    </th>
                    <th class=""font"">Start Date
                    </th>
                    <th class=""font"">End Date
                    </th>
                    <th class=""font"">Leave Days
                    </th>
                    <th class=""font"">Reason
                    </th>
                    <th class=""font"">Remarks
                    </th>
                    <th class=""font"">Status
                    </th>
                    <th class=""font"">Cancel
                    </th>
                </tr>
                ");
                   foreach (System.Data.DataRow row in result.Rows)
                   {
            @__w.Write("\r\n                <tr class=\"data\">\r\n                    <td>\r\n                  " +
                    "      ");
                @__w.Write(row["Requested From"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Requested To"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Leave Type"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Starting Date"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Ending Date"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                @__w.Write(row["Leave Days"].ToString());

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        <d" +
                    "iv class=\"wordWrap\">\r\n                            ");
                    @__w.Write(row["Reason"].ToString());

            @__w.Write("\r\n                        </div>\r\n                    </td>\r\n                    " +
                    "<td>\r\n                        ");
                @__w.Write(row["Remarks"].ToString() );

            @__w.Write("\r\n                    </td>\r\n                    <td>\r\n                        ");
                          if (row["Status"].ToString().Trim() == "Pending")
                          {
            @__w.Write("\r\n                        <div style=\"color: #e84743\">\r\n                         " +
                    "   ");
                    @__w.Write( row["Status"].ToString() );

            @__w.Write("\r\n                        </div>\r\n                        ");
                           }
                          else
                          { 
            @__w.Write("\r\n                        <div>\r\n                            ");
                    @__w.Write( row["Status"].ToString() );

            @__w.Write("\r\n                        </div>\r\n                        ");
                           }
            @__w.Write("\r\n                    </td>\r\n\r\n                    <td>\r\n\r\n                      " +
                    "  ");
                @__w.Write(row["Cancel"].ToString() );

            @__w.Write("\r\n\r\n                    </td>\r\n\r\n                </tr>\r\n                ");
                   } 
            @__w.Write("\r\n            </table>\r\n        </div>\r\n    </div>\r\n    ");
       }
   else
   { 
            @__w.Write("\r\n    <div class=\"Container1\">\r\n        <div class=\"table-responsive\">\r\n         " +
                    "   <table class=\"table\">\r\n\r\n                <tr class=\"data\">\r\n                 " +
                    "   <td colspan=\"2\">\r\n                        ");
            parameterContainer.Controls[2].RenderControl(@__w);
            @__w.Write("\r\n                    </td>\r\n                </tr>\r\n                <tr class=\"he" +
                    "ader\">\r\n                    <th>There is no records.\r\n                    </th>\r" +
                    "\n                </tr>\r\n            </table>\r\n        </div>\r\n    </div>\r\n    ");
       } 
            parameterContainer.Controls[3].RenderControl(@__w);
            @__w.Write("\r\n    ");
            parameterContainer.Controls[4].RenderControl(@__w);
            @__w.Write("\r\n</div>\r\n");
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
