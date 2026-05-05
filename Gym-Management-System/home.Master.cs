using System;
using System.Web;
using System.Web.UI;

namespace gym_hub
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetActiveLink();
                HandleLoginLogoutVisibility();
            }

            // Ye check har page load pe chalega
            CheckLoginRequiredPages();
        }

        private void SetActiveLink()
        {
            string currentPage = System.IO.Path.GetFileName(Request.Path).ToLower();

            // Reset classes
            lnkHome.Attributes["class"] = "";
            lnkLogin.Attributes["class"] = "";
            lnkCustomer.Attributes["class"] = "";
            lnkEquipment.Attributes["class"] = "";
            lnkPayment.Attributes["class"] = "";
            lnkLogout.Attributes["class"] = "";

            switch (currentPage)
            {
                case "homepage.aspx":
                    lnkHome.Attributes["class"] = "active";
                    break;
                case "loginform.aspx":
                    lnkLogin.Attributes["class"] = "active";
                    break;
                case "customer_dashboard.aspx":
                    lnkCustomer.Attributes["class"] = "active";
                    break;
                case "mainmenu.aspx":
                    lnkEquipment.Attributes["class"] = "active";
                    break;
                case "payment.aspx":
                    lnkPayment.Attributes["class"] = "active";
                    break;
            }
        }

        private void HandleLoginLogoutVisibility()
        {
            // <-- Yahan apna session name check karo -->
            if (Session["user"] != null)
            {
                lnkLogin.Visible = false;
                lnkLogout.Visible = true;
            }
            else
            {
                lnkLogin.Visible = true;
                lnkLogout.Visible = false;
            }
        }

        private void CheckLoginRequiredPages()
        {
            string currentPage = System.IO.Path.GetFileName(Request.Path).ToLower();

            // Ye pages sirf login hone ke baad access hon
            if ((currentPage == "payment.aspx" ||
                 currentPage == "mainmenu.aspx" ||
                 currentPage == "customer_dashboard.aspx") &&
                Session["user"] == null)
            {
                // Login na hone par redirect karo
                Response.Write("<script>alert('Please login first!');window.location='Loginform.aspx';</script>");
            }
        }
    }
}
