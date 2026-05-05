using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gym_hub
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            String name = txtName.Text;
            String email = txtEmail.Text;
            String city = ddlCity.SelectedItem.Text;

            string constr = "Server=.\\SQLEXPRESS;Database=gym_hub;Integrated Security=True";
            SqlConnection conn = new SqlConnection(constr);

            // 👇 Same logic style as your Registration form
            string query = "select Password from register where Name='" + name + "' and Email='" + email + "' and City='" + city + "'";
            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                String password = dr["Password"].ToString();
                lblResult.Text = "Your password is " + password;
            }
            else
            {
                // lblResult.CssClass = "message error-box";
                lblResult.Text = "No user found with these details.";
            }

            dr.Close();
            conn.Close();
            txtEmail.Text = "";
            txtName.Text = "";
            
           ddlCity.ClearSelection();
        }
    }
}