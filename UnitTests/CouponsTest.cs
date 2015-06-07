using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApplication6.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
namespace UnitTests
{
    [TestClass]
    class CouponsTest
    {
        private CouponsController controller;
        [TestInitialize]
        public void TestInit()
        {
            controller = new CouponsController();
        }

        public int InsertToCoupons()
        {
            int id = controller.insertCoupon("test coupon",1,1);
            Console.WriteLine("Insert ID" + id);
            return id;
        }

        public void UpdateCoupon(int id)
        {
            Console.WriteLine("Update Coupon");
            controller.updateCoupon(id);
           
        }

        [TestCleanup]
        public void TestCleanUp(int id)
        {
            controller.deleteCoupon(id);

        }
        


    }
}
