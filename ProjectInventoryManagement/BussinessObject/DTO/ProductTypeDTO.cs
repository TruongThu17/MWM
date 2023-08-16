using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject.DTO
{
    public class ProductTypeDTO
    {
        [DisplayName("Mã Loại Sản Phẩm")]
        public int? Id { get; set; }
        [DisplayName("Tên Loại Sản Phẩm")]
        [Required]
        public string Name { get; set; } = null!;
    }
}
