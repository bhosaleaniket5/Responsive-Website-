using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace WebApplication1
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSignup_Click(object sender, EventArgs e)
        {
            if (tbUsername.Text != "" & tbpassword.Text != "" && tbname.Text != "" && tbemail.Text != "" && tbconfirmpwd.Text != "")
            {
                if (tbpassword.Text == tbconfirmpwd.Text)
                {
                    SqlConnection con = new SqlConnection
                    {
                        ConnectionString = "Data Source=ANIKET\\SQLEXPRESS;Initial Catalog=login;Persist Security Info=True;User ID=sa;Password=sa*123"

                    };
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into register(fname,emailid,username,password)values(@fname,@emailid,@username,@password)", con);
                    //cmd.Parameters.AddWithValue("@fname", tbname.Text);
                    //cmd.Parameters.AddWithValue("@password", tbpassword.Text);
                    //cmd.Parameters.AddWithValue("@emailid", tbemail.Text);
                    //cmd.Parameters.AddWithValue("@username", tbUsername.Text);

                    

                    /*string checkuser = "Select count(*) from signup where fname= ' " + Username.Text + "'";
                    SqlCommand com = new SqlCommand(checkuser, con);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                    if (temp == 1)
                    {
                        Response.Write("User Already Exists");
                    }

             */
                    

                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Registration Successfull";
                    lblMsg.ForeColor = Color.Green;
                    Response.Redirect("~/Signin.aspx");

                }

                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Passwords do not match";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields Are Mandatory";

            }
        }
    }

}







