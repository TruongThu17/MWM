using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public interface IInforImportRepository
    {
        List<InforImport> GetInforImports();
        InforImport FindInforImportById(int idImport, int idProduct);
        List<InforImport> FindInforImportByNameProduct(string name);
    }
}
