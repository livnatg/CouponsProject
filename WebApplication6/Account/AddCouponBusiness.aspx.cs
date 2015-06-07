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
    public partial class AddCouponBusiness : System.Web.UI.Page
    {
        protected void Page_Load()
        {
            if (!IsPostBack)
            {
                business_user.Text = Context.User.Identity.Name;
                business_name_list.DataBind();
            }      

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            BusinessController con = new BusinessController();
            con.insertBusinessCoupon(business_name_list.SelectedValue, coupon_name.Text, orig_price.Text, disc_price.Text, last_date.Text, category.SelectedValue);
            Response.Redirect("/Account/Business");
        }

       
       
    }
}