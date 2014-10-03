<%@ Page Language="AVR" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="false" CodeFile="Index.aspx.vr" Inherits="Contacts_Index" Title="Untitled Page" %>

<asp:Content ID="contentMain" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:Panel ID="pnlMainContent" runat="server" ClientIDMode="Static">
        <asp:Panel ID="pnlIndexControls" CssClass="pull-right" runat="server" ClientIDMode="Static">
            <a href="<%= Page.ResolveUrl("~") %>Contacts/New.aspx" class="btn btn-sm btn-primary">
                <span class="glyphicon glyphicon-plus"></span> New Contact
            </a>
        </asp:Panel><!-- #pnlIndexControls -->
        <asp:Panel ID="pnlPageHeader" CssClass="page-header" runat="server" ClientIDMode="Static">
            <h2>Manage Contacts</h2>
        </asp:Panel><!-- #pnlPageHeader -->
        <asp:Panel ID="pnlContactsTable" CssClass="table-responsive" runat="server" ClientIDMode="Static">
            <asp:GridView ID="gridView" runat="server"
                AutoGenerateColumns="false"
                OnRowCommand="gridView_RowCommand"
                GridLines="None"
                CssClass="table table-bordered"
                ClientIDMode="Static">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID"
                        HeaderStyle-CssClass="text-center"
                        ItemStyle-CssClass="text-center text-muted" />
                    <asp:BoundField DataField="company" HeaderText="Company" />
                    <asp:BoundField DataField="firstName" HeaderText="First Name" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:ButtonField CommandName="ShowContact" ButtonType="Button" Text="View"
                        ControlStyle-CssClass="btn btn-xs btn-info"
                        ItemStyle-CssClass="text-center" HeaderStyle-Width="58px" />
                    <asp:ButtonField CommandName="EditContact" ButtonType="Button" Text="Edit"
                        ControlStyle-CssClass="btn btn-xs btn-primary"
                        ItemStyle-CssClass="text-center" HeaderStyle-Width="53px" />
                    <asp:ButtonField CommandName="DeleteContact" ButtonType="Button" Text="Delete"
                        ControlStyle-CssClass="btn btn-xs btn-danger"
                        ItemStyle-CssClass="text-center" HeaderStyle-Width="68px" />
                </Columns>
            </asp:GridView>
        </asp:Panel><!-- #pnlContactsTable -->
    </asp:Panel><!-- #pnlMainContent -->
</asp:Content>
