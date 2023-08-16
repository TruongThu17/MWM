using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class ReturnImport
    {
        public ReturnImport()
        {
            ProductReturnImports = new HashSet<ProductReturnImport>();
        }

        public int Id { get; set; }
        public DateTime? DateReturnImport { get; set; }
        public decimal? Totalbill { get; set; }
        public string? Username { get; set; }
        public int? Suppiler { get; set; }
        public int? Idimport { get; set; }

        public virtual ImportProduct? IdimportNavigation { get; set; }
        public virtual Supplier? SuppilerNavigation { get; set; }
        public virtual User? UsernameNavigation { get; set; }
        public virtual ICollection<ProductReturnImport> ProductReturnImports { get; set; }
    }
}
