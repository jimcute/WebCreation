﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_control_UserShow : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Request.IsAuthenticated || Session[Constants.Session.ID] == null)
        {
            lbtn_show_user.Visible = false;
            lbtn_logout.Visible = false;
            lbtn_show_user.Text = "";
            lbtn_logout.Text = "";
        }
        else
        {
            
            if (Session[Constants.Session.USERNAME] != null)
            {
                lbtn_show_user.Visible = true;
                lbtn_logout.Visible = true;
                lbtn_show_user.Text = Session[Constants.Session.USERNAME].ToString();
            }
            else
            {
                //  Response.Redirect("~/login.aspx");
            }
        }
    }
    protected void lbtn_logout_Click(object sender, EventArgs e)
    {
        lbtn_show_user.Visible = false;
        lbtn_logout.Visible = false;
        lbtn_show_user.Text = "";
        lbtn_logout.Text = "";
        System.Web.Security.FormsAuthentication.SignOut();
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("~/logout.aspx");
    }
    protected void lbtn_show_user_Click(object sender, EventArgs e)
    {

    }
}