using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace WebApplication6.Models
{
    public class Location
    {
        public Location(int id)
        {
            ID = id;
        }
        public int ID { set; get; }
        [Required]
        public double x { set; get; }
        [Required]
        public double y { set; get; }
        
        public virtual ICollection<customer> customer { get; set; }

        public virtual ICollection<Business> business { get; set; }

        public virtual ICollection<Coupons> coupons { get; set; }


        public string city { get; set; }
    }
}