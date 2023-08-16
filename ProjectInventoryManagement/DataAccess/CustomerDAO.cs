using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class CustomerDAO
    {
        public static List<Customer> GetCustomers()
        {
            var listCustomers = new List<Customer>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listCustomers = context.Customers.ToList();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listCustomers;
        }
        public static Customer FindCustomerById(int id)
        {
            Customer c = new Customer();
            try
            {
                using (var context = new DBMWMContext())
                {
                    c = context.Customers.SingleOrDefault(x => x.Id == id);
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return c;
        }

        public static void CreateCustomer(Customer c)
        {
            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Customers.Add(c);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
        public static void UpdateCustomer(Customer c)
        {

            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Entry<Customer>(c).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
        public static void DeleteCustomer(Customer c)
        {
            try
            {
                using (var context = new DBMWMContext())
                {
                    var Customers = context.Customers.SingleOrDefault(x => x.Id == c.Id);
                    context.Customers.Remove(Customers);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
    }
}
