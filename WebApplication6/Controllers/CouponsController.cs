using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication6.Models;
namespace WebApplication6.Controllers
{
    public class CouponsController
    {
        public static DataAccess data = new DataAccess();
       
        public int insertCoupon(string coupon_name,int location,int category)
        {
            Coupons coup = new Coupons();
            return coup.insertCoupon(coupon_name, location,category);
        }

        public void updateCoupon(int id)
        {
            Coupons coup = new Coupons();
            coup.updateCoupon(id);
        }

        public void deleteCoupon(int id)
        {
            Coupons coup = new Coupons();
            coup.deleteCoupon(id);
        }

        
    }
}