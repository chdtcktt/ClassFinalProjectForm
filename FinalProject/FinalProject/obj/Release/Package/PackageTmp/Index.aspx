<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FinalProject.Views.Classes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 

    <div class="c-main-container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-bordered" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
                <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9ACB28_tacketrcConnectionString %>" SelectCommand="SELECT [ClassName], [ClassDate], [ClassDescription] FROM [Classes]"></asp:SqlDataSource>

    </div>

</asp:Content>
