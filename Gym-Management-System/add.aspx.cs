using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gym_hub
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Name = TextBox1.Text;
            string Type = TextBox2.Text;
            string Brand = TextBox3.Text;
            string Quantity = TextBox4.Text;
            string PurchaseDate = TextBox5.Text;
            string Condition = DropDownList1.SelectedItem.Text;
            string Notes = TextBox6.Text;

            String constr = "Server=.\\SQLEXPRESS;Database=gym_hub;Integrated Security=True";
            SqlConnection conn = new SqlConnection(constr);
            string query = "INSERT INTO addequipment VALUES('" + Name + "', '" + Type + "','" + Brand + "','" + Quantity + "','" + PurchaseDate + "','" + Condition + "','" + Notes + "')";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Data inserted successfully');</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            
            DropDownList1.ClearSelection();
            
        }
    }
}