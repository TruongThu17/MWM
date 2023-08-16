using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class ImportProductRepository : IImportProductRepository
    {
        public ImportProduct FindImportProductById(int id)=>ImportProductDAO.FindImportProductById(id);

        public List<ImportProduct> GetImportProducts()=>ImportProductDAO.GetImportProducts();
    }
}
