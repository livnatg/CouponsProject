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
    public partial class AddBusiness : System.Web.UI.Page
    {

        protected void add_business_Click(object sender, EventArgs e)
        {
            BusinessController con = new BusinessController();
            con.insertBusiness(business_name.Text, description.Text, address.Text, Convert.ToInt32(cities.SelectedValue), Context.User.Identity.Name);
            Response.Redirect("/Account/Business");
        }
    }
}