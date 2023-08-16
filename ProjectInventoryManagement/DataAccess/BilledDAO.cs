using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class BilledDAO
    {
        public static List<Billed> GetBilleds()
        {
            var listBilleds = new List<Billed>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listBilleds = context.Billeds.Where(c => c.Status == true).ToList();
                    foreach (var i in listBilleds)
                    {
                        i.IdcustomerNavigation = context.Customers.SingleOrDefault(x => x.Id == i.Idcustomer);
                    }
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listBilleds;
        }
        public static List<Billed> GetOrders()
        {
            var listBilleds = new List<Billed>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listBilleds = context.Billeds.Where(c=>c.Status==false).ToList();
                    foreach (var i in listBilleds)
                    {
                        i.IdcustomerNavigation = context.Customers.SingleOrDefault(x => x.Id == i.Idcustomer);
                    }
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listBilleds;
        }
        public static Billed FindBilledById(int id)
        {
            Billed p = new Billed();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.Billeds.FirstOrDefault(x => x.Id == id );
                    p.IdcustomerNavigation = context.Customers.SingleOrDefault(x => x.Id == p.Idcustomer);
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return p;
        }
    }
}
