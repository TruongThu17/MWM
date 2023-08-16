using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace DataAccess
{
    public class InforImportDAO
    {
        public static List<InforImport> GetInforImports()
        {
            var listInforImports = new List<InforImport>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listInforImports = context.InforImports.ToList();
                    foreach (var i in listInforImports)
                    {
                        i.IdproductNavigation = context.Products.SingleOrDefault(x => x.Id == i.Idproduct);
                    }
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listInforImports;
        }
        public static InforImport FindInforImportById(int idImport, int idProduct)
        {
            InforImport p = new InforImport();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.InforImports.FirstOrDefault(x => x.Idimport == idImport && x.Idproduct== idProduct);
                    p.IdproductNavigation = context.Products.SingleOrDefault(x => x.Id == idProduct);
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return p;
        }
        public static List<InforImport> FindInforImportByNameProduct(string name)
        {
            var listInforImports = new List<InforImport>();
            var listProducts = new List<Product>();

            try
            {
                using (var context = new DBMWMContext())
                {
                    listProducts = context.Products.Where(x => x.Name.Contains(name)).ToList();
                    var productIds = listProducts.Select(product => product.Id).ToList();
                    listInforImports = context.InforImports.Where(x => productIds.Contains(x.Idproduct)).ToList();

                    foreach (var i in listInforImports)
                    {
                        i.IdproductNavigation = context.Products.SingleOrDefault(x => x.Id == i.Idproduct);
                    }
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listInforImports;
        }
        
    }
}
