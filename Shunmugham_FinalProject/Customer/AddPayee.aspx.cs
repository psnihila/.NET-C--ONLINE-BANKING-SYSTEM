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

public partial class AddPayee : System.Web.UI.Page
{
    int accNum;
    string userInput="";
    string update_query="";
    string pay1="", pay2="", pay3="";
    string KCConString = WebConfigurationManager.ConnectionStrings["KCConString"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        accNum = Convert.ToInt32(Session["accountNum"]);
        //accountTextBox.Text = accNum.ToString();
    }

    protected void addPayeeButton_Click(object sender, EventArgs e)
    {
        userInput = payeeTextBox.Text;
        con = new SqlConnection(KCConString);
        string select_query = "SELECT Payee1,Payee2,Payee3 FROM Payee WHERE Accountno =" +accNum;
        SqlCommand cmd = new SqlCommand(select_query, con);
        SqlDataReader reader;
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                pay1 = ((string)reader["Payee1"]);
                pay2 = ((string)reader["Payee2"]);
                pay3 = ((string)reader["Payee3"]);
            }

            reader.Close();


            if (pay1.Equals("nil"))
            {
                update_query = "UPDATE Payee SET Payee1 = @payee_name WHERE Accountno = @account";
                cmd1 = new SqlCommand(update_query, con);
                cmd1.Parameters.AddWithValue("@payee_name", payeeTextBox.Text);
                cmd1.Parameters.AddWithValue("@account", accNum);
                cmd1.ExecuteNonQuery();
                lblResults.Text = "Payee Added Successfully!";
            }
            else if (pay2.Equals("nil"))
            {
                update_query = "UPDATE Payee SET Payee2 = @payee_name WHERE Accountno = @account";
                cmd1 = new SqlCommand(update_query, con);
                cmd1.Parameters.AddWithValue("@payee_name", payeeTextBox.Text);
                cmd1.Parameters.AddWithValue("@account", accNum);
                cmd1.ExecuteNonQuery();
                lblResults.Text = "Payee Added Successfully!";
            }
            else if (pay3.Equals("nil"))
            {
                update_query = "UPDATE Payee SET Payee3 = @payee_name WHERE Accountno = @account";
                cmd1 = new SqlCommand(update_query, con);
                cmd1.Parameters.AddWithValue("@payee_name", payeeTextBox.Text);
                cmd1.Parameters.AddWithValue("@account", accNum);
                cmd1.ExecuteNonQuery();
                lblResults.Text = "Payee Added Successfully!";
            }
            else
            {
                lblResults.Text = "Sorry! You cannot add more than 3 payees";
            }

        }

        catch (Exception err)
        {
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }

     }
}