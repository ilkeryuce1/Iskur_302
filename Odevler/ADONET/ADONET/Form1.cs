using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace ADONET
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

          SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-QJ144O6\\SQLEXPRESS; Initial Catalog=Northwind;" +
            "Integrated Security=True");

        private void guncelle()
        {
            SqlDataAdapter sqlData = new SqlDataAdapter("select*from Products", baglan);
            DataTable dataTable = new DataTable();
            sqlData.Fill(dataTable);
            dataGridView1.DataSource = dataTable;

            dataGridView1.Columns["ProductName"].Visible = false;
            dataGridView1.Columns["SupplierID"].Visible = false;
            dataGridView1.Columns["CategoryID"].Visible = false;
        }
        private void Form1_Load(object sender, EventArgs e)
        {

            guncelle();


        }

       

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string adi = textBox1.Text;
            decimal fiyat = numericUpDown1.Value;
            decimal stok = numericUpDown2.Value;
            SqlCommand command0 = new SqlCommand();
            
            command0.CommandText = String.Format("insert into Products(ProductName,UnitPrice,UnitsInStock) Values('{0}',{1},{2})", adi, fiyat, stok);
            command0.Connection = baglan;
            baglan.Open();
            int eklendı = command0.ExecuteNonQuery();
            if (eklendı>0)
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

        private void button2_Click(object sender, EventArgs e)
        {
            Categories categories = new Categories();
            categories.Visible = true;
            this.Visible = false;
        }
    }
}
