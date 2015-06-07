using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication6.Models
{
    public abstract class user
    {
        [Key]
        public string userName { get; set; }
        public string mail { get; set; }
        public string tel { get; set; }
        public string strongPassword { get; set; }
        public bool connected { get; set; }
        public DateTime birthDate { get; set; }
        //public virtual List<alert> alert { get; set; }
        public string selectUser(string name)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            return (string)db.QueryCommandScalar("SELECT user_name from users where user_name ='" + name + "'");
        }

        public void deleteUser(string name)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            db.NonQueryCommand("delete from users where user_name ='" + name + "'");
        }
    }

    public class businessOwner : user
    {

//        public virtual List<couponRequest> couponRequest { get; set; }
        public virtual ICollection<Business> business { get; set; }

       
    }

    public class manager : user
    {
        public virtual ICollection<Coupons> coupons { get; set; }
        //public virtual List<couponRequest> couponRequest { get; set; }
    }

    public class customer : user
    {
        public virtual ICollection<Category> category { get; set; }

        public virtual ICollection<Order> order { get; set; }
        public virtual ICollection<SocialNetworkcoupon> socialNetworkCoupon { get; set; }

        public virtual Location location { get; set; }

        


    }


}