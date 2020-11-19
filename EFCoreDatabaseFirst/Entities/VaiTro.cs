using System;
using System.Collections.Generic;

namespace EFCoreDatabaseFirst.Entities
{
    public partial class VaiTro
    {
        public VaiTro()
        {
            NhanVien = new HashSet<NhanVien>();
            PhanQuyen = new HashSet<PhanQuyen>();
        }

        public int MaVt { get; set; }
        public string TenVt { get; set; }

        public virtual ICollection<NhanVien> NhanVien { get; set; }
        public virtual ICollection<PhanQuyen> PhanQuyen { get; set; }
    }
}
