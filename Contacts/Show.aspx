<%@ Page Language="AVR" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="false" CodeFile="Show.aspx.vr" Inherits="Contacts_Show" Title="Untitled Page" %>

<asp:Content ID="contentMain" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:Panel ID="pnlMainContent" runat="server" ClientIDMode="Static">
        <asp:Panel ID="pnlShowControls" CssClass="pull-right" runat="server" ClientIDMode="Static">
            <asp:Panel ID="pnlShowControlsBtnGroup" CssClass="btn-group btn-group-sm" runat="server" ClientIDMode="Static">
                <a href="<%= Page.ResolveUrl("~") %>Contacts/Index.aspx" class="btn btn-info">
                    <span class="glyphicon glyphicon-arrow-left"></span> Index
                </a>
                <a href="<%= Page.ResolveUrl("~") %>Contacts/Edit.aspx?id=<%= Request["id"].Trim() %>" class="btn btn-primary">
                    <span class="glyphicon glyphicon-pencil"></span> Edit
                </a>
            </asp:Panel>
        </asp:Panel><!-- #pnlShowControls -->
        <asp:Panel ID="pnlPageHeader" CssClass="page-header" runat="server" ClientIDMode="Static">
            <h2>Contact Detail</h2>
        </asp:Panel><!-- #pnlPageHeader -->
        <asp:Panel ID="pnlContactDetailsRow" CssClass="row" runat="server" ClientIDMode="Static">
            <asp:Panel ID="pnlContactDetailsCol" CssClass="col-sm-8 col-sm-offset-2" runat="server">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Field</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>ID</th>
                            <td><%= contactEntity.id %></td>
                        </tr>
                        <tr>
                            <th>Company</th>
                            <td><%= contactEntity.company %></td>
                        </tr>
                        <tr>
                            <th>First Name</th>
                            <td><%= contactEntity.firstName %></td>
                        </tr>
                        <tr>
                            <th>Last Name</th>
                            <td><%= contactEntity.lastName %></td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td><%= contactEntity.email %></td>
                        </tr>
                        <tr>
                            <th>Phone</th>
                            <td><%= contactEntity.phone %></td>
                        </tr>
                        <tr>
                            <th>Address Line 1</th>
                            <td><%= contactEntity.address1 %></td>
                        </tr>
                        <tr>
                            <th>Address Line 2</th>
                            <td><%= contactEntity.address2 %></td>
                        </tr>
                        <tr>
                            <th>City</th>
                            <td><%= contactEntity.city %></td>
                        </tr>
                        <tr>
                            <th>State</th>
                            <td><%= contactEntity.state %></td>
                        </tr>
                        <tr>
                            <th>Postal Code</th>
                            <td><%= contactEntity.postalCode %></td>
                        </tr>
                    </tbody>
                </table>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel><!-- #pnlMainContent -->
</asp:Content>
