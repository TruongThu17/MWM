using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class SupplierDAO
    {
        public static List<Supplier> GetSuppliers()
        {
            var listSuppliers = new List<Supplier>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listSuppliers = context.Suppliers.ToList();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listSuppliers;
        }
        public static Supplier FindSupplierById(int id)
        {
            Supplier p = new Supplier();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.Suppliers.SingleOrDefault(x => x.Id == id);
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return p;
        }

        public static void CreateSupplier(Supplier a)
        {
            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Suppliers.Add(a);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
        public static void UpdateSupplier(Supplier a)
        {

            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Entry<Supplier>(a).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
        public static void DeleteSupplier(Supplier a)
        {
            try
            {
                using (var context = new DBMWMContext())
                {
                    var Suppliers = context.Suppliers.SingleOrDefault(x => x.Id == a.Id);
                    context.Suppliers.Remove(Suppliers);
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
