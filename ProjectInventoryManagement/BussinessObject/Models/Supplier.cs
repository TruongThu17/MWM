﻿using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class Supplier
    {
        public Supplier()
        {
            ImportProducts = new HashSet<ImportProduct>();
            InforImports = new HashSet<InforImport>();
            ReturnImports = new HashSet<ReturnImport>();
        }

        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string? Email { get; set; }
        public string? Phone { get; set; }
        public string? Address { get; set; }

        public virtual ICollection<ImportProduct> ImportProducts { get; set; }
        public virtual ICollection<InforImport> InforImports { get; set; }
        public virtual ICollection<ReturnImport> ReturnImports { get; set; }
    }
}
