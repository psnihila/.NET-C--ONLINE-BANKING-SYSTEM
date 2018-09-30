<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td><strong><span style="font-size: large">WELCOME ! COMPLETE THE DETAILS BELOW AND SIGN UP
                </span></strong>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong><span style="font-size: large">ENTER YOUR ACCOUNT NUMBER:
                </span>
                <br style="font-size: large" />
                <span style="font-size: large">&nbsp;(MUST BE 5 digits)&nbsp;&nbsp;&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="accNumTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="accNumTextBox" ErrorMessage="Account Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="accNumTextBox" ErrorMessage="Must be  5 digits only" ForeColor="Blue" MaximumValue="99999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>CUSTOMER NAME:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>CONTACT PHONE:&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="Phone Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="Must be in 555-555-5555 format" ForeColor="Blue" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>MAILING ADDRESS:&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="addressTextBox" runat="server"></asp:TextBox>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="addressTextBox" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;
                <br />
                <strong>STATE:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cityTextBox" ErrorMessage="State Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>ZIP CODE:&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="zipTextBox" runat="server"></asp:TextBox>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="zipTextBox" ErrorMessage="ZIP Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="zipTextBox" ErrorMessage="Please enter in correct format" ForeColor="Blue" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="custidLabel" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="errLabel" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <strong>ENTER INITIAL BALANCE:</strong><br />
            </td>
            <td>&nbsp;
                <br />
&nbsp;<br />
&nbsp;&nbsp;<asp:TextBox ID="balanceTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="balanceTextBox" ErrorMessage="Balance Amount Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>ENTER A USERNAME:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="userNameTextBox" runat="server"></asp:TextBox>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="userNameTextBox" ErrorMessage="Username required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>ENTER A PASSWORD:&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="pwdTextBox" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="pwdTextBox" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="createAccountButton" runat="server" Height="44px" OnClick="createAccountButton_Click" Text="CREATE MY ACCOUNT" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

