using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication6.Models;
namespace WebApplication6.Controllers
{
    
    public class userController
    {
        public static DataAccess data = new DataAccess();

        public void insertUser(string username,string tel,string birthDate,string email,string password,string userType)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            string insert = "insert into users (user_name,email,password,phone_number,user_type) values ('"+username+
                            "','"+email+"','"+password+"','"+tel+"',"+Convert.ToInt32(userType)+")";
            db.NonQueryCommand(insert);
        }
        
        public int getUserType(string name)
        {
            CouponsDB db = new CouponsDB();
            db.ConnectAndQuery();
            if (name != "")
            {
                return (int)db.QueryCommandScalar("select user_type from users where user_name ='" + name + "'");
            }
            else
                return 0;
        }


        public string selectCustomer(string name)
        {
            customer user = new customer();
            return user.selectUser(name);
        }

        public string selectManger(string name)
        {
            manager user = new manager();
            return user.selectUser(name);
        }

        public string selectBusinessUser(string name)
        {
            businessOwner user = new businessOwner();
            return user.selectUser(name);
        }

        public void deleteCustomer(string name)
        {
            customer user = new customer();
            user.deleteUser(name);
        }

        public void deleteManger(string name)
        {
            manager user = new manager();
            user.deleteUser(name);
        }

        public void deleteBusinessUser(string name)
        {
            businessOwner user = new businessOwner();
            user.deleteUser(name);
        }
    }
}