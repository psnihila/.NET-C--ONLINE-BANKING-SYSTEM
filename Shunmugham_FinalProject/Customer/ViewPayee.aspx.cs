//Programmer:Nihila Shunmugham
//Final Project
//Date: 07/13/2018

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewPayee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        acNumTextBox.Text = Convert.ToString(Session["accountNum"]);
    }
}