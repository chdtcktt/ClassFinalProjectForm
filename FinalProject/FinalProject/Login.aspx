<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Views.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

        <asp:Button  Width="203px" ID="ButtonLogin" runat="server" Text="Log in" OnClick="ButtonLogin_Click" />



    </div>



</asp:Content>
