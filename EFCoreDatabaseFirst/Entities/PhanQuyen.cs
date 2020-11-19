using System;
using System.Collections.Generic;

namespace EFCoreDatabaseFirst.Entities
{
    public partial class PhanQuyen
    {
        public int MaPq { get; set; }
        public int MaVt { get; set; }
        public int MaTw { get; set; }
        public bool Xem { get; set; }
        public bool Them { get; set; }
        public bool Xoa { get; set; }
        public bool Sua { get; set; }

        public virtual TrangWeb MaTwNavigation { get; set; }
        public virtual VaiTro MaVtNavigation { get; set; }
    }
}
