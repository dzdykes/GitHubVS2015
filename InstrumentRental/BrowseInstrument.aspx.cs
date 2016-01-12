using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace InstrumentRental
{
    public partial class BrowseInstrument : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                PanelDetails.Visible = true;
                DataView dvIntsr = (DataView)SDS_InstrumentDetails.Select(DataSourceSelectArguments.Empty);
                PanelDetails.Visible = true;
                Session["InstrumentRent"] = dvIntsr[0][0];
                LabelType.Text = dvIntsr[0][1].ToString();
                LabelDescription.Text = dvIntsr[0][2].ToString();
                LabelPrice.Text = "$" + dvIntsr[0][3].ToString();
                ImagePhoto.ImageUrl = "images/instruments/" + dvIntsr[0][4].ToString();
            }
            catch { }
        }

        protected void ButtonRent_Click(object sender, EventArgs e)
        {
            Response.Redirect("RentInstrument.aspx");
        }
    }
}