using System;
using System.Web.UI;

namespace gym_hub
{
    public partial class edit_customer : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Update button clicked!');</script>");
        }
    }
}
