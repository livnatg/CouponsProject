using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication6.Models;
namespace WebApplication6.Controllers
{
    public class GenericController
    {
        public IQueryable<Category> GetAllCategories()
        {
            DataAccess data = new DataAccess();
            IQueryable<Category> categories = data.GetAllCategories();
            return categories;
        }
    }
}