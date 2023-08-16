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
    public class UserDTO
    {
        [DisplayName("UserName")]
        public string? Username { get; set; } = null!;
        [DisplayName("Quyền")]
        public int? Role { get; set; }
        [DisplayName("Họ Và Tên")]
        public string? Name { get; set; }
        [DisplayName("Ảnh")]
        public string? Image { get; set; }
        [DisplayName("Số Điện Thoại")]
        public string? Phone { get; set; }
        [DisplayName("Địa Chỉ")]
        public string? Address { get; set; }
        [DisplayName("Email")]
        [EmailAddress]
        public string? Email { get; set; }
        [DisplayName("Trạng Thái")]
        public bool? Status { get; set; }
        public virtual RoleDTO? RoleNavigation { get; set; } = null!;
    }
}
