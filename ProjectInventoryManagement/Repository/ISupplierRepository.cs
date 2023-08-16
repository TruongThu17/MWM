using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public interface ISupplierRepository
    {
        List<Supplier> GetSuppliers();
        Supplier FindSupplierById(int id);

        void CreateSupplier(Supplier a);
        void UpdateSupplier(Supplier a);
        void DeleteSupplier(Supplier a);
    }
}
