﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="NewLogin.aspx.cs" Inherits="FinalProject.Views.NewLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="c-main-container">
        <table class="table">
            <tr>
                <td>
                    <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="c-Errors" runat="server"
                        ControlToValidate="TextBoxName" Display="Dynamic"
                        ErrorMessage="You must enter your Name"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" CssClass="c-Errors" runat="server"
                        ControlToValidate="TextBoxName" Display="Dynamic"
                        ErrorMessage="Only use characters without numbers, please"
                        ToolTip="Only use characters without numbers, please"
                        ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelEmailAddress" runat="server" Text="Email Address"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBoxEmailAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="c-Errors" runat="server"
                        ControlToValidate="TextBoxEmailAddress" Display="Dynamic"
                        ErrorMessage="You must enter your Email Address"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="c-Errors" runat="server"
                        ControlToValidate="TextBoxEmailAddress" Display="Dynamic"
                        ErrorMessage="Not a valid email address"
                        ToolTip="&quot;Customer@MyWebApp.com&quot;"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelLoginName" runat="server" Text="LoginName"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBoxLoginName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="c-Errors" runat="server"
                        ControlToValidate="TextBoxLoginName" Display="Dynamic"
                        ErrorMessage="You must enter a Login Name"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="c-Errors" runat="server"
                        ControlToValidate="TextBoxLoginName" Display="Dynamic"
                        ErrorMessage="Use at least one least one letter and one digit"
                        ToolTip="Use at least one least one letter and one digit"
                        ValidationExpression="[a-z A-Z]+[0-9]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelLoginType" runat="server" Text="Login Type"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="New Login"
                        GroupName="LoginType" />
                    &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="Reactivate Login"
                        Checked="True" GroupName="LoginType" />
                </td>
            </tr>
            <tr>
                <td>
                    <span>Date needed by:</span><br />
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    <asp:Label ID="LabelInfoCalendar" CssClass="c-Errors" runat="server"></asp:Label>

                </td>
                <td>

                    <asp:Label ID="LabelReason" runat="server" Text="Reason for access?"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBoxReason" runat="server" Height="161px" Width="553px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="c-Errors" runat="server"
                        ControlToValidate="TextBoxReason" Display="Dynamic"
                        ErrorMessage="You must enter a Reason you need access"></asp:RequiredFieldValidator>

                </td>
            </tr>
        </table>
        <asp:Label ID="LabelInfoError" CssClass="c-Errors" runat="server"></asp:Label>
        <asp:Label ID="LabelInfo" CssClass="c-Info" runat="server"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="c-Errors" />
        <asp:Button ID="ButtonSubmitRequest" runat="server" Text="Submit Request" Width="203px"
            OnClick="ButtonSubmitRequest_Click" />



    </div>



</asp:Content>
