using System;
using System.Collections.Generic;

namespace EFCoreDatabaseFirst.Entities
{
    public partial class ChiTietHd
    {
        public int MaHd { get; set; }
        public int MaHh { get; set; }
        public double DonGia { get; set; }
        public int SoLuong { get; set; }
        public double GiamGia { get; set; }

        public virtual HoaDon MaHdNavigation { get; set; }
        public virtual HangHoa MaHhNavigation { get; set; }
    }
}
