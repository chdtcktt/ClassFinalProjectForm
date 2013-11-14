<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="FinalProject.Views.Classes" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-bordered" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
                <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString %>" SelectCommand="SELECT [ClassName], [ClassDate], [ClassDescription] FROM [Classes]"></asp:SqlDataSource>

    </div>

</asp:Content>
