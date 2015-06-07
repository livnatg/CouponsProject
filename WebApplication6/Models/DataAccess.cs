using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
namespace WebApplication6.Models
{
    public class DataAccess
    {
        

        public IQueryable<Category> GetAllCategories()
        {
            List<Category> categories = new List<Category>();
            try
            {
                CouponsDB db = new CouponsDB();
                db.ConnectAndQuery();
                string query = "Select * from categories";
                DataTable  dt =  db.QueryCommand(query);
                foreach (DataRow row in dt.Rows)
                {
                    Category c = new Category((int)row[0], row[1].ToString());
                    categories.Add(c);
                }

                return categories.AsQueryable<Category>();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getAllCities()
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            return db.QueryCommand("select * from locations");
        }
       
    }
}