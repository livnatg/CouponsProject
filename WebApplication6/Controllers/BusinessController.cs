using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication6.Models;
namespace WebApplication6.Controllers
{
    public class BusinessController
    {
        public void insertBusiness(string business_name,string description,string address,int location_id,string business_user)
        {
            Business b = new Business();
            b.insertBusiness(business_name,description,address,location_id,business_user);
        }

        public void insertBusinessCoupon(string business_name, string coupon_name, string orig_price, string disc_price, string last_date,string category)
        {
            Business b = new Business();
            b.insertBusinessCoupon(business_name, coupon_name, orig_price, disc_price, last_date,category);
        }

        public DataTable getAllBusinesses(string business)
        {
            Business b = new Business();
            return b.getAllBusinesses(business);
        }

        public string selectBusiness(string name)
        {
            Business b = new Business();
            return b.selectBusiness(name);
        }

        public void deleteBusiness(string name)
        {
            Business b = new Business();
            b.deleteBusiness(name);
        }

        public string selectBusinessCoupon(string name)
        {
            Business b = new Business();
            return b.selectBusinessCoupon(name);
        }

        public void deleteBusinessCoupon(string name)
        {
            Business b = new Business();
            b.deleteBusinessCoupon(name);
        }

       
    }
}