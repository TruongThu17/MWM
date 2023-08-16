using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class ProductTypeRepository : IProductTypeRepository
    {
        public void CreateProductType(ProductType a) => ProductTypeDAO.CreateProductType(a);

        public ProductType FindProductTypeById(int id) => ProductTypeDAO.FindProductTypeById(id);

        public List<ProductType> GetProductTypes() => ProductTypeDAO.GetProductTypes();

        public void UpdateProductType(ProductType a) => ProductTypeDAO.UpdateProductType(a);
    }
}
