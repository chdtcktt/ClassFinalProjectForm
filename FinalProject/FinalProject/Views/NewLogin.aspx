<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="NewLogin.aspx.cs" Inherits="FinalProject.Views.NewLogin" %>

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
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="Classes.aspx">Classes Offered</a></li>
                <li class="active"><a href="NewLogin.aspx">Request Login</a></li>
            </ul>
        </div>
    </nav>

    <table class="table table-striped table-condensed">
        <tr>
            <td>
                <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="TextBoxName" Display="Dynamic"
                    ErrorMessage="You must enter your Name"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="TextBoxEmailAddress" Display="Dynamic"
                    ErrorMessage="You must enter your Email Address"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="TextBoxLoginName" Display="Dynamic"
                    ErrorMessage="You must enter your a Login Name"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ControlToValidate="TextBoxLoginName" Display="Dynamic"
                    ErrorMessage="Use at least one least one letter and one digit"
                    ToolTip="Use at least one least one letter and one digit"
                    ValidationExpression="[a-z A-Z]+[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="New Login"
                    CssClass="style2" GroupName="LoginType" />
                &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="Reactivate Login"
                    CssClass="style1" Checked="True" GroupName="LoginType" />
            </td>
        </tr>
    </table>




    <br />
    <asp:Label ID="LabelReason" runat="server" Text="Reason for access?"></asp:Label>
    &nbsp;<br />
    <asp:TextBox ID="TextBoxReason" runat="server" Height="161px" Width="553px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
        ControlToValidate="TextBoxReason" Display="Dynamic"
        ErrorMessage="You must enter a Reason you need access"></asp:RequiredFieldValidator>
    <br />
    <br />
    <span class="style3">Date needed by:</span><br />
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
        Style="background-color: #FF9999" />
    <asp:Label ID="LabelInfo" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="ButtonSubmitRequest" runat="server" Text="Submit Request" Width="203px"
        OnClick="ButtonSubmitRequest_Click" />
    <br />
    <br />
    </div>
    
    

</asp:Content>
