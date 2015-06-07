using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using Owin;
using WebApplication6.Models;

namespace WebApplication6.Account
{

    public partial class BusinessCoupons : System.Web.UI.Page
    {
        public static string business;    
        protected void Page_Load()
        {
            business_user.Text = Context.User.Identity.Name;
            productList.DataBind();
        }

        protected void new_businessCoupon_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/addCouponBusiness");
        }


      
    }
}