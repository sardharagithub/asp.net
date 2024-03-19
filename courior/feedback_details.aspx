<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback_details.aspx.cs" Inherits="feedback_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center></br
            </br>
            <h1>Feedback  Details</h1>
            </br>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AutoGenerateEditButton="False" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" DataKeyNames="nm">
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
               
                <asp:BoundField DataField="nm" HeaderText="name" SortExpression="nm" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="feed" HeaderText="feedback" SortExpression="feed" />
               
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
            SelectCommand="SELECT [nm], [email],[feed] FROM [feedback]" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:courior_dbConnectionString.ProviderName %>"
            DeleteCommand="DELETE from feedback where nm=@nm"
           
            >
            
             <DeleteParameters>
                
                <asp:Parameter Name="nm" Type="String"/> 
             </DeleteParameters>
           
        </asp:SqlDataSource>
    </center>
    </div>
    </form>
</body>
</html>