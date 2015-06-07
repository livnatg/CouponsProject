using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace WebApplication6.Models
{

    public enum categoryType
    {
        Entertainment,
        Restaurants,
        Consumerism
    }
    public class Category
    {
        private object p1;
        private object p2;

        public int categoryID { get; set; }
        public string categoryName { get; set; }
        public Category()
        {
            categoryID = 0;
            categoryName = null;

        }
        public Category(int ID,string name)
        {
            categoryID = ID;
            categoryName = name;
        }

       
       
    }
}