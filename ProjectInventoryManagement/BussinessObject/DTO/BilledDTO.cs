using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject.DTO
{
    public class BilledDTO
    {
        [DisplayName("Mã Hóa Đơn")]
        public int Id { get; set; }
        [DisplayName("Người Nhập")]
        public string Username { get; set; } = null!;
        [DisplayName("Ngày Nhập")]
        public DateTime? DateImport { get; set; }
        [DisplayName("Khách Hàng")]
        public int Idcustomer { get; set; }
        [DisplayName("Tổng Hóa Đơn")]
        public decimal? TotalBill { get; set; }
        [DisplayName("Nợ")]
        public decimal? Debt { get; set; }
        [DisplayName("Trả Trước")]
        public decimal? Deposit { get; set; }
        [DisplayName("Trạng Thái")]
        public bool? Status { get; set; }
        [DisplayName("Giảm Giá")]
        public double? Discount { get; set; }
        public virtual CustomerDTO? IdcustomerNavigation { get; set; } = null!;

    }
}
