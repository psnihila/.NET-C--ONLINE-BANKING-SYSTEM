//Programmer:Nihila Shunmugham
//Final Project
//Date: 07/13/2018

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    string url;
    string uName, pwd;
    bool isAdmin=false;
    int accountNum;
    string KCConString = WebConfigurationManager.ConnectionStrings["KCConString"].ConnectionString;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!Roles.RoleExists("Admin"))
        {
            Roles.CreateRole("Admin");
        }
        if (!Roles.RoleExists("Member"))
        {
            Roles.CreateRole("Member");
        }
    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        try
        {
            accountNum = int.Parse(accNumTextBox.Text);
        }
        catch
        {
            errorLabel.Text = "Error";
        }
        con = new SqlConnection(KCConString);
        string select_sql = "SELECT Username,Password,IsAdmin from Customer WHERE Accountno=" + accountNum;
        SqlCommand cmd = new SqlCommand(select_sql, con);
        SqlDataReader reader;
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            reader.Read();
            uName = reader["Username"].ToString();
            pwd = reader["Password"].ToString();
            isAdmin = reader.GetBoolean(reader.GetOrdinal("IsAdmin"));
            reader.Close();
        }
        catch (Exception err)
        {
            errorLabel.Text = ""+err.Message;
        }
            if (uName.Equals(userNameTextBox.Text.ToString()) && pwd.Equals(pwdTextBox.Text.ToString()))
            {
            if (isAdmin == true)
            {
                Response.Redirect("~/Admin/Admin.aspx");
            }
            else if(isAdmin==false)
            {
                Session["accountNum"] = accountNum;
                url = "~/Customer/Customer.aspx?";
                url += "account=" + Server.UrlEncode(accNumTextBox.Text);
                Response.Redirect(url);
            }
            }
       
    }
   
}