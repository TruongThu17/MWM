﻿using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class ProductReturnImport
    {
        public int Idreturn { get; set; }
        public int Idproduct { get; set; }
        public int Idimport { get; set; }
        public int? Quantity { get; set; }
        public decimal? Price { get; set; }

        public virtual InforImport Id { get; set; } = null!;
        public virtual ReturnImport IdreturnNavigation { get; set; } = null!;
    }
}
