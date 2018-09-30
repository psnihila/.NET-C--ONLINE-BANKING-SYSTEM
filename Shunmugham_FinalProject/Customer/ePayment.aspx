<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ePayment.aspx.cs" Inherits="Customer_ePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-size: large;
    }
    .auto-style3 {
        height: 26px;
    }
    .auto-style4 {
        height: 80px;
    }
        .auto-style5 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5"><strong>COMPLETE THE DETAILS BELOW:</strong></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;<strong><span class="auto-style2"> PAY TO:</span></strong></td>
        <td>
            <asp:ListBox ID="merchantListBox" runat="server" AutoPostBack="True" Height="127px">
                <asp:ListItem>MACY&#39;S</asp:ListItem>
                <asp:ListItem>WALMART</asp:ListItem>
                <asp:ListItem>WHOLE FOODS</asp:ListItem>
                <asp:ListItem>JCPENNEY</asp:ListItem>
                <asp:ListItem>NIKE</asp:ListItem>
                <asp:ListItem>SPROUTS</asp:ListItem>
                <asp:ListItem>SUNFRESH</asp:ListItem>
            </asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="merchantListBox" ErrorMessage="Please select an Item from List" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style2">AMOUNT:</span></strong>&nbsp;</td>
        <td class="auto-style3">
            <br />
            <asp:TextBox ID="amountTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="amountTextBox" ErrorMessage="Amount Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="payButton" runat="server" Height="45px" OnClick="payButton_Click" Text="PAY" Width="99px" BorderColor="#FF6699" BorderStyle="Dashed" BackColor="#3366FF" />
        </td>
        <td>
            <asp:Label ID="errorLabel" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
</table>
</asp:Content>

