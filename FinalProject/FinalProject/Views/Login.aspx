<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Views.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <label>Username</label>
        <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
        
        <label>Password</label>
        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
</asp:Content>
