<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>WELCOME ADMIN!</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Accountno" DataSourceID="custSqlDataSource" Height="216px" Width="444px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="Accountno" HeaderText="Account Number" ReadOnly="True" SortExpression="Accountno" />
                        <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" SortExpression="CustomerName" />
                        <asp:BoundField DataField="CustPhone" HeaderText="Customer Contact" SortExpression="CustPhone" />
                        <asp:BoundField DataField="CustAddress" HeaderText="Address" SortExpression="CustAddress" />
                        <asp:BoundField DataField="CustState" HeaderText="State" SortExpression="CustState" />
                        <asp:BoundField DataField="PostalCode" HeaderText="ZIP" SortExpression="PostalCode" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
            <td>
                <asp:SqlDataSource ID="custSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:KCConString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

