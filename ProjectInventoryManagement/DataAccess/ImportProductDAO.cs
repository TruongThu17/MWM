using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class ImportProductDAO
    {
        public static List<ImportProduct> GetImportProducts()
        {
            var listImportProducts = new List<ImportProduct>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listImportProducts = context.ImportProducts.ToList();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listImportProducts;
        }
        public static ImportProduct FindImportProductById(int id)
        {
            ImportProduct p = new ImportProduct();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.ImportProducts.SingleOrDefault(x => x.Id == id);
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
