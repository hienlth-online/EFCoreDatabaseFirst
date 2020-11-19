using System;
using System.Collections.Generic;

namespace EFCoreDatabaseFirst.Entities
{
    public partial class TrangWeb
    {
        public TrangWeb()
        {
            PhanQuyen = new HashSet<PhanQuyen>();
        }

        public int MaTw { get; set; }
        public string TenTw { get; set; }
        public string MoTa { get; set; }

        public virtual ICollection<PhanQuyen> PhanQuyen { get; set; }
    }
}
