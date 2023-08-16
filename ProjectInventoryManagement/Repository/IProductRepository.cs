using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public interface IProductRepository
    {
        List<Product> GetProducts();
        Product FindProductById(int id);

        void CreateProduct(Product a);
        void UpdateProduct(Product a);
    }
}
