using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class ProductTypeDAO
    {
        public static List<ProductType> GetProductTypes()
        {
            var listProductTypes = new List<ProductType>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listProductTypes = context.ProductTypes.ToList();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listProductTypes;
        }
        public static ProductType FindProductTypeById(int id)
        {
            ProductType p = new ProductType();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.ProductTypes.SingleOrDefault(x => x.Id == id);
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return p;
        }

        public static void CreateProductType(ProductType a)
        {
            try
            {
                using (var context = new DBMWMContext())
                {
                    context.ProductTypes.Add(a);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
        public static void UpdateProductType(ProductType a)
        {

            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Entry<ProductType>(a).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
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
