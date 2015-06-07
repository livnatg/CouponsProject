using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace WebApplication6.Models
{
    public class rateCoupon
    {
        public int ID { get; set; }
        public int rate { get; set; }
        
        public virtual customer customer { get; set; }
        
        public string serialKey { get; set; }
        
        public virtual Order order { get; set; }
    }
}