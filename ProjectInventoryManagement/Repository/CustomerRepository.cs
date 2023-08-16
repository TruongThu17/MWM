using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class CustomerRepository : ICustomerRepository
    {
        public void CreateCustomer(Customer c) => CustomerDAO.CreateCustomer(c);

        public void DeleteCustomer(Customer c) => CustomerDAO.DeleteCustomer(c);

        public Customer FindCustomerById(int id) => CustomerDAO.FindCustomerById(id);

        public List<Customer> GetCustomers() => CustomerDAO.GetCustomers();

        public void UpdateCustomer(Customer c) => CustomerDAO.UpdateCustomer(c);
    }
}
