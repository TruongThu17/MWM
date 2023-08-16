using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class ImportProduct
    {
        public ImportProduct()
        {
            InforImports = new HashSet<InforImport>();
            ReturnImports = new HashSet<ReturnImport>();
        }

        public int Id { get; set; }
        public string UserName { get; set; } = null!;
        public DateTime? DateImport { get; set; }
        public decimal? TotalBill { get; set; }
        public int? Supplier { get; set; }
        public int? Discount { get; set; }

        public virtual Supplier? SupplierNavigation { get; set; }
        public virtual User UserNameNavigation { get; set; } = null!;
        public virtual ICollection<InforImport> InforImports { get; set; }
        public virtual ICollection<ReturnImport> ReturnImports { get; set; }
    }
}
