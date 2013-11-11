<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="FinalProject.Views.Classes" %>

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
                <li class="active"><a href="Classes.aspx">Classes Offered</a></li>
            </ul>
        </div>
    </nav>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
            <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString %>" SelectCommand="SELECT [ClassName], [ClassDate], [ClassDescription] FROM [Classes]"></asp:SqlDataSource>
</asp:Content>
