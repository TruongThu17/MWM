using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject.DTO
{
    public class ImportProductDTO
    {
        [DisplayName("Mã Nhập")]
        public int? Id { get; set; }
        [DisplayName("Người Nhập")]
        [Required]
        public string UserName { get; set; } = null!;
        [DisplayName("Ngày Nhập")]
        public DateTime? DateImport { get; set; }
        [DisplayName("Tổng Bill")]
        public decimal? TotalBill { get; set; }
        [DisplayName("Nhà Phân Phối")]
        public int? Supplier { get; set; }
        [DisplayName("Giảm Giá")]
        public int? Discount { get; set; }
    }
}
