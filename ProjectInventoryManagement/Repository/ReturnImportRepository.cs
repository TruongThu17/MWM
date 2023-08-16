using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class ReturnImportRepository : IReturnImportRepository
    {
        public ReturnImport FindReturnImportById(int id) => ReturnImportDAO.FindReturnImportById(id);

        public List<ReturnImport> GetReturnImports() =>ReturnImportDAO.GetImportProducts();
    }
}
