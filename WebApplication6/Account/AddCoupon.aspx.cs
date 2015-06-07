using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System.Threading.Tasks;
using WebApplication6.Models;
using WebApplication6.Controllers;
namespace WebApplication6.Account
{
    public partial class AddCoupon : System.Web.UI.Page
    {
        protected void Page_Load()
        {
            
            //if (!IsPostBack)
            //{
            //    if (Request.QueryString["key"] != null)
            //    {
            //        business_name_list.SelectedValue = Request.QueryString["key"];
            //    }

            //    business_name_list.DataBind();

            //}      

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            CouponsController con = new CouponsController();
            con.insertCoupon(coupon_name.Text,Convert.ToInt32(cities.SelectedValue), Convert.ToInt32(categories.SelectedValue));
            Response.Redirect("~/");
        }

        protected void business_name_list_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}