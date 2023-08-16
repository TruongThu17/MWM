using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class ReturnImportDAO
    {
        public static List<ReturnImport> GetImportProducts()
        {
            var listReturnImports = new List<ReturnImport>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listReturnImports = context.ReturnImports.ToList();
                    foreach (var item in listReturnImports)
                    {
                        item.SuppilerNavigation = context.Suppliers.SingleOrDefault(c=>c.Id ==item.Id);
                    }
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listReturnImports;
        }
        public static ReturnImport FindReturnImportById(int id)
        {
            ReturnImport p = new ReturnImport();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.ReturnImports.SingleOrDefault(x => x.Id == id);
                    p.SuppilerNavigation = context.Suppliers.SingleOrDefault(c => c.Id == p.Id);
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
