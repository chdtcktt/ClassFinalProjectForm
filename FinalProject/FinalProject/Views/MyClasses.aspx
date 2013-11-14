<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master1.Master" AutoEventWireup="true" CodeBehind="MyClasses.aspx.cs" Inherits="FinalProject.Views.MyClasses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <nav>
        <div class="c-main-container">
            <h1>Contoso University</h1>
            <ul class="c-top-navigation cl-effect-1">
                <li><a href="Classes.aspx">Classes Offered</a></li>
                <li class="c-active"><a href="MyClasses.aspx">My Classes</a></li>
                <li><a href="Register.aspx">Register for Classes</a></li>
                <li><a href="NewLogin.aspx">Request Login</a></li>
                <li><a href="Login.aspx">Login</a></li>

            </ul>
        </div>
    </nav>
    
    
        <div class="c-main-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ClassId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
                    <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                    <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
                    <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString %>" SelectCommand="pSelClassesByStudentId" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="StudentId" SessionField="studentid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    
</asp:Content>

