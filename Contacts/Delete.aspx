<%@ Page Language="AVR" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="false" CodeFile="Delete.aspx.vr" Inherits="Contacts_Delete" Title="Delete Contact" %>

<asp:Content ID="contentMain" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:Panel ID="pnlMainContent" runat="server" ClientIDMode="Static">
        <asp:Panel ID="pnlPageHeader" CssClass="page-header" runat="server" ClientIDMode="Static">
            <h2>Delete Contact</h2>
        </asp:Panel><!-- #pnlPageHeader -->
        <asp:Panel ID="pnlConfirmDelete" CssClass="alert alert-danger" runat="server" role="alert" ClientIDMode="Static">
            Are you sure you want to delete this contact?
        </asp:Panel>
        <dl class="dl-horizontal">
            <dt>Company</dt>
            <dd><asp:Literal ID="contactCompany" runat="server"></asp:Literal></dd>
            <dt>First Name</dt>
            <dd><asp:Literal ID="contactFirstName" runat="server"></asp:Literal></dd>
            <dt>Last Name</dt>
            <dd><asp:Literal ID="contactLastName" runat="server"></asp:Literal></dd>
            <dt>Email</dt>
            <dd><asp:Literal ID="contactEmail" runat="server"></asp:Literal></dd>
            <dt>Phone</dt>
            <dd><asp:Literal ID="contactPhone" runat="server"></asp:Literal></dd>
        </dl>
        <hr />
        <a href="<%= Page.ResolveUrl("~") %>Contacts/Index.aspx" class="btn btn-sm btn-default">
            <span class="glyphicon glyphicon-ban-circle"></span> Cancel
        </a>
        <asp:Button ID="btnSubmit" CssClass="btn btn-sm btn-primary pull-right" runat="server" Text="Delete Contact" />
    </asp:Panel><!-- #pnlMainContent -->
</asp:Content>
