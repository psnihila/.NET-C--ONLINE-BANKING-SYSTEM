<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewPayee.aspx.cs" Inherits="ViewPayee" %>

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
        <td>Account Number:</td>
        <td>
            <asp:TextBox ID="acNumTextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Accountno" DataSourceID="SqlDataSource1" Height="192px" Width="329px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Accountno" HeaderText="Account Number" ReadOnly="True" SortExpression="Accountno" />
                    <asp:BoundField DataField="Payee1" HeaderText="Payee1" SortExpression="Payee1" />
                    <asp:BoundField DataField="Payee2" HeaderText="Payee2" SortExpression="Payee2" />
                    <asp:BoundField DataField="Payee3" HeaderText="Payee3" SortExpression="Payee3" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
        </td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KCConString %>" SelectCommand="SELECT * FROM [Payee] WHERE ([Accountno] = @Accountno)" DeleteCommand="DELETE FROM [Payee] WHERE [Accountno] = @Accountno" InsertCommand="INSERT INTO [Payee] ([Accountno], [Payee1], [Payee2], [Payee3]) VALUES (@Accountno, @Payee1, @Payee2, @Payee3)" UpdateCommand="UPDATE [Payee] SET [Payee1] = @Payee1, [Payee2] = @Payee2, [Payee3] = @Payee3 WHERE [Accountno] = @Accountno">
                <DeleteParameters>
                    <asp:Parameter Name="Accountno" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Accountno" Type="Int32" />
                    <asp:Parameter Name="Payee1" Type="String" />
                    <asp:Parameter Name="Payee2" Type="String" />
                    <asp:Parameter Name="Payee3" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="acNumTextBox" Name="Accountno" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Payee1" Type="String" />
                    <asp:Parameter Name="Payee2" Type="String" />
                    <asp:Parameter Name="Payee3" Type="String" />
                    <asp:Parameter Name="Accountno" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

