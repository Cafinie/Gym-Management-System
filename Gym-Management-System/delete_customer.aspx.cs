using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace gym_hub
{
    public partial class delete_customer : System.Web.UI.Page
    {
        string constr = "Server=.\\SQLEXPRESS;Database=gym_hub;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                LoadCustomerIDs();
            }
        }

        private void LoadCustomerIDs()
        {
            DropDownList1.Items.Clear(); // remove old items first

            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();

                // ✅ Make sure your column name and table name are exactly correct
                SqlCommand cmd = new SqlCommand("SELECT CustomerID FROM add_Customer", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        DropDownList1.Items.Add(dr["CustomerID"].ToString());
                    }
                }
                else
                {
                    DropDownList1.Items.Add("No records found");
                }

                dr.Close();
                con.Close();
            }

            DropDownList1.Items.Insert(0, "-- Select Customer ID --");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            
        }
    }
}
