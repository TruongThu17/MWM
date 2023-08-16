using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject.DTO
{
    public class InforImportDTO
    {
        [DisplayName("Mã Nhập")]
        public int Idimport { get; set; }
        [DisplayName("Mã Sản Phẩm")]
        public int Idproduct { get; set; }
        [DisplayName("Giá Nhập")]
        public decimal ImportPrice { get; set; }
        [DisplayName("Ngày Hết Hạn")]
        public DateTime DateExpiry { get; set; }
        [DisplayName("Giảm Giá")]
        public double Discount { get; set; }
        [DisplayName("Nhà Phân Phối")]
        public int SupplierId { get; set; }
        [DisplayName("Ngày Nhập")]
        public DateTime DateImport { get; set; }
        [DisplayName("Số Lượng Nhập")]
        public int QuantityImport { get; set; }
        [DisplayName("Kệ Hàng")]
        public string Shelves { get; set; } = null!;
        [DisplayName("Tồn Kho")]
        public int? QuantityInStock { get; set; }
        [DisplayName("Đã Đặt")]
        public int? QuantityOrder { get; set; }
        [DisplayName("Còn Lại")]
        public int? QuantitySold { get; set; }

        public virtual ProductDTO? IdproductNavigation { get; set; } = null!;
    }
}
