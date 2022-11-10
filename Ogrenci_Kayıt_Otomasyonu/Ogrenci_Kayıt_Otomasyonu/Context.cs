using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Drawing;
using System.Drawing.Imaging;

namespace Ogrenci_Kayıt_Otomasyonu
{
    public class Context:DbContext
    {
        public Context()
           : base("name=Model11")
        {
        }

        public virtual DbSet<Ogrenci> ogr { get; set; }

      
    }
}
