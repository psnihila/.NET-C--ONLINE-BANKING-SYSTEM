<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customers_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        width: 100%;
            height: 455px;
        }
    .auto-style2 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME !</strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Account Number:</strong></td>
        <td>
            <asp:TextBox ID="accNumTextBox" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KCConString %>" SelectCommand="SELECT [CustomerName], [CustPhone], [CustAddress], [CustState], [PostalCode], [Balance], [Accountno] FROM [Customer] WHERE ([Accountno] = @Accountno)" DeleteCommand="DELETE FROM [Customer] WHERE [Accountno] = @Accountno" InsertCommand="INSERT INTO [Customer] ([CustomerName], [CustPhone], [CustAddress], [CustState], [PostalCode], [Balance], [Accountno]) VALUES (@CustomerName, @CustPhone, @CustAddress, @CustState, @PostalCode, @Balance, @Accountno)" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [CustPhone] = @CustPhone, [CustAddress] = @CustAddress, [CustState] = @CustState, [PostalCode] = @PostalCode, [Balance] = @Balance WHERE [Accountno] = @Accountno">
            <DeleteParameters>
                <asp:Parameter Name="Accountno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="CustPhone" Type="String" />
                <asp:Parameter Name="CustAddress" Type="String" />
                <asp:Parameter Name="CustState" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Balance" Type="Decimal" />
                <asp:Parameter Name="Accountno" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="accNumTextBox" Name="Accountno" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="CustPhone" Type="String" />
                <asp:Parameter Name="CustAddress" Type="String" />
                <asp:Parameter Name="CustState" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Balance" Type="Decimal" />
                <asp:Parameter Name="Accountno" Type="String" />
            </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <br />
        </td>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="101px" Width="572px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-top: 0px" DataKeyNames="Accountno">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="CustomerName" HeaderText="Name" SortExpression="CustomerName" />
                    <asp:BoundField DataField="CustPhone" HeaderText="Customer Phone" SortExpression="CustPhone" />
                    <asp:BoundField DataField="CustAddress" HeaderText="Address" SortExpression="CustAddress" />
                    <asp:BoundField DataField="CustState" HeaderText="State" SortExpression="CustState" />
                    <asp:BoundField DataField="PostalCode" HeaderText="ZIP" SortExpression="PostalCode" />
                    <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                    <asp:BoundField DataField="Accountno" HeaderText="Account Number" ReadOnly="True" SortExpression="Accountno" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

