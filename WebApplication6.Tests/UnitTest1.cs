using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebApplication6.Controllers;
namespace WebApplication6.Tests
{
    [TestClass]
    public class UnitTest1
    {
        public static CouponsController controller = new CouponsController();
        [TestMethod]
        public void TestMethod1()
        {
            int id = controller.insertCoupon("test coupon");
            Console.WriteLine("Insert ID"+id);
        }
    }
}
