namespace Ogrenci_Kayıt_Otomasyonu
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Ogrenci")]
    public partial class Ogrenci
    {
        [Key]
        public int Numara { get; set; }

        [StringLength(50)]
        public string Ad { get; set; }

        [StringLength(50)]
        public string Soyad { get; set; }

        [StringLength(50)]
        public string Telefon { get; set; }

        public string Resim { get; set; }

        [StringLength(10)]
        public string Durum { get; set; }
    }
}
