<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Views.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--    <nav class="navbar navbar-default" role="navigation">
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
    </nav>--%>

    <nav>
        <div class="c-main-container">
            <h1>Contoso University</h1>
            <ul class="c-top-navigation cl-effect-1">
                <li class="c-active"><a href="Login.aspx">Login</a></li>
                <li><a href="Classes.aspx">Classes Offered</a></li>
                <li><a href="NewLogin.aspx">Request Login</a></li>
            </ul>
        </div>
    </nav>
    <div class="c-main-container">
          <asp:RequiredFieldValidator
                ID="RequiredFieldPassword"
                runat="server"
                ErrorMessage="Password is required&nbsp;&nbsp;"
                Display="Dynamic"
                ControlToValidate="TextBoxUserName">
            </asp:RequiredFieldValidator>
         <asp:RequiredFieldValidator
                ID="RequiredFieldValidatorUserName"
                runat="server"
                ErrorMessage="Username is required"
                Display="Dynamic"
                ControlToValidate="TextBoxUserName">
            </asp:RequiredFieldValidator>
        
                    <asp:CustomValidator ID="BadLogin" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>


        <div id="c-login" class="input-group input-group-lg">
            <asp:TextBox CssClass="form-control" ID="TextBoxUserName" placeholder="Username" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="form-control" ID="TextBoxPassword" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <br/>

        <asp:Button CssClass="btn-primary btn-lg" ID="ButtonLogin" runat="server" Text="Log in" OnClick="ButtonLogin_Click" />

    

    </div>



</asp:Content>
