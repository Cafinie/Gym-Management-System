using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gym_hub
{
    public partial class Loginform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text;
            String password = txtPassword.Text;

            string constr = "Server=.\\SQLEXPRESS;Database=gym_hub;Integrated Security=True";
            SqlConnection conn = new SqlConnection(constr);
            string query = "select * from register where email='" + email + "' and password='" + password + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                
                Session["user"] = email;
                Response.Redirect("homepage.aspx");
            }
            else
            {
               
                Label1.Text = "Invalid Email or Password";

            }

            conn.Close();
            txtEmail.Text = "";
            txtPassword.Text = "";
            
        }
    }
}