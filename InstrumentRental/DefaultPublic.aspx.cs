﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InstrumentRental
{
    public partial class DefaultPublic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"]!=null)
            {
                LabelWelcomeMessage.Text = "Hello " + Request.Cookies["BandFlyRenter"]["UN"];
            }
        }
    }
}