using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class ProductRepository : IProductRepository
    {
        public void CreateProduct(Product a) => ProductDAO.CreateProduct(a);

        public Product FindProductById(int id) => ProductDAO.FindProductById(id);

        public List<Product> GetProducts()=>ProductDAO.GetProducts();

        public void UpdateProduct(Product a) => ProductDAO.UpdateProduct(a);
    }
}
