using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace asssessment_2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                          Session["user"] = Txtuser.Text;
            if (FormsAuthentication.Authenticate(Txtuser.Text, Txtpwd.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(Txtuser.Text, true);

            }
            else
                Response.Write("<script>alert('Invalid User')</script>");
        }
    }
}
