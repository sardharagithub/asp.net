<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detaildelivary.aspx.cs" Inherits="detaildelivary" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center><br />
            <br /><h1>Delivery details </h1>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="Black" OnRowDeleted="GridView1_RowDeleted" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" DataKeyNames="cust_id">
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

                     <ItemTemplate>
                        <%--ADD THE UPDATE LINK BUTTON--%>
                        <asp:LinkButton ID="LinkButton2" Runat="server" 
                            OnClientClick ="return confirm('Are you sure you want update?');"
                            CommandName="Update">Update</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="cust_id" HeaderText="cust_id" SortExpression="cust_id" />
                <asp:BoundField DataField="cust_nm" HeaderText="cust_nm" SortExpression="cust_nm" />
                <asp:BoundField DataField="add1" HeaderText="add1" SortExpression="add1" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                <asp:BoundField DataField="dest" HeaderText="dest" SortExpression="dest" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

    <div>
    
        <%--THE SQL DATA SOURCE CONNECTED WITH THE GRIDVIEW--%>
        <asp:SqlDataSource
            ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:courior_dbConnectionString %>"
            SelectCommand="SELECT [cust_id], [cust_nm], [add1], [dest], [mno], [email] FROM [customer]" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:courior_dbConnectionString.ProviderName %>"
            DeleteCommand="DELETE from customer where cust_id=@cust_id"
            UpdateCommand="UPDATE customer SET cust_nm = @cust_nm, add1 = @add1, dest=@dest, mno=@mno, email=@email 
                WHERE cust_id= @cust_id" OnDeleting="SqlDataSource1_Deleting" OnDeleted="SqlDataSource1_Deleted"
           
            >
            
             <DeleteParameters>
                
                <asp:Parameter Name="cust_id" Type="String"/> 
             </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="cust_nm" />
                <asp:Parameter Name="add1" />
                <asp:Parameter Name="dest" />
                <asp:Parameter Name="mno" />
                <asp:Parameter Name="email" />
                <asp:Parameter Name="cust_id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div></center>
    </form>
</body>
</html>
