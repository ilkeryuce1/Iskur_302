using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace Ogrenci_Kayıt_Otomasyonu
{
    public class OgrenciDal
    {Ogrenci ogrenci=new Ogrenci();
        public List<Ogrenci> x()
        {
            using (Context con = new Context())
            {
               return con.ogr.OrderByDescending(a=>a.Numara).ToList();
            }
        }
        public void Ekleme(Ogrenci ogrenci)
        {
            using (Context conn=new Context())
            {
                var ent = conn.Entry(ogrenci);
                ent.State=EntityState.Added;
                conn.SaveChanges();
            }
        }
        public void Guncelleme(Ogrenci ogrenci)
        {using (Context conn=new Context())
            {
                var ent = conn.Entry(ogrenci);
                ent.State = EntityState.Modified;
                conn.SaveChanges();
            }

        }
        public void Silme(Ogrenci ogrenci)
        {
            using (Context conn= new Context())
            {
                var ent = conn.Entry(ogrenci);
                ent.State = EntityState.Deleted;
                conn.SaveChanges();
            }
        }
        //public void Kontrol() 
        //{
        //    using (Context conn = new Context()) 
        //    {
        //        var ent = conn.Entry(ogrenci);
        //        ent.State = EntityState.;
        //        conn.SaveChanges();

        //    }
        //}

        
    }
}
