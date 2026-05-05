using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gym_hub
{
    public partial class Registrationform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string constr = "Server=.\\SQLEXPRESS;Database=gym_hub;Integrated Security=True";
            SqlConnection conn = new SqlConnection(constr);

            //string checkQuery = "SELECT COUNT(*) FROM register";
            //SqlCommand checkCmd = new SqlCommand(checkQuery, conn);
            //conn.Open();
            //int count = (int)checkCmd.ExecuteScalar();
            //conn.Close();

            //if (count > 0)
            //{
            //    Button1.Enabled = false;
            //    Button1.Text = "Admin Already Registered";
            //    Button1.BackColor = System.Drawing.Color.Gray;
            //    Response.Write("<script>alert('Admin already registered! Only one account allowed.');</script>");
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String name = TextBox1.Text;
            String email = TextBox2.Text;
            String password = TextBox3.Text;
            String gender = RadioButtonList1.SelectedItem != null ? RadioButtonList1.SelectedItem.Text : "";
            String dob = TextBox4.Text;
            String city = DropDownList1.SelectedItem.Text;

            string constr = "Server=.\\SQLEXPRESS;Database=gym_hub;Integrated Security=True";
            SqlConnection conn = new SqlConnection(constr);

            string query = "insert into register values ('" + name + "','" + email + "','" + password + "','" + gender + "','" + dob + "','" + city + "')";
            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            // ✅ Clear all fields after registration
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            RadioButtonList1.ClearSelection();
            DropDownList1.ClearSelection();

            // ✅ Show success message
            Response.Write("<script>alert('Admin Registered Successfully!'); document.getElementById('" + TextBox2.ClientID + "').value=''; document.getElementById('" + TextBox3.ClientID + "').value=''; window.location='Registrationform.aspx';</script>");
        }
        }
    }