﻿using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class InforImport
    {
        public InforImport()
        {
            ProductReturnImports = new HashSet<ProductReturnImport>();
            ProductsInBills = new HashSet<ProductsInBill>();
        }

        public int Idimport { get; set; }
        public int Idproduct { get; set; }
        public decimal ImportPrice { get; set; }
        public DateTime DateExpiry { get; set; }
        public double Discount { get; set; }
        public int SupplierId { get; set; }
        public DateTime DateImport { get; set; }
        public int QuantityImport { get; set; }
        public string Shelves { get; set; } = null!;
        public int? QuantityInStock { get; set; }
        public int? QuantityOrder { get; set; }
        public int? QuantitySold { get; set; }

        public virtual ImportProduct IdimportNavigation { get; set; } = null!;
        public virtual Product IdproductNavigation { get; set; } = null!;
        public virtual Supplier Supplier { get; set; } = null!;
        public virtual ICollection<ProductReturnImport> ProductReturnImports { get; set; }
        public virtual ICollection<ProductsInBill> ProductsInBills { get; set; }
    }
}
