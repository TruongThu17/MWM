using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class SupplierRepository : ISupplierRepository
    {
        public void CreateSupplier(Supplier a) =>SupplierDAO.CreateSupplier(a);

        public void DeleteSupplier(Supplier a) => SupplierDAO.DeleteSupplier(a);

        public Supplier FindSupplierById(int id) =>SupplierDAO.FindSupplierById(id);

        public List<Supplier> GetSuppliers() => SupplierDAO.GetSuppliers();

        public void UpdateSupplier(Supplier a) =>SupplierDAO.UpdateSupplier(a);
    }
}
