using AutoMapper;
using BusinessObject.DTO;
using BusinessObject.Models;
using System.Security.AccessControl;

namespace WebApi.Config
{
    public class AutoMapperConfig
    {
        public static IMapper Initialize()
        {
            var mapperConfig = new MapperConfiguration(config =>
            {
                config.CreateMap<Supplier, SupplierDTO>();
                config.CreateMap<SupplierDTO, Supplier>();

                config.CreateMap<Customer, CustomerDTO>();
                config.CreateMap<CustomerDTO, Customer>();

                config.CreateMap<ProductType, ProductTypeDTO>();
                config.CreateMap<ProductTypeDTO, ProductType>();

                config.CreateMap<Product, ProductDTO>();
                config.CreateMap<ProductDTO, Product>();

                config.CreateMap<User, UserDTO>();
                config.CreateMap<UserDTO, User>();

                config.CreateMap<Role, RoleDTO>();
                config.CreateMap<RoleDTO, Role>();

                config.CreateMap<ImportProduct, ImportProductDTO>();
                config.CreateMap<ImportProductDTO, ImportProduct>();

                config.CreateMap<InforImport, InforImportDTO>();
                config.CreateMap<InforImportDTO, InforImport>();

                config.CreateMap<ReturnImport, ReturnImportDTO>();
                config.CreateMap<ReturnImportDTO, ReturnImport>();

                config.CreateMap<Billed, BilledDTO>();
                config.CreateMap<BilledDTO, Billed>();
            });



            return mapperConfig.CreateMapper();
        }
    }
}
