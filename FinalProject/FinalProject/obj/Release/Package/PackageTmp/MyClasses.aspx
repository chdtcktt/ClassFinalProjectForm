<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="MyClasses.aspx.cs" Inherits="FinalProject.Views.MyClasses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
        <div class="c-main-container">
            <asp:GridView ID="GridView1" OnRowCommand="Grid_RowCommand" CssClass="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="ClassId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
                    <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                    <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
                    <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
                    <asp:ButtonField ButtonType="Button" Text="Remove" CommandName="Remove" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9ACB28_tacketrcConnectionString %>" SelectCommand="pSelClassesByStudentId" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="StudentId" SessionField="studentid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:Label ID="LabelAlert" runat="server" CssClass="c-Info"></asp:Label>

        </div>
    
</asp:Content>

