using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject.DTO
{
    public class ReturnImportDTO
    {
        [DisplayName("Mã Trả Hàng Nhập")]
        public int? Id { get; set; }
        [DisplayName("Ngày Trà Hàng Nhập")]
        public DateTime? DateReturnImport { get; set; }
        [DisplayName("Tổng Hóa Đơn")]
        public decimal? Totalbill { get; set; }
        [DisplayName("Người Nhập")]
        public string? Username { get; set; }
        [DisplayName("Nhà Phân Phối")]
        public int? Suppiler { get; set; }
        [DisplayName("Mã Nhập Hàng")]
        public int? Idimport { get; set; }
        public virtual SupplierDTO? SuppilerNavigation { get; set; }
    }
}
