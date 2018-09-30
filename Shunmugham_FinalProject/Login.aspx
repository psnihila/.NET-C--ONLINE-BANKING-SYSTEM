<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <br />
&nbsp;&nbsp;&nbsp; <strong>Account Number:</strong><br />
            </td>
            <td>
                <asp:TextBox ID="accNumTextBox" runat="server" Height="21px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp; <strong>USERNAME:&nbsp;</strong><br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="userNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Admin credentials:&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;Account num - 15078&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                Username-shun12<br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                Password-realadmin*</td>
        </tr>
        <tr>
            <td>&nbsp;
                <br />
&nbsp;&nbsp;&nbsp; <strong>PASSWORD:</strong>&nbsp;<br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="pwdTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Customer:<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                Account num- 15079<br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                Username-nihila12<br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                Password-nihila12</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="LOGIN" Height="40px" Width="81px" BackColor="#6666FF" BorderStyle="Dashed" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 82px">
                <asp:Label ID="errorLabel" runat="server"></asp:Label>
            </td>
            <td style="height: 82px">&nbsp;</td>
            <td style="height: 82px">&nbsp;</td>
            <td style="height: 82px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 82px">
                &nbsp;</td>
            <td style="height: 82px">&nbsp;</td>
            <td style="height: 82px">&nbsp;</td>
            <td style="height: 82px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

