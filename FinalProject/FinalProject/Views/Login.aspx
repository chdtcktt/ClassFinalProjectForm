<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Views.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Login.aspx">Contoso University</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="Login.aspx">Login</a></li>
                <li><a href="Classes.aspx">Classes Offered</a></li>
                <li><a href="NewLogin.aspx">Request Login</a></li>
            </ul>
        </div>
    </nav>
    <table>
        <tr>
            <td>
                <label>Username</label></td>
            <td>
                <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorUserName"
                    runat="server"
                    ErrorMessage="-Username is required"
                    Display="Dynamic"
                    ControlToValidate="TextBoxUserName">
                </asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td>
                <label>Password</label></td>
            <td>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldPassword"
                    runat="server"
                    ErrorMessage="-Password is required"
                    Display="Dynamic"
                    ControlToValidate="TextBoxUserName">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>

    <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
    <asp:CustomValidator ID="BadLogin" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>






</asp:Content>
