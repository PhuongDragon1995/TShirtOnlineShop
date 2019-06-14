﻿using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TShirtOnlineShop.Models;

namespace TShirtOnlineShop.Controllers
{
    public class HomeController : Controller
    {
        Function function = new Function();
        private OnlineShopEntities db = new OnlineShopEntities();

        public ActionResult HomePage()
        {
            return View();
        }

        public ActionResult MenShortSleeves()
        {
            return View();
        }
        public ActionResult SignIn()
        {
            return View();
        }
        public ActionResult SignUp()
        {
            return View();
        }

        public ActionResult ShoppingCart()
        {
            return View();
        }

        public ActionResult SearchBar()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SignIn([Bind(Include = "CustomerEmail, CustomerPassword")]CUSTOMER customer)
        {
            if (function.SignInSuccess(customer.CustomerEmail, customer.CustomerPassword))
            {
                string CustomerFullName = function.GetCustomerFullName(customer.CustomerEmail);
                Session["CustomerFullName"] = CustomerFullName;
                return RedirectToAction("HomePage");
            }
            else
            {
                return View("SignIn");
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SignUp([Bind(Include = "CustomerID,CustomerFullName,CustomerPhoneNumber,CustomerEmail,CustomerPassword")]CUSTOMER customer)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    customer.CustomerID = Guid.NewGuid();

                    if (function.IsUserExist(customer.CustomerEmail))
                    {
                        ModelState.AddModelError("CustomerEmail", "This email had already registered");
                        return View("SignUp");
                    }
                    else
                    {
                        db.CUSTOMERs.Add(customer);
                        db.SaveChanges();
                        string CustomerFullName = function.GetCustomerFullName(customer.CustomerEmail);
                        Session["CustomerFullName"] = CustomerFullName;
                        return RedirectToAction("HomePage");
                    }
                }
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                //throw;
            }
            return View("SignUp");
        }
    }
}