using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject.DTO
{
    public class SupplierDTO
    {
        [DisplayName("Mã Đối Tác ")]
        public int? Id { get; set; }
        [DisplayName("Tên Đối Tác")]
        [Required]
        public string Name { get; set; } = null!;
        [DisplayName("Email")]
        public string? Email { get; set; }
        [DisplayName("Số Điện Thoại")]
        public string? Phone { get; set; }
        [DisplayName("Địa Chỉ")]
        public string? Address { get; set; }
    }
}
