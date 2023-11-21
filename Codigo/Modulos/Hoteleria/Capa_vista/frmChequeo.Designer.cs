
namespace Vista_PrototipoMenu
{
    partial class frmChequeo
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
            this.btn_status = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.comboRes = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.txt_descripcion = new System.Windows.Forms.TextBox();
            this.lbl_descripcion = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_estado_c = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.comboEmp = new System.Windows.Forms.ComboBox();
            this.ch_entrada = new System.Windows.Forms.CheckBox();
            this.ch_salida = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // btn_status
            // 
            this.btn_status.BackColor = System.Drawing.Color.ForestGreen;
            this.btn_status.FlatAppearance.BorderSize = 0;
            this.btn_status.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_status.Location = new System.Drawing.Point(137, 73);
            this.btn_status.Name = "btn_status";
            this.btn_status.Size = new System.Drawing.Size(16, 10);
            this.btn_status.TabIndex = 77;
            this.btn_status.UseVisualStyleBackColor = false;
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.textBox1.Location = new System.Drawing.Point(25, 47);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(129, 20);
            this.textBox1.TabIndex = 76;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(22, 31);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(93, 13);
            this.label2.TabIndex = 75;
            this.label2.Text = "Nombre Cliente";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(191, 31);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(78, 13);
            this.label9.TabIndex = 79;
            this.label9.Text = "Reservacion";
            // 
            // comboRes
            // 
            this.comboRes.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.comboRes.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboRes.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.comboRes.ForeColor = System.Drawing.SystemColors.WindowText;
            this.comboRes.FormattingEnabled = true;
            this.comboRes.Location = new System.Drawing.Point(194, 46);
            this.comboRes.Margin = new System.Windows.Forms.Padding(2);
            this.comboRes.Name = "comboRes";
            this.comboRes.Size = new System.Drawing.Size(129, 21);
            this.comboRes.TabIndex = 78;
            this.comboRes.SelectedIndexChanged += new System.EventHandler(this.comboRes_SelectedIndexChanged);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.ForestGreen;
            this.button1.FlatAppearance.BorderSize = 0;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(578, 319);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(162, 36);
            this.button1.TabIndex = 80;
            this.button1.Text = "Guardar Chequeo";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // txt_descripcion
            // 
            this.txt_descripcion.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txt_descripcion.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txt_descripcion.Location = new System.Drawing.Point(25, 198);
            this.txt_descripcion.Multiline = true;
            this.txt_descripcion.Name = "txt_descripcion";
            this.txt_descripcion.Size = new System.Drawing.Size(445, 157);
            this.txt_descripcion.TabIndex = 82;
            this.txt_descripcion.Tag = "eva_descripcion";
            // 
            // lbl_descripcion
            // 
            this.lbl_descripcion.AutoSize = true;
            this.lbl_descripcion.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_descripcion.Location = new System.Drawing.Point(22, 170);
            this.lbl_descripcion.Name = "lbl_descripcion";
            this.lbl_descripcion.Size = new System.Drawing.Size(74, 13);
            this.lbl_descripcion.TabIndex = 81;
            this.lbl_descripcion.Text = "Descripcion";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(25, 127);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(129, 20);
            this.dateTimePicker1.TabIndex = 83;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(22, 111);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(96, 13);
            this.label1.TabIndex = 84;
            this.label1.Text = "Fecha Chequeo";
            // 
            // txt_estado_c
            // 
            this.txt_estado_c.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txt_estado_c.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txt_estado_c.Location = new System.Drawing.Point(194, 127);
            this.txt_estado_c.Multiline = true;
            this.txt_estado_c.Name = "txt_estado_c";
            this.txt_estado_c.Size = new System.Drawing.Size(129, 20);
            this.txt_estado_c.TabIndex = 86;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(191, 111);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(92, 13);
            this.label3.TabIndex = 85;
            this.label3.Text = "Estado Calidad";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(339, 31);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 13);
            this.label4.TabIndex = 88;
            this.label4.Text = "Empleado";
            // 
            // comboEmp
            // 
            this.comboEmp.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.comboEmp.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboEmp.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.comboEmp.ForeColor = System.Drawing.SystemColors.WindowText;
            this.comboEmp.FormattingEnabled = true;
            this.comboEmp.Location = new System.Drawing.Point(342, 46);
            this.comboEmp.Margin = new System.Windows.Forms.Padding(2);
            this.comboEmp.Name = "comboEmp";
            this.comboEmp.Size = new System.Drawing.Size(128, 21);
            this.comboEmp.TabIndex = 87;
            this.comboEmp.SelectedIndexChanged += new System.EventHandler(this.comboEmp_SelectedIndexChanged);
            // 
            // ch_entrada
            // 
            this.ch_entrada.AutoSize = true;
            this.ch_entrada.Location = new System.Drawing.Point(578, 46);
            this.ch_entrada.Name = "ch_entrada";
            this.ch_entrada.Size = new System.Drawing.Size(63, 17);
            this.ch_entrada.TabIndex = 89;
            this.ch_entrada.Text = "Entrada";
            this.ch_entrada.UseVisualStyleBackColor = true;
            this.ch_entrada.CheckedChanged += new System.EventHandler(this.ch_entrada_CheckedChanged);
            // 
            // ch_salida
            // 
            this.ch_salida.AutoSize = true;
            this.ch_salida.Location = new System.Drawing.Point(685, 46);
            this.ch_salida.Name = "ch_salida";
            this.ch_salida.Size = new System.Drawing.Size(55, 17);
            this.ch_salida.TabIndex = 90;
            this.ch_salida.Text = "Salida";
            this.ch_salida.UseVisualStyleBackColor = true;
            // 
            // frmChequeo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 396);
            this.Controls.Add(this.ch_salida);
            this.Controls.Add(this.ch_entrada);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.comboEmp);
            this.Controls.Add(this.txt_estado_c);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.txt_descripcion);
            this.Controls.Add(this.lbl_descripcion);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.comboRes);
            this.Controls.Add(this.btn_status);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label2);
            this.Name = "frmChequeo";
            this.Text = "frmChequeo";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_status;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox comboRes;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox txt_descripcion;
        private System.Windows.Forms.Label lbl_descripcion;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_estado_c;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboEmp;
        private System.Windows.Forms.CheckBox ch_entrada;
        private System.Windows.Forms.CheckBox ch_salida;
    }
}