<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="courier_req_details.aspx.cs" Inherits="courier_req_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   </br>
    <div>  <center>  <h1>Booking Detail</h1>
        <hr>

     
         <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" DataKeyNames="r_id" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
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
                 <asp:BoundField DataField="r_id" HeaderText="request_id" SortExpression="r_id" />
                <asp:BoundField DataField="f_nm" HeaderText="first_nm" SortExpression="f_nm" />
                 <asp:BoundField DataField="l_nm" HeaderText="last_id" SortExpression="l_nm" />
                <asp:BoundField DataField="con_no" HeaderText="contact_no" SortExpression="con_no"/>
                <asp:BoundField DataField="del_dt" HeaderText="delivery_date" SortExpression="del_dt"/>
                <asp:BoundField DataField="tc_code" HeaderText="tracking_code" SortExpression="tc_code"/>
                <asp:BoundField DataField="ship_add1" HeaderText="shiping_add" SortExpression="ship_add1" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="pack_des" HeaderText="pack_des" SortExpression="pack_des" />
                <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                <asp:BoundField DataField="no_box" HeaderText="number_box" SortExpression="no_box"/>
                <asp:BoundField DataField="cour_type" HeaderText="type" SortExpression="cour_type"/>
                <asp:BoundField DataField="charge" HeaderText="charge" SortExpression="charge" />
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


         <%--ADD THE DELETE LINK BUTTON--%>
        <asp:SqlDataSource
            ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:courior_dbConnectionString %>"
            SelectCommand="SELECT [r_id], [f_nm], [l_nm], [con_no], [del_dt], [tc_code] ,[ship_add1], [city], [state], [pack_des], [weight], [no_box], [cour_type], [charge] FROM [request_courier]" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:courior_dbConnectionString.ProviderName %>"
            DeleteCommand="DELETE from request_courier where r_id=@r_id"
            UpdateCommand="UPDATE request_courier SET f_nm= @f_nm, l_nm = @l_nm, con_no=@con_no, del_dt=@del_dt,tc_code=@tc_code,ship_add1=@ship_add1,city=@city,state=@state,pack_des=@pack_des,weight=@weight,no_box=@no_box,cour_type=@cour_type,charge=@charge
                WHERE r_id= @r_id" OnDeleting="SqlDataSource1_Deleting"  OnUpdated="SqlDataSource1_Updated" OnUpdating="SqlDataSource1_Updating"
           
            >
            
             <DeleteParameters>
                 <asp:Parameter Name="r_id" Type="String"/> 
             </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="f_nm" />
                <asp:Parameter Name="l_nm" />
                <asp:Parameter Name="con_no" />
                <asp:Parameter Name="del_dt" />
                <asp:Parameter Name="tc_code" />
                <asp:Parameter Name="ship_add1" />
                <asp:Parameter Name="city" />
                <asp:Parameter Name="state" />
                <asp:Parameter Name="pack_des" />
                <asp:Parameter Name="weight" />
                <asp:Parameter Name="no_box" />
                <asp:Parameter Name="cour_type" />
                 <asp:Parameter Name="charge" />
                <asp:Parameter Name="r_id" />
            </UpdateParameters>
        </asp:SqlDataSource>

      </center>  
        </br>
    </div>  

</asp:Content>

