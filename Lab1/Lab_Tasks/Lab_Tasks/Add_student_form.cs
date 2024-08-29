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
    public partial class Add_student_form : Form
    {
        public Add_student_form()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Insert into Student values (@Registeration_number, @Name, @Department, @Session, @CGPA, @Address)", con);
            cmd.Parameters.AddWithValue("@Registeration_number", (textBox1.Text));
            cmd.Parameters.AddWithValue("@Name", textBox2.Text);
            cmd.Parameters.AddWithValue("@Department", textBox3.Text);
            cmd.Parameters.AddWithValue("@Session", textBox4.Text);
            cmd.Parameters.AddWithValue("@CGPA", textBox5.Text);
            cmd.Parameters.AddWithValue("@Address", textBox6.Text);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Successfully saved");
            this.Hide();
            Form1 f = new Form1();
            f.Show();

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            this.Hide();
            Form1 f = new Form1();
            f.Show();
        }

        private void Add_student_form_Load(object sender, EventArgs e)
        {
           
        }
    }
}
