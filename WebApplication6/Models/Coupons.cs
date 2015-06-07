using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data;
namespace WebApplication6.Models
{
    public class Coupons
    {
        
        public int couponID { get; set; }
        public string couponName { get; set; }
        public int originalPrice { get; set; }
        public int discountPrice { get; set; }
        public int rate { get; set; }
        public DateTime lastDate { get; set; }
        //public virtual ICollection<Order> order { get; set; }
        public string categoryName { get; set; }
        public Business business { get; set; }
        public int locationID { get; set; }
        public string userName { get; set; }

        public Coupons()
        {
            couponID = 0;
            couponName = null;

            discountPrice = 0;
            rate = 0;
            lastDate = DateTime.Now;
            categoryName = null;


        }

        public Coupons(int id,string name,int disountP,int r,DateTime lastD,string category_name,int location_id)
        {
            couponID = id;
            couponName = name;
            discountPrice = disountP;
            rate = r;
            lastDate = lastD;
            categoryName = category_name;
            locationID = location_id;

        }

        public void updateCoupon(int id)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            string insert = "update coupons set aproved =1 where id =" + id;
            db.NonQueryCommand(insert);
        }

        public int  insertCoupon(string coupon_name,int location_id,int category)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            string insert = "insert into coupons (coupon_name,type,location_id,category_id) values ('" + coupon_name + "',1,"+location_id+","+category+") SELECT SCOPE_IDENTITY()";
            return db.NonQueryCommand(insert);
        }

        public void deleteCoupon(int id)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            string delete = "delete from coupons where id ="+id;
            db.NonQueryCommand(delete);
        }
       
    }



    public class SocialNetworkcoupon : Coupons
    {
        public SocialNetworkcoupon()
        {
            
        }
        public string webSite { get; set; }
    }

    


}