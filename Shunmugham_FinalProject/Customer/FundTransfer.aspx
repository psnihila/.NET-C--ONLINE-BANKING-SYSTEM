<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="FundTransfer.aspx.cs" Inherits="Customer_FundTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 33px;
    }
        .auto-style3 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2"><strong>COMPLETE THE BELOW FOR FUND TRANSFER:</strong></td>
        <td class="auto-style2">
            </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Select a Payee for Fund Transfer:</strong></td>
        <td>
            <br />
            <br />
            <br />
            <asp:CheckBoxList ID="p1CheckBox" runat="server" AutoPostBack="True" DataSourceID="payeeSqlDataSource" DataTextField="Payee1" DataValueField="Accountno">
            </asp:CheckBoxList>
            <asp:CheckBoxList ID="p2CheckBox" runat="server" AutoPostBack="True" DataSourceID="payeeSqlDataSource" DataTextField="Payee2" DataValueField="Accountno">
            </asp:CheckBoxList>
            <asp:CheckBoxList ID="p3CheckBox" runat="server" AutoPostBack="True" DataSourceID="payeeSqlDataSource" DataTextField="Payee3" DataValueField="Accountno">
            </asp:CheckBoxList>
            <br />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="payeeSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:KCConString %>" SelectCommand="SELECT * FROM [Payee] WHERE ([Accountno] = @Accountno)">
                <SelectParameters>
                    <asp:SessionParameter Name="Accountno" SessionField="accountNum" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Enter Amount to Transfer:</strong></td>
        <td>
            <asp:TextBox ID="amountTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="amountTextBox" ErrorMessage="Amount Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="transferButton" runat="server" Height="41px" OnClick="transferButton_Click" style="margin-top: 0px" Text="TRANSFER" Width="137px" BackColor="#6699FF" BorderStyle="Dashed" />
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="errorLabel" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

