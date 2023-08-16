using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class ProductsInBill
    {
        public int Idbilled { get; set; }
        public int Idinport { get; set; }
        public int Idproduct { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }

        public virtual InforImport Id { get; set; } = null!;
        public virtual Billed IdbilledNavigation { get; set; } = null!;
    }
}
