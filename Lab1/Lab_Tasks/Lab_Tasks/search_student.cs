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

namespace Lab_Tasks
{
    public partial class search_student : Form
    {
        public search_student()
        {
            InitializeComponent();
        }

        private void search_student_Load(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("Select * from Student", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void searchButton_Click(object sender, EventArgs e)
        {
            string item_search = student_box.Text;
            if (!string.IsNullOrWhiteSpace(item_search)) 
            {
                DataView d = new DataView(((DataTable)dataGridView1.DataSource));
                d.RowFilter = $"Name LIKE '%{item_search}'";
                dataGridView1.DataSource = d.ToTable();
            }
            else
            {
                search_student_Load(sender, e);
            }
        }

        private void resetButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 f = new Form1();
            f.Show(); 
        }

        private void reset_button_Click(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("Select * from Student", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }
    }
}
