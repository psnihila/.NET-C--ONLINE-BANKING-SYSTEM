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
using System.Web.UI.WebControls;

public partial class Customer_ePayment : System.Web.UI.Page
{
    int accNum;
    decimal balance, pay_amount, new_balance;
    string update_query = "";
    string KCConString = WebConfigurationManager.ConnectionStrings["KCConString"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        accNum = Convert.ToInt32(Session["accountNum"]);

    }


    protected void payButton_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(KCConString);
        string select_query = "SELECT Balance FROM Customer WHERE Accountno =" + accNum;
        SqlCommand cmd = new SqlCommand(select_query, con);
        SqlDataReader reader;
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                balance = (decimal)reader["Balance"];
            }
            reader.Close();
            pay_amount = decimal.Parse(amountTextBox.Text);
            if (balance <= pay_amount)
            {
                errorLabel.Text = "Cannot Process Your Request! Try with Lower Amount";
            }
            else
            {
                new_balance = balance - pay_amount;
                update_query = "UPDATE Customer SET Balance = @new_bal WHERE Accountno = @account";
                cmd1 = new SqlCommand(update_query, con);
                cmd1.Parameters.AddWithValue("@new_bal", new_balance);
                cmd1.Parameters.AddWithValue("@account", accNum);
                cmd1.ExecuteNonQuery();
                errorLabel.Text = "Cheque Sent Successfully To  "+ merchantListBox.SelectedItem + " !";
            }
        }
        catch (Exception err)
        {
            errorLabel.Text = " " + err.Message;
        }
    }
}