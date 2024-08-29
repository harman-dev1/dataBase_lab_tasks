
namespace Lab_Tasks
{
    partial class search_student
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Button searchButton;
            System.Windows.Forms.Label label1;
            this.student_box = new System.Windows.Forms.TextBox();
            this.resetButton = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.reset_button = new System.Windows.Forms.Button();
            searchButton = new System.Windows.Forms.Button();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // searchButton
            // 
            searchButton.Font = new System.Drawing.Font("Book Antiqua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            searchButton.Location = new System.Drawing.Point(418, 98);
            searchButton.Name = "searchButton";
            searchButton.Size = new System.Drawing.Size(101, 32);
            searchButton.TabIndex = 29;
            searchButton.Text = "Search";
            searchButton.UseVisualStyleBackColor = true;
            searchButton.Click += new System.EventHandler(this.searchButton_Click);
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new System.Drawing.Font("Book Antiqua", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            label1.Location = new System.Drawing.Point(53, 106);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(115, 21);
            label1.TabIndex = 31;
            label1.Text = "Student Name";
            // 
            // student_box
            // 
            this.student_box.Location = new System.Drawing.Point(206, 106);
            this.student_box.Name = "student_box";
            this.student_box.Size = new System.Drawing.Size(139, 20);
            this.student_box.TabIndex = 30;
            // 
            // resetButton
            // 
            this.resetButton.Font = new System.Drawing.Font("Book Antiqua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.resetButton.Location = new System.Drawing.Point(346, 407);
            this.resetButton.Name = "resetButton";
            this.resetButton.Size = new System.Drawing.Size(101, 32);
            this.resetButton.TabIndex = 33;
            this.resetButton.Text = "Back";
            this.resetButton.UseVisualStyleBackColor = true;
            this.resetButton.Click += new System.EventHandler(this.resetButton_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 179);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(747, 222);
            this.dataGridView1.TabIndex = 34;
            // 
            // reset_button
            // 
            this.reset_button.Font = new System.Drawing.Font("Book Antiqua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.reset_button.Location = new System.Drawing.Point(646, 95);
            this.reset_button.Name = "reset_button";
            this.reset_button.Size = new System.Drawing.Size(101, 32);
            this.reset_button.TabIndex = 35;
            this.reset_button.Text = "Reset";
            this.reset_button.UseVisualStyleBackColor = true;
            this.reset_button.Click += new System.EventHandler(this.reset_button_Click);
            // 
            // search_student
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DarkSlateGray;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.reset_button);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.resetButton);
            this.Controls.Add(label1);
            this.Controls.Add(this.student_box);
            this.Controls.Add(searchButton);
            this.Name = "search_student";
            this.Text = "search_student";
            this.Load += new System.EventHandler(this.search_student_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox student_box;
        private System.Windows.Forms.Button resetButton;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button reset_button;
    }
}