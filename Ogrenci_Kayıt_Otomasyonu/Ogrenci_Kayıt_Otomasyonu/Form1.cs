using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Imaging;
using System.Runtime.Serialization.Formatters;
using System.Data.OleDb;

namespace Ogrenci_Kayıt_Otomasyonu
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        OgrenciDal ogrenciDal = new OgrenciDal();


        private void Form1_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ogrenciDal.x();
            dataGridView1.Columns[5].Visible = false;
            DataGridViewButtonColumn btn1 = new DataGridViewButtonColumn();
            btn1.HeaderText = "Silme";
            btn1.Text = "Sil";
            btn1.Name = "sil";
            btn1.UseColumnTextForButtonValue = true;
            btn1.DefaultCellStyle.BackColor = Color.Red;
            btn1.Width = 50;

            //Butonu kolon olarak ekliyoruz
            dataGridView1.Columns.Add(btn1);

            DataGridViewButtonColumn btn2 = new DataGridViewButtonColumn();
            btn2.HeaderText = "Güncelleme";
            btn2.Text = "Güncelle";
            btn2.Name = "Güncelle";
            btn2.UseColumnTextForButtonValue = true;
            btn2.DefaultCellStyle.BackColor = Color.Blue;
            btn2.Width = 50;

            //Butonu kolon olarak ekliyoruz
            dataGridView1.Columns.Add(btn2);

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {


            ogrenciDal.Ekleme(new Ogrenci
            {

                Ad = textBox1.Text,
                Soyad = textBox2.Text,
                Telefon = maskedTextBox2.Text,
                Resim = pictureBox1.ImageLocation,
                Durum = comboBox1.Text

            });
            dataGridView1.DataSource = ogrenciDal.x();
            MessageBox.Show("Başarıyla Eklendi");


        }

        private void button4_Click(object sender, EventArgs e)
        {
            openFileDialog1.ShowDialog();
            pictureBox1.ImageLocation = openFileDialog1.FileName;
        }
        public int ıd = 0;
        public string numara;
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {

            textBox1.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
            numara = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            textBox2.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
            maskedTextBox2.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
            pictureBox1.ImageLocation = dataGridView1.CurrentRow.Cells[4].Value.ToString();
            comboBox1.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();

            
        }





        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            ÖğrenciArama(textBox3.Text);
        }
        public void ÖğrenciArama(string a)
        {
            var sonuc = ogrenciDal.x().Where(x => x.Ad.Contains(a)).ToList();
            dataGridView1.DataSource = sonuc;
        }
   

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {





            if (e.ColumnIndex == dataGridView1.Columns["Sil"].Index)
            {

                // Buraya ne yaptırmak istiyorsanız yazabilirsiniz.
                DialogResult show = MessageBox.Show("Silmek İstiyor musunuz ? ", "Dikkat", MessageBoxButtons.YesNo);
                if (show == DialogResult.Yes)
                {
                    ogrenciDal.Silme(new Ogrenci
                    {


                        Numara = Convert.ToInt32(this.dataGridView1.Rows[e.RowIndex].Cells[0].Value)
                    });
                    MessageBox.Show("BAşarıyla Silindi");
                    textBox1.Clear();
                    textBox2.Clear();
                    maskedTextBox2.Clear();
                    pictureBox1.ResetText();
                    comboBox1.Text = "";
                    dataGridView1.DataSource = ogrenciDal.x();

                }
                else
                {
                    MessageBox.Show("İşlem geri alındı");
                }

            }

                if (e.ColumnIndex == dataGridView1.Columns["Güncelle"].Index)
                {
                    ogrenciDal.Guncelleme(new Ogrenci
                    {
                        Numara = Convert.ToInt32(this.dataGridView1.Rows[e.RowIndex].Cells[0].Value),
                        Ad = textBox1.Text,
                        Soyad = textBox2.Text,
                        Telefon = maskedTextBox2.Text,
                        Resim = pictureBox1.ImageLocation,
                        Durum = comboBox1.Text
                    });
                    MessageBox.Show("Başarıyla güncellendi");
                    dataGridView1.DataSource = ogrenciDal.x();
                    ıd = 0;
                }
            
        }
    }
}

