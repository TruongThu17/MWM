using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class InforImportRepository : IInforImportRepository
    {
        public InforImport FindInforImportById(int idImport, int idProduct) =>InforImportDAO.FindInforImportById(idImport, idProduct);

        public List<InforImport> FindInforImportByNameProduct(string name) => InforImportDAO.FindInforImportByNameProduct(name);

        public List<InforImport> GetInforImports() => InforImportDAO.GetInforImports();
    }
}
