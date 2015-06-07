using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Coupons Tests");
            
            CouponsTest copT = new CouponsTest();
            copT.TestInit();
            int id = copT.InsertToCoupons();
            copT.UpdateCoupon(id);
            copT.TestCleanUp(id);

            Console.WriteLine("Business Tests");
            BusinessTest business = new BusinessTest();
            business.TestInit();
            business.insertBusiness();
            business.insertBusinessCoupon();
            business.TestCleanUp();

            Console.WriteLine("Users Tests");
            UserTest users = new UserTest();
            users.TestInit();
            users.insertCustomer();
            users.getCustomerType();
            users.insertManger();
            users.getMangerType();
            users.insertBusinessuser();
            users.getBusinessuserType();
            users.TestCleanUp();
            
        }
    }
}
