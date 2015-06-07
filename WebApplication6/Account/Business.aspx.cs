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
using WebApplication6.Controllers;

namespace WebApplication6.Account
{
    public partial class Business : System.Web.UI.Page
    {
        
        protected void Page_Load()
        {
            business_user.Text = Context.User.Identity.Name;
            BusinessController bus = new BusinessController();
            bus.getAllBusinesses(Context.User.Identity.Name);
            DataList1.DataBind();
        }

        protected void new_business_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/addBusiness");
        }


      
    }
}