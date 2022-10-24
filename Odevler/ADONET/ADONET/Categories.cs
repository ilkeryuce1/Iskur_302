using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ADONET
{
    public partial class Categories : Form
    {
      
        public Categories()
        {
            InitializeComponent();
        }
        SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-QJ144O6\\SQLEXPRESS; Initial Catalog=Northwind;Integrated Security=True");
        private void guncelle()
        {
            SqlDataAdapter sqlData = new SqlDataAdapter("select*from Categories", baglan);
            DataTable dataTable = new DataTable();
            sqlData.Fill(dataTable);
            dataGridView1.DataSource = dataTable;

            dataGridView1.Columns["CategoryID"].Visible = false;
          
        }
        private void Categories_Load(object sender, EventArgs e)
        {
            guncelle();
        }

        private void button1_Click(object sender, EventArgs e)
        {


            string kadi = textBox1.Text;
            string acıklama = textBox2.Text;
            SqlCommand command0 = new SqlCommand();

            command0.CommandText = String.Format($"insert into Categories(CategoryName,Description) Values('{kadi}','{acıklama}')");
            command0.Connection = baglan;
            baglan.Open();
            int eklendi = command0.ExecuteNonQuery();
            if (eklendi > 0)
            {
                MessageBox.Show("Eklendi");
                guncelle();
            }
            else
            {
                MessageBox.Show("Eklenmedı");
            }
            baglan.Close();
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            textBox1.Text = dataGridView1.CurrentRow.Cells["CategoryName"].Value.ToString();
            textBox2.Text = dataGridView1.CurrentRow.Cells["Description"].Value.ToString();
            textBox3.Text = dataGridView1.CurrentRow.Cells["CategoryID"].Value.ToString();
          

        }
       
        private void button2_Click(object sender, EventArgs e)
        {


          string kadi = textBox1.Text;
        string acıklama = textBox2.Text;
            SqlCommand command0 = new SqlCommand();

            int a = int.Parse(textBox3.Text);
            command0.CommandText = String.Format($"update Categories set CategoryName='{kadi}',Description='{acıklama}' where CategoryID={a}");
            command0.Connection = baglan;
            baglan.Open();
            int eklendi = command0.ExecuteNonQuery();
            if (eklendi > 0)
            {
                MessageBox.Show("Eklendi");
                guncelle();
            }
            else
            {
                MessageBox.Show("Eklenmedı");
            }
            baglan.Close();
        }

        private void dataGridView1_MouseDown(object sender, MouseEventArgs e)
        {

        }

        private void contextMenuStrip1_Opening(object sender, CancelEventArgs e)
        {
              
        }

        private void silToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != String.Empty && textBox2.Text != String.Empty)
            {
                string kadi = textBox1.Text;
                string acıklama = textBox2.Text;
                SqlCommand command0 = new SqlCommand();

                int a = int.Parse(textBox3.Text);
                command0.CommandText = String.Format($"delete from Categories where CategoryID={a}");
                command0.Connection = baglan;
                baglan.Open();
                int eklendi = command0.ExecuteNonQuery();
                if (eklendi > 0)
                {
                    MessageBox.Show("silindi");
                    guncelle();
                }
                else
                {
                    MessageBox.Show("silinmedi");
                }
                baglan.Close();
            }
            else
            {
                MessageBox.Show("Boş geçilemez");
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
            //Stored Procedure ile Kategori ekleme
             string kadi = textBox1.Text;
         string acıklama = textBox2.Text;
        SqlCommand kategoriEkle = new SqlCommand($"KategoriEkle'{kadi}','{acıklama}'",baglan);
            kategoriEkle.Parameters.AddWithValue("@adi",kadi);
            kategoriEkle.Connection=baglan;
            baglan.Open();
            int rowAffected = kategoriEkle.ExecuteNonQuery();
           dataGridView1.DataSource = rowAffected;
            if (rowAffected > 0)
            {
                MessageBox.Show("eklendi");
                guncelle();
            }
            else
            {
                MessageBox.Show("eklenmedi");
            }
            baglan.Close();
        

        }

        private void button5_Click(object sender, EventArgs e)
        {

            //kategorisilme
          
            int id = int.Parse(textBox3.Text);
            SqlCommand kategoriEkle = new SqlCommand($"kategorisil'{id}'", baglan);
            kategoriEkle.Parameters.AddWithValue("@id", id);
            kategoriEkle.Connection = baglan;
            baglan.Open();
            int rowAffected = kategoriEkle.ExecuteNonQuery();
            dataGridView1.DataSource = rowAffected;
            if (rowAffected > 0)
            {
                MessageBox.Show("silindi");
                guncelle();
            }
            else
            {
                MessageBox.Show("silinmedi");
            }
            baglan.Close();

        }

        private void button6_Click(object sender, EventArgs e)
        {
            
            SqlCommand kategoriEkle = new SqlCommand($"kategorilistele", baglan);
            kategoriEkle.Connection = baglan;
            baglan.Open();
            int rowAffected = kategoriEkle.ExecuteNonQuery();
            dataGridView1.DataSource = rowAffected;

           
            baglan.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //KategoriGuncelleyen
            string kadi = textBox1.Text;
            string acıklama = textBox2.Text;
            int id = int.Parse(textBox3.Text);
            SqlCommand kategoriEkle = new SqlCommand($"KategoriGuncelleyen'{kadi}','{acıklama}','{id}'", baglan);
            kategoriEkle.Parameters.AddWithValue("@id", id);
            kategoriEkle.Connection = baglan;
            baglan.Open();
            int rowAffected = kategoriEkle.ExecuteNonQuery();
            dataGridView1.DataSource = rowAffected;
            if (rowAffected > 0)
            {
                MessageBox.Show("güncellendi");
                guncelle();
            }
            else
            {
                MessageBox.Show("güncellenmedi");
            }
            baglan.Close();
        }
    }
}
