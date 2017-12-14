<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DeveloperManagement.ascx.cs" Inherits="LeaveApplication.DeveloperManagement.DeveloperManagement" %>

<script src="../_layouts/15/LeaveApplication/jquery.min.js"></script>
<style>
    .CalTxtbox {
        max-width: 100px;
    }

    .error {
        color: red;
    }
</style>

<div class="Container">
    <table style="width: 100%">
        <tr class="header">
            <th colspan="9">
                <h3 class="font">Issue Status From Developer</h3>
            </th>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvdeveloperview" runat="server" AutoGenerateColumns="false" CssClass="Container" ShowHeaderWhenEmpty="true" EmptyDataText="No Issue">
                    <HeaderStyle CssClass="header" />
                    <Columns>
                        <asp:BoundField DataField="Issue No" HeaderText="Issue No" />
                        <asp:BoundField DataField="Issue Details" HeaderText="Issue Details" ItemStyle-Width="100%" />
                        <asp:BoundField DataField="Comments" HeaderText="Comments" />

                        <asp:TemplateField HeaderText="Issue Status">
                            <ItemTemplate>
                                <asp:DropDownList ID="dwnstatus" runat="server">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Opened</asp:ListItem>
                                    <asp:ListItem> Hold</asp:ListItem>
                                    <asp:ListItem>Closed</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Comments by Developer">
                            <ItemTemplate>
                                <asp:TextBox ID="txtcomments" runat="server" Width="300px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Save">
                            <ItemTemplate>
                                <br />
                                <%--<asp:LinkButton id="btnedit" runat="server" Visible="true" Text="Edit" width="10px" OnClick="btnedit_click"></asp:LinkButton>--%>
                                <asp:LinkButton ID="btnsave" runat="server" Visible="true" Text="Save" Width="10px" OnClick="btnsave_click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblerror" runat="server" Text="" CssClass="error"></asp:Label>
</div>