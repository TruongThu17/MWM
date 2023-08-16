using BusinessObject.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class ProductDAO
    {
        public static List<Product> GetProducts()
        {
            var listProducts = new List<Product>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listProducts = context.Products.ToList();
                    foreach (var product in listProducts)
                    {
                        product.ProductTypeNavigation = context.ProductTypes.SingleOrDefault(x => x.Id == product.ProductType);
                    }
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listProducts;
        }
        public static Product FindProductById(int id)
        {
            Product p = new Product();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.Products.SingleOrDefault(x => x.Id == id);
                    p.ProductTypeNavigation = context.ProductTypes.SingleOrDefault(x => x.Id == p.ProductType);
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return p;
        }

        public static void CreateProduct(Product a)
        {
            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Products.Add(a);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
        public static void UpdateProduct(Product a)
        {

            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Entry<Product>(a).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
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
