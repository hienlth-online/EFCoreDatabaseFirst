﻿using System;
using System.Collections.Generic;

namespace EFCoreDatabaseFirst.Entities
{
    public partial class NhanVien
    {
        public NhanVien()
        {
            ChuDe = new HashSet<ChuDe>();
            HoaDon = new HashSet<HoaDon>();
            HoiDap = new HashSet<HoiDap>();
        }

        public string MaNv { get; set; }
        public string HoTen { get; set; }
        public string Email { get; set; }
        public string MatKhau { get; set; }
        public int MaVt { get; set; }

        public virtual VaiTro MaVtNavigation { get; set; }
        public virtual ICollection<ChuDe> ChuDe { get; set; }
        public virtual ICollection<HoaDon> HoaDon { get; set; }
        public virtual ICollection<HoiDap> HoiDap { get; set; }
    }
}
