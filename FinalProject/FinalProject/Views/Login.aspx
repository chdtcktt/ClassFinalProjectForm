<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Views.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <nav>
        <div class="c-main-container">
            <h1>Contoso University</h1>
            <ul class="c-top-navigation cl-effect-1">
                <li><a href="Classes.aspx">Classes Offered</a></li>
                <li><a href="MyClasses.aspx">My Classes</a></li>
                <li><a href="Register.aspx">Register for Classes</a></li>
                <li><a href="NewLogin.aspx">Request Login</a></li>
                <li class="c-active"><a href="Login.aspx">Login</a></li>

            </ul>
        </div>
    </nav>
    <div class="c-main-container">

        <asp:RequiredFieldValidator
            ID="RequiredFieldValidatorUserName"
            runat="server"
            ErrorMessage="Username is required"
            Display="Dynamic"
            ControlToValidate="TextBoxUserName">
        </asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator
            ID="RequiredFieldPassword"
            runat="server"
            ErrorMessage="Password is required&nbsp;&nbsp;"
            Display="Dynamic"
            ControlToValidate="TextBoxUserName">
        </asp:RequiredFieldValidator>

        <asp:CustomValidator ID="BadLogin" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>


        <div id="c-login" class="input-group input-group-lg">
            <asp:TextBox CssClass="form-control" ID="TextBoxUserName" placeholder="Username" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox CssClass="form-control" ID="TextBoxPassword" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <br />

        <asp:Button CssClass="btn-default" Width="203px" ID="ButtonLogin" runat="server" Text="Log in" OnClick="ButtonLogin_Click" />



    </div>



</asp:Content>
