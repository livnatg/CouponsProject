using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data;
namespace WebApplication6.Models
{
    public class Business
    {
        [Key]
        public string businessName { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string description { get; set; }
        public virtual businessOwner businessOwner { get; set; }
        public virtual Category category { get; set; }
        public virtual Location location { get; set; }
        public virtual ICollection<Order> order { get; set; }
        public virtual ICollection<Coupons> coupons { get; set; }

        public void insertBusinessCoupon(string business_name, string coupon_name, string orig_price, string disc_price, string last_date, string category)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            int location = (int)db.QueryCommandScalar("select location_id from business where business_name ='" + business_name + "'");

            
            string insert = "insert into coupons (coupon_name,category_id,original_price,discount_price,last_date,business_name,type,aproved,location_id) values ('" + coupon_name +
                            "'," + Convert.ToInt32(category) + "," + Convert.ToInt32(orig_price) + "," + Convert.ToInt32(disc_price) + ",'" +last_date +
                            "','" + business_name + "',0,0,"+location+")";
            db.NonQueryCommand(insert);

        }

        public void insertBusiness(string business_name, string description, string address, int location_id, string business_user)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            string insert = "insert into business (business_name,description,address,location_id,business_user) values ('" + business_name +
                            "','" + description + "','" + address + "'," + location_id + ",'" + business_user + "')";
            db.NonQueryCommand(insert);

        }

        public DataTable getAllBusinesses(string name)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            DataTable dt = db.QueryCommand("SELECT business.business_name, business.description, locations.city FROM business INNER JOIN locations ON business.location_id = locations.ID where business_user ='"+name+"'");
            return dt;
        }

        public string selectBusiness(string business_name)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();

            return (string)db.QueryCommandScalar("SELECT business_name from business where  business_name ='" + business_name + "'");
        }

        public void deleteBusiness(string name)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            db.NonQueryCommand("delete from business where business_name ='" + name + "'");

        }

        public string selectBusinessCoupon(string coupon_name)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            return (string)db.QueryCommandScalar("SELECT coupon_name from coupons where coupon_name ='" + coupon_name + "'");
        }

        public void deleteBusinessCoupon(string name)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            db.NonQueryCommand("delete from coupons where coupon_name ='" + name + "'");
        }



    }

   
}