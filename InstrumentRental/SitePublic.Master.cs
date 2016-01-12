using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InstrumentRental
{
    public partial class SitePublic : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(!Request.Cookies["BandFlyRenter"]["UN"].ToString().Equals(""))
                {
                    LabelHeaderMessage.Text = "Welcome Back " + Request.Cookies["BandFlyRenter"]["UN"].ToString() + "!";
                }
            }
            catch
            {
                LabelHeaderMessage.Text = "Fast and Easy Instrument Rentals";
            }
        }

        protected void MenuSignIn_MenuItemClick(object sender, MenuEventArgs e)
        {
            Response.Redirect("Login.aspx?NU=1888");
        }
        
    }
}