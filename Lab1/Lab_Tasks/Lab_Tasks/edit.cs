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
    public partial class Form2 : Form
    {
        public static string id;
        public static string name;
        public static string department;
        public static string session;
        public static string CGPA;
        public static string address;
        public Form2()
        {
            InitializeComponent();
            dataGridView1.CellContentClick += dataGridView1_CellContentClick;
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 f = new Form1();
            f.Show();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("Select * from Student", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void edit_button_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                id = dataGridView1.SelectedRows[0].Cells["Registeration_number"].Value.ToString();
                name = dataGridView1.SelectedRows[0].Cells["Name"].Value.ToString();
                department = dataGridView1.SelectedRows[0].Cells["Department"].Value.ToString();
                session = dataGridView1.SelectedRows[0].Cells["Session"].Value.ToString();
                CGPA = dataGridView1.SelectedRows[0].Cells["CGPA"].Value.ToString();
                address = dataGridView1.SelectedRows[0].Cells["Address"].Value.ToString();
                reg_num_txt.Text = id;
                name_txt.Text = name;
                department_txt.Text = department;
                session_txt.Text = session;
                gpa_txt.Text = CGPA;
                address_txt.Text = address;

                //Delete_from_database(reg_number);
                //dataGridView1.Rows.RemoveAt(dataGridView1.SelectedRows[0].Index);
            }
            else
            {
                MessageBox.Show("Plzz Select a row to edit");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (reg_num_txt.Text != id)
            {
                try
                {
                    using (var con = Configuration.getInstance().getConnection())
                    {
                        string query = "UPDATE Student SET Registeration_number = @Registeration_number  ";
                        using (SqlCommand command = new SqlCommand(query, con))
                        {
                            command.Parameters.AddWithValue("@Registeration_number", reg_num_txt.Text);
                            //command.Parameters.AddWithValue("@OldRegisteration_number", id);
                            //con.Open();
                            command.ExecuteNonQuery();
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error in Updation: " + ex.Message);
                }
                
            }
            if(name_txt.Text != name)
            {
                try
                {
                    using (var con = Configuration.getInstance().getConnection())
                    {
                        string query = "UPDATE Student SET Name = @Name  ";
                        using (SqlCommand command = new SqlCommand(query, con))
                        {
                            command.Parameters.AddWithValue("@Name", name_txt.Text);
                            //command.Parameters.AddWithValue("@OldRegisteration_number", id);
                            //con.Open();
                            command.ExecuteNonQuery();
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error in Updation: " + ex.Message);
                }
            }
        }
        private void refresh_data_grid_view()
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