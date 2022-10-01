using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace tutorial
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
            conn.Open();

            string checkUser = "Select count(*) from UserData Where UserName= '" + TextBoxUserName.Text + "'";
            SqlCommand cmd = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPassowrdQuery = "select Password from UserData where UserName='" + TextBoxUserName.Text + "'";
                SqlCommand com = new SqlCommand(checkPassowrdQuery, conn);
                string password = com.ExecuteScalar().ToString().Replace(" ","");
                if(password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUserName.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Users.aspx");
                }
                else
                {
                    Response.Write("Password is not correct");
                }


            }
            else
            {
                Response.Write("Username is not correct");
            }

            conn.Close();
        }
    }
}