<%@ Page Language="AVR" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="false" CodeFile="Edit.aspx.vr" Inherits="Contacts_Edit" Title="Edit Contact" %>

<asp:Content ID="contentMain" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:Panel ID="pnlMainContent" runat="server" ClientIDMode="Static">
        <asp:Panel ID="pnlPageHeader" CssClass="page-header" runat="server" ClientIDMode="Static">
            <h2>Contact Form</h2>
        </asp:Panel><!-- #pnlPageHeader -->
        <asp:Panel ID="pnlContactFormRow" CssClass="row" runat="server" ClientIDMode="Static">
            <asp:Panel ID="pnlContactFormCol" CssClass="col-sm-6 col-sm-offset-3" runat="server" ClientIDMode="Static">
                <asp:Panel ID="pnlContactForm" CssClass="form-horizontal" runat="server" ClientIDMode="Static">
                    <asp:Panel ID="pnlContactFormPanel" CssClass="panel panel-default" runat="server" ClientIDMode="Static">
                        <asp:Panel ID="pnlContactFormPanelHeading" CssClass="panel-heading" runat="server" ClientIDMode="Static">
                            <h3 class="panel-title"><asp:Literal ID="contactName" runat="server"></asp:Literal></h3>
                        </asp:Panel><!-- #pnlContactFormPanelHeading -->
                        <asp:Panel ID="pnlContactFormPanelBody" CssClass="panel-body" runat="server" ClientIDMode="Static">
                            <asp:Panel ID="pnlCompany" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblCompany" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtCompany"
                                    Text="Company"></asp:Label>
                                <asp:Panel ID="pnlTxtCompany" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredCompany" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtCompany"
                                        ErrorMessage="Please enter the company name"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="lengthCompany" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtCompany"
                                        ErrorMessage="Company cannot be longer than 40 characters"
                                        ValidationExpression="^.{0,40}$"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlFirstName" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblFirstName" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtFirstName"
                                    Text="First Name"></asp:Label>
                                <asp:Panel ID="pnlTxtFirstName" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredFirstName" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtFirstName"
                                        ErrorMessage="Please enter the first name"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="lengthFirstName" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtFirstName"
                                        ErrorMessage="First name cannot be longer than 40 characters"
                                        ValidationExpression="^.{0,40}$"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlLastName" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblLastName" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtLastName"
                                    Text="Last Name"></asp:Label>
                                <asp:Panel ID="pnlTxtLastName" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredLastName" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtLastName"
                                        ErrorMessage="Please enter the last name"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="lengthLastName" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtLastName"
                                        ErrorMessage="Last name cannot be longer than 40 characters"
                                        ValidationExpression="^.{0,40}$"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlEmail" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblEmail" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtEmail"
                                    Text="Email"></asp:Label>
                                <asp:Panel ID="pnlTxtEmail" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredEmail" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtEmail"
                                        ErrorMessage="Please enter the email address"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="lengthEmail" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtEmail"
                                        ErrorMessage="Email cannot be longer than 40 characters"
                                        ValidationExpression="^.{0,40}$"></asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="validEmail" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtEmail"
                                        ErrorMessage="Email is not valid"
                                        ValidationExpression="^([a-zA-Z0-9][-.\w]*@([a-zA-Z0-9][-\w]*[a-zA-Z0-9]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlPhone" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblPhone" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtPhone"
                                    Text="Phone"></asp:Label>
                                <asp:Panel ID="pnlTxtPhone" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredPhone" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtPhone"
                                        ErrorMessage="Please enter the phone"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="lengthPhone" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtPhone"
                                        ErrorMessage="Phone cannot be longer than 12 characters"
                                        ValidationExpression="^.{0,12}$"></asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="numericPhone" runat="server" 
                                        Display="Dynamic"
                                        ControlToValidate="txtPhone"
                                        ErrorMessage="Phone must be numeric only"
                                        ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlAddress1" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblAddress1" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtAddress1"
                                    Text="Address Line 1"></asp:Label>
                                <asp:Panel ID="pnlTxtAddress1" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredAddress1" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtAddress1"
                                        ErrorMessage="Please enter the address line 1"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="lengthAddress1" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtAddress1"
                                        ErrorMessage="Address line 1 cannot be longer than 35 characters"
                                        ValidationExpression="^.{0,35}$"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlAddress2" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblAddress2" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtAddress2"
                                    Text="Address Line 2"></asp:Label>
                                <asp:Panel ID="pnlTxtAddress2" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="lengthAddress2" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtAddress2"
                                        ErrorMessage="Address line 2 cannot be longer than 35 characters"
                                        ValidationExpression="^.{0,35}$"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlCity" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblCity" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtCity"
                                    Text="City"></asp:Label>
                                <asp:Panel ID="pnlTxtCity" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredCity" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtCity"
                                        ErrorMessage="Please enter the city"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="lengthCity" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtCity"
                                        ErrorMessage="City cannot be longer than 30 characters"
                                        ValidationExpression="^.{0,30}$"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlState" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblState" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="ddlState"
                                    Text="State"></asp:Label>
                                <asp:Panel ID="pnlDdlState" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="requiredState" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="ddlState"
                                        ErrorMessage="Please select the state"></asp:RequiredFieldValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="pnlPostalCode" runat="server" CssClass="form-group" ClientIDMode="Static">
                                <asp:Label ID="lblPostalCode" CssClass="col-sm-3 control-label" runat="server" ClientIDMode="Static"
                                    AssociatedControlID="txtPostalCode"
                                    Text="Postal Code"></asp:Label>
                                <asp:Panel ID="pnlTxtPostalCode" CssClass="col-sm-9" runat="server" ClientIDMode="Static">
                                    <asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredPostalCode" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtPostalCode"
                                        ErrorMessage="Please enter the postal code"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="lengthPostalCode" runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="txtPostalCode"
                                        ErrorMessage="Postal code cannot be longer than 10 characters"
                                        ValidationExpression="^.{0,10}$"></asp:RegularExpressionValidator>
                                </asp:Panel>
                            </asp:Panel>
                        </asp:Panel><!-- #pnlContactFormPanelBody -->
                        <asp:Panel ID="pnlContactFormPanelFooter" CssClass="panel-footer" runat="server" ClientIDMode="Static">
                            <asp:Panel ID="pnlContactFormPanelActions" CssClass="clearfix" runat="server" ClientIDMode="Static">
                                <a href="<%= Page.ResolveUrl("~") %>Contacts/Index.aspx" class="btn btn-sm btn-default">
                                    <span class="glyphicon glyphicon-ban-circle"></span> Cancel
                                </a>
                                <asp:Button ID="btnSubmit" CssClass="btn btn-sm btn-primary pull-right" runat="server" Text="Save Contact" />
                            </asp:Panel>
                        </asp:Panel><!-- #pnlContactFormPanelFooter -->
                    </asp:Panel><!-- #pnlContactFormPanel -->
                </asp:Panel><!-- #pnlContactForm -->
            </asp:Panel><!-- #pnlContactFormCol -->
        </asp:Panel><!-- #pnlContactFormRow -->
    </asp:Panel><!-- #pnlMainContent -->
</asp:Content>
