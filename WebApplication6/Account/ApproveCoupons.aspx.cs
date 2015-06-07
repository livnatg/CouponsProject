using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using WebApplication6.Models;
//using WebApplication6.DAL;
using System.Web.Routing;
using WebApplication6.Controllers;
using System.Data;
using System.Data.OleDb;
namespace WebApplication6
{
    public partial class ApproveCoupons : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

  

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            CouponsController control = new CouponsController();
            control.updateCoupon(Convert.ToInt32(button.CommandArgument));
            Response.Redirect("/Account/ApproveCoupons");
        }
    }

    
}