using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gym_hub
{
    public partial class add_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
       
            String name = TextBox11.Text;
            String email = TextBox10.Text;
            String phoneno= TextBox3.Text;
            String cnic= TextBox6.Text;
            String age = TextBox5.Text;
            String city = DropDownList1.SelectedItem.Text;
            String joindate=TextBox7.Text;
            String gender =RadioButtonList1.SelectedItem.Text;
            String shifttimming =RadioButtonList2.SelectedItem.Text;    
            String Address =TextBox9.Text;  
            String Constr = "Server=.\\SQLEXPRESS;Database=gym_hub;Integrated Security=True";
            SqlConnection con = new SqlConnection(Constr);
            string query = "INSERT INTO add_Customer VALUES('" + name + "','" + email + "','" + phoneno + "','"+cnic+"','"+age+"','" + city + "','" + joindate + "','" + gender + "','" + shifttimming + "','" + Address + "')";

            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            


            con.Close();
            successMessage.Style["display"] = "block";
            TextBox11.Text = "";
            TextBox10.Text = "";
            TextBox3.Text = "";
            TextBox6.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox9.Text = "";
            DropDownList1.ClearSelection();
            RadioButtonList1.ClearSelection();
            RadioButtonList2.ClearSelection();

        }
    }
}
