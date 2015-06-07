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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataAccess data = new DataAccess();
                city.DataSource = data.getAllCities();
                city.DataBind();
            }
        }

        public IQueryable<Category> GetCategories()
        {
            GenericController control = new GenericController();
            IQueryable<Category> query = control.GetAllCategories();
            return query;
        }

        protected void link_Click(object sender, EventArgs e)
        {
            LinkButton l = sender as LinkButton;
            SqlDataSource1.SelectCommand = "SELECT coupons.coupon_name, categories.category_name, coupons.original_price, coupons.discount_price, coupons.business_name, locations.city, coupons.last_date, coupons.rate FROM categories INNER JOIN coupons ON categories.id = coupons.category_id INNER JOIN locations ON coupons.location_id = locations.ID and categories.category_name='" + l.Text + "' and aproved =1";
            productList.DataBind();
        }

        protected void search_Click(object sender, EventArgs e)
        {
            CouponsController co = new CouponsController();
            SqlDataSource1.SelectCommand = "SELECT coupons.coupon_name, categories.category_name, coupons.original_price, coupons.discount_price, coupons.business_name, locations.city, coupons.last_date, coupons.rate FROM categories INNER JOIN coupons ON categories.id = coupons.category_id INNER JOIN locations ON coupons.location_id = locations.ID and coupons.aproved=1 and coupons.location_id =" + Convert.ToInt32(city.SelectedValue);
            productList.DataBind();
        }
    }

    
}