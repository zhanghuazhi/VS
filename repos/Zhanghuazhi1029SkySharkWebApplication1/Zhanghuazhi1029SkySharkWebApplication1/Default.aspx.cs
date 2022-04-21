﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Zhanghuazhi1029SkySharkWebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            if (Page.IsValid)
            {
                String username;
                String password;
                username = txtUsername.Text;
                password = txtPassword.Text;
                //get conntion
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString);
                conn.Open();
                //create dataadpter
                string queryString = "Select Username,Password,Role from dtUsers where Username='" + username + "'";
                SqlDataAdapter adapter = new SqlDataAdapter();
                //create command
                adapter.SelectCommand = new SqlCommand(queryString, conn);

                DataSet ds1 = new DataSet();
                adapter.Fill(ds1, "dtUsers");
                if (ds1.Tables["dtusers"].Rows.Count == 0)
                {
                    lblMessage.Text = "Invalid Username";
                }
                else
                {
                    if (ds1.Tables["dtUsers"].Rows[0][1].ToString().Trim() == txtPassword.Text.Trim())
                    {
                        String Role;
                        Role = ds1.Tables["dtUsers"].Rows[0][2].ToString().Trim();
                        Session["usrName"] = username;
                        Session["usrRole"] = Role;
                        if (Role == "Disabled")
                        {
                            lblMessage.Text = "Your account has been disabled.Please contact the network Administrator";
                            return;
                        }
                        switch (Role)
                        {
                            case "Admin":
                                Response.Redirect(".\\NA\\ManageUsers.aspx");
                                break;
                            case "BM":
                                Response.Redirect(".\\BM\\AddFl.aspx");
                                break;
                            case "LOB":
                                Response.Redirect(".\\LOB\\CreateRes.aspx");
                                break;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Invalid password";
                    }
                }
                conn.Close();

            }
        }
    }
}

