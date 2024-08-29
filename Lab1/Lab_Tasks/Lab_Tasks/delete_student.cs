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
    public partial class delete_student : Form
    {
        public delete_student()
        {
            InitializeComponent();
        }

        private void delete_student_Load(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("Select * from Student", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void delete_button_Click(object sender, EventArgs e)
        {
            if(dataGridView1.SelectedRows.Count > 0 )
            {
                string reg_number = dataGridView1.SelectedRows[0].Cells["Registeration_number"].Value.ToString();
                Delete_from_database(reg_number);
                dataGridView1.Rows.RemoveAt(dataGridView1.SelectedRows[0].Index);
            }
            else
            {
                MessageBox.Show("Plzz Select a row to delete");
            }
        }
        private void Delete_from_database(string reg_number)
        {
            try
            {
                var con = Configuration.getInstance().getConnection();
                string query = "DELETE FROM Student WHERE Registeration_number = @Registeration_number ";
                using (SqlCommand command = new SqlCommand (query,con))
                {
                    command.Parameters.AddWithValue("@Registeration_number",reg_number);
                    command.ExecuteNonQuery();
                }
                //con.Close();
            }
            catch(SystemException e)
            {
                MessageBox.Show("AN Error Occured" + e.Message);

            }


        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 f = new Form1();
            f.Show();
        }
    }
}
