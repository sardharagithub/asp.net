<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="user_login_detail.aspx.cs" Inherits="user_login_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <center>
     <h1>User Login  Details</h1>
    
            </br>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AutoGenerateEditButton="False" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" DataKeyNames="usr_nm">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                 <asp:TemplateField>
                    <ItemTemplate>
                        <%--ADD THE DELETE LINK BUTTON--%>
                        <asp:LinkButton ID="LinkButton1" Runat="server" 
                            OnClientClick ="return confirm('Are you sure you?');"
                            CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                      
                </asp:TemplateField>
                <asp:TemplateField>

                   
                </asp:TemplateField>
               
                <asp:BoundField DataField="usr_nm" HeaderText="name" SortExpression="usr_nm" />
                <asp:BoundField DataField="usr_psw" HeaderText="password" SortExpression="usr_psw" />
               
               
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

    <div>
    
        <%--ADD THE DELETE LINK BUTTON--%>
        <asp:SqlDataSource
            ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:courior_dbConnectionString %>"
            SelectCommand="SELECT [usr_nm], [usr_psw] FROM [lgn_usr]" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:courior_dbConnectionString.ProviderName %>"
            DeleteCommand="DELETE from lgn_usr where usr_nm=@usr_nm" OnDeleting="SqlDataSource1_Deleting" OnInserted="SqlDataSource1_Inserted" OnInserting="SqlDataSource1_Inserting"
           
            >
            
             <DeleteParameters>
                
                <asp:Parameter Name="usr_nm" Type="String"/> 
             </DeleteParameters>
           
        </asp:SqlDataSource>
    </center>
    <br />
    <br />
</asp:Content>

