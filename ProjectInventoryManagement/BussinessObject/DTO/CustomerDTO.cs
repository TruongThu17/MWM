using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject.DTO
{
    public class CustomerDTO
    {
        [DisplayName("Mã Khách Hàng")]
        public int? Id { get; set; }
        [DisplayName("Tên Khách Hàng")]
        [Required]
        public string Name { get; set; } = null!;
        [DisplayName("Số Điện Thoại")]
        public string? Phone { get; set; }
        [DisplayName("Địa Chỉ")]
        public string? Address { get; set; }
        [DisplayName("Ghi Chú")]
        public string? Note { get; set; }
        [DisplayName("Ngày sinh")]
        public DateTime? Dob { get; set; }
        [DisplayName("Email")]
        public string? Email { get; set; }
    }
}
