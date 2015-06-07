using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApplication6.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data;
namespace UnitTests
{
    [TestClass]
    class BusinessTest
    {
        private BusinessController business;
        [TestInitialize]
        public void TestInit()
        {
            business = new BusinessController();
        }

        [TestCleanup]
        public void TestCleanUp()
        {
            business.deleteBusinessCoupon("Test business Coupon");
            business.deleteBusiness("test business");
           
        }

        [TestMethod]
        public void insertBusiness()
        {
            business.insertBusiness("test business", "description test", "test 1", 1, "LivnatB");
            string name = business.selectBusiness("test business");
            Assert.AreEqual(name, "test business");
        }

        [TestMethod]
        public void insertBusinessCoupon()
        {
            business.insertBusinessCoupon("test Business", "Test business Coupon", "100", "20", Convert.ToString(DateTime.Now), "1");
            string name = business.selectBusinessCoupon("Test business Coupon");
            Assert.AreEqual(name, "Test business Coupon");
        }

 
    }
}
