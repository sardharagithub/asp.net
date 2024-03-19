<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_detail.aspx.cs" Inherits="admin_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    
    <center><h1 style="font-size: xx-large; font-weight: 900; color: #000000; background-color: #66FF99">Admin Details</h1></center>

    <div style="background-color: #CCCCCC; font-size: medium; font-weight: bolder; color: #FFFFFF">
                   <center><h3 style="font-size: medium; font-weight: 700; color: #FFFFFF; background-color: #99FF99">Admin  Profile</h3>
                   &nbsp;&nbsp;&nbsp;
                       <center>
                   <fieldset style="height: 261px; width: 347px; margin-left: 35px; margin-top: 48px; color: #000000; font-weight: 900; background-color: #FF99FF;">
                      
                         <b>
                       <br />
                       Name:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>Jikadra Shweta</u><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u> Sardhara Darshita</u><br />
                                       <br /><br />
                         <b>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>&nbsp;<u>shwetajikadra122@gmail.com</u><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     <u> <a href="mailto:sardharadarshi20@gmail.com">sardharadarshi20@gmail.com</a></u>
                           &nbsp;&nbsp;<br />
&nbsp;<br />
                        <b>Mobile:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>&nbsp;<u>9678990567</u><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     <u>7896045689</u>
                           &nbsp;</fieldset>
                       <br />
                       
                       </center></center>
        </div>
    
    
    <center><h1 style="font-size: xx-large; color: #000000; background-color: #66FF99">Manage  Admin</h1>

        <br />
        <div style="background-color: #999999" >
<center>
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="222px" Width="437px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView></center>
            </div>
        <br />
    </center>
    </br>

</asp:Content>

