using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace WebApplication6.Models
{
    public class Order
    {
        [Key]
        public string serialKey { get; set; }
        public string paymentDetails { get; set; }
        public DateTime dateTime { get; set; }
        public bool used { get; set; }
        public int amount { get; set; }
        public virtual customer customer { get; set; }
        public virtual Business business { get; set; }
        public virtual Coupons coupon { get; set; }


        public int name { get; set; }
        public int date { get; set; }
    }
}