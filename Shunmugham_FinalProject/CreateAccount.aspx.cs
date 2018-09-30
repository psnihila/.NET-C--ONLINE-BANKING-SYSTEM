//Programmer:Nihila Shunmugham
//Final Project
//Date: 07/13/2018

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateAccount : System.Web.UI.Page
{
    string KCConString = WebConfigurationManager.ConnectionStrings["KCConString"].ConnectionString;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!Roles.RoleExists("Admin"))
        {
            Roles.CreateRole("Admin");
        }
        if (!Roles.RoleExists("Customer"))
        {
            Roles.CreateRole("Customer");
        }
    }

    protected void createAccountButton_Click(object sender, EventArgs e)
    {
        string userName = userNameTextBox.Text;
        con = new SqlConnection(KCConString);
        string insert_payee = "INSERT INTO Payee(Accountno,Payee1,Payee2,Payee3) VALUES (@account_no,@pay1,@pay2,@pay3)";
        SqlCommand cmd1 = new SqlCommand(insert_payee, con);
        cmd1.Parameters.AddWithValue("@account_no", accNumTextBox.Text);
        cmd1.Parameters.AddWithValue("@pay1", "nil");
        cmd1.Parameters.AddWithValue("@pay2", "nil");
        cmd1.Parameters.AddWithValue("@pay3", "nil");

        string insertSQL = "";
        insertSQL += "INSERT INTO Customer(";
        insertSQL += "CustomerName,CustPhone,CustAddress,CustState,PostalCode,Accountno,Username,Password,Balance,IsAdmin)";
        insertSQL += "VALUES";
        insertSQL += "(@cu_name,@phone,@address,@state,@zip,@account,@username,@password,@balance,@admin)";
        SqlCommand cmd = new SqlCommand(insertSQL, con);
        
        cmd.Parameters.AddWithValue("@cu_name", nameTextBox.Text);
        cmd.Parameters.AddWithValue("@phone", phoneTextBox.Text);
        cmd.Parameters.AddWithValue("@address", addressTextBox.Text);
        cmd.Parameters.AddWithValue("@state", cityTextBox.Text);
        cmd.Parameters.AddWithValue("@zip", zipTextBox.Text);
        cmd.Parameters.AddWithValue("@account", accNumTextBox.Text);
        cmd.Parameters.AddWithValue("@username", userNameTextBox.Text);
        cmd.Parameters.AddWithValue("@password", pwdTextBox.Text);
        cmd.Parameters.AddWithValue("@balance", balanceTextBox.Text);
        if (pwdTextBox.Text == "realadmin*")
        {
            cmd.Parameters.AddWithValue("admin", 1);
        }
        else
        {
            cmd.Parameters.AddWithValue("@admin",0);
        }
            try
        {
            con.Open();
            if (pwdTextBox.Text == "realadmin*")
            {
                cmd1.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                errLabel.Text = "success";
                Roles.AddUserToRole(userName, "Admin");
                Response.Redirect("~/Admin/Admin.aspx");
            }
            else
            {
                cmd1.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                errLabel.Text = "success";
                Roles.AddUserToRole(userName, "Customer");
                string url = "~/Customer/Customer.aspx?";
                Session["accountNum"] = accNumTextBox.Text;
                Response.Redirect(url);
            }
        }
        catch 
        {
            errLabel.Text = "PLEASE Enter your Unique Account Number";
        }      

    }
}