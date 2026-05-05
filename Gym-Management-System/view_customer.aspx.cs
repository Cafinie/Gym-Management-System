using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gym_hub
{
    public partial class view_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            //GridView1.DataSource = SqlDataSource1; // DataSource assign karo
            GridView1.DataBind();
        }
    }
}