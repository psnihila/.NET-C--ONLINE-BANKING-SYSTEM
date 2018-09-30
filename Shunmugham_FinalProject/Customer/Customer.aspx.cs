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

public partial class Customers_Customer : System.Web.UI.Page
{
    string accountNum;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
       
        accountNum = Convert.ToString(Session["accountNum"]); 
        accNumTextBox.Text = accountNum;
       
    }

}