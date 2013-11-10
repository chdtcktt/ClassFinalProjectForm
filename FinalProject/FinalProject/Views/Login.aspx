<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Views.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <label>Username</label></td>
            <td>
                <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <label>Password</label></td>
            <td>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
    </table>
    <asp:RequiredFieldValidator 
        ID="RequiredFieldValidatorUserName" 
        runat="server" 
        ErrorMessage="Username is required"
        ControlToValidate="TextBoxUserName">
    </asp:RequiredFieldValidator> 
    <asp:RequiredFieldValidator 
        ID="RequiredFieldValidatorPassword" 
        runat="server" 
        ErrorMessage="Password is required"
        ControlToValidate="TextBoxUserName">
    </asp:RequiredFieldValidator>
    
 

    
    <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
    <asp:ValidationSummary ID="LoginValidationSummary" runat="server" />


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
            <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString %>" SelectCommand="SELECT [ClassName], [ClassDate], [ClassDescription] FROM [Classes]"></asp:SqlDataSource>


</asp:Content>
