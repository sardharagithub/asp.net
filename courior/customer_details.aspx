﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer_details.aspx.cs" Inherits="customer_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center></br
            </br>
            <h1>Customer Details</h1>
            </br>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" DataKeyNames="cust_id">
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
            SelectCommand="SELECT [cust_id], [cust_nm], [add1], [dest], [mno], [email] FROM [customer]" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:courior_dbConnectionString.ProviderName %>"
            DeleteCommand="DELETE from customer where cust_id=@cust_id"
            UpdateCommand="UPDATE customer SET cust_nm = @cust_nm, add1 = @add1, dest=@dest, mno=@mno, email=@email 
                WHERE cust_id= @cust_id" OnDeleting="SqlDataSource1_Deleting"
           
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
    </center>
    </div>
    </form>
</body>
</html>
