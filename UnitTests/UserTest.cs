using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebApplication6.Controllers;
namespace UnitTests
{
    [TestClass]
    class UserTest
    {
        private userController user;
        [TestInitialize]
        public void TestInit()
        {
            user = new userController();
        }

        [TestCleanup]
        public void TestCleanUp()
        {
            user.deleteCustomer("test user");
            user.deleteBusinessUser("test user Business");
            user.deleteManger("test user manger");

        }

        [TestMethod]
        public void insertCustomer()
        {
            user.insertUser("test user", "092323232", Convert.ToString(DateTime.Now), "livnat@gmail.com", "12345678", "2");
            string name = user.selectCustomer("test user");
            Assert.AreEqual(name, "test user");
        }

        [TestMethod]
        public void getCustomerType()
        {
            int type = user.getUserType("test user");
            Assert.AreEqual(type, 2);
        }

        [TestMethod]
        public void insertManger()
        {
            user.insertUser("test user manger", "092323232", Convert.ToString(DateTime.Now), "livnat@gmail.com", "12345678", "1");
            string name = user.selectCustomer("test user manger");
            Assert.AreEqual(name, "test user manger");
        }

        [TestMethod]
        public void getMangerType()
        {
            int type = user.getUserType("test user manger");
            Assert.AreEqual(type, 1);
        }

        [TestMethod]
        public void insertBusinessuser()
        {
            user.insertUser("test user Business", "092323232", Convert.ToString(DateTime.Now), "livnat@gmail.com", "12345678", "3");
            string name = user.selectCustomer("test user Business");
            Assert.AreEqual(name, "test user Business");
        }

        [TestMethod]
        public void getBusinessuserType()
        {
            int type = user.getUserType("test user Business");
            Assert.AreEqual(type, 3);
        }



    }
}
