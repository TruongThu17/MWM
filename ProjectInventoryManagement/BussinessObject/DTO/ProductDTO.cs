using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject.DTO
{
    public class ProductDTO
    {
        [DisplayName("Mã Sản Phẩm")]
        public int? Id { get; set; }
        [DisplayName("Tên Sản Phẩm")]
        public string? Name { get; set; } = null!;
        [DisplayName("Nhà Sản Xuất")]
        public string? Producer { get; set; }
        [DisplayName("Loại Sản Phẩm")]
        public int? ProductType { get; set; }
        [DisplayName("Trạng Thái")]
        public bool? Status { get; set; }
        [DisplayName("Đơn Vị")]
        public string? Unit { get; set; }
        [DisplayName("Giá Bán")]
        public decimal? SalePrice { get; set; }
        [DisplayName("Tồn Kho")]
        public int? QuantityInStock { get; set; }
        [DisplayName("Đã Đặt")]
        public int? QuantityOrder { get; set; }
        [DisplayName("Còn Lại")]
        public int? QuantitySold { get; set; }
        public virtual ProductTypeDTO? ProductTypeNavigation { get; set; } = null!;

    }
}
