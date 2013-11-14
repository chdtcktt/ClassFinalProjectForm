﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FinalProject.Views.Register" %>

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
        <asp:GridView ID="GridView1" OnRowCommand="Grid_RowCommand" CssClass="table table-striped table-hover table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="ClassId" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId"></asp:BoundField>
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName"></asp:BoundField>
                <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate"></asp:BoundField>
                <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription"></asp:BoundField>
                <asp:ButtonField ButtonType="Button" Text="Add" CommandName="Add"/>
               
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AdvWebDevProjectConnectionString %>' SelectCommand="SELECT * FROM [Classes]"></asp:SqlDataSource>
    
    
    
       
    </div>







</asp:Content>
