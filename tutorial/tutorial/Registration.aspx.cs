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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
                con.Open();

                string checkUser = "Select count(*) from UserData Where UserName= '" + username.Text + "'";
                SqlCommand cmd = new SqlCommand(checkUser, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                Response.Write("Hdfvb");
                if(temp == 1)
                {
                    Response.Write("Username already taken");
                }

                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
                con.Open();

                string insertQuery = "Insert into UserData (Id,UserName, Email, Password, Country) values (@ID, @uname, @emailID, @Password, @Country)";

                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@ID", newGUID.ToString());
                cmd.Parameters.AddWithValue("@uname", username.Text);
                cmd.Parameters.AddWithValue("@emailID", email.Text);
                cmd.Parameters.AddWithValue("@Password",password.Text);
                cmd.Parameters.AddWithValue("@Country", country.SelectedItem.ToString());
                //Console.WriteLine("Hello");
                //Response.Write("Hiii");

                cmd.ExecuteNonQuery();

                Response.Redirect("Manager.aspx");
                Response.Write("Registration Successful");

                con.Close();


            }
            catch(Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
            /*Response.Write("Registration is successful");*/
        }
    }
}