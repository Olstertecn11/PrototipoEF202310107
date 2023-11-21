
namespace Vista_PrototipoMenu
{
    partial class frmReservaHabitacion
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
            this.txt_idempleado = new System.Windows.Forms.TextBox();
            this.txt_idcliente = new System.Windows.Forms.TextBox();
            this.lbl_precio = new System.Windows.Forms.Label();
            this.date2 = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.date1 = new System.Windows.Forms.DateTimePicker();
            this.label9 = new System.Windows.Forms.Label();
            this.combo_emp = new System.Windows.Forms.ComboBox();
            this.comboHabitacion = new System.Windows.Forms.ComboBox();
            this.comboTipo = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_date1 = new System.Windows.Forms.TextBox();
            this.txt_date2 = new System.Windows.Forms.TextBox();
            this.btn_status = new System.Windows.Forms.Button();
            this.navegador1 = new NavegadorVista.Navegador();
            this.data_grid = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_id = new System.Windows.Forms.TextBox();
            this.txt_idhabitacion = new System.Windows.Forms.TextBox();
            this.txt_estado = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.data_grid)).BeginInit();
            this.SuspendLayout();
            // 
            // txt_idempleado
            // 
            this.txt_idempleado.Location = new System.Drawing.Point(101, 264);
            this.txt_idempleado.Name = "txt_idempleado";
            this.txt_idempleado.Size = new System.Drawing.Size(27, 20);
            this.txt_idempleado.TabIndex = 71;
            this.txt_idempleado.Tag = "res_id_empleado";
            this.txt_idempleado.Visible = false;
            // 
            // txt_idcliente
            // 
            this.txt_idcliente.Location = new System.Drawing.Point(68, 264);
            this.txt_idcliente.Name = "txt_idcliente";
            this.txt_idcliente.Size = new System.Drawing.Size(27, 20);
            this.txt_idcliente.TabIndex = 70;
            this.txt_idcliente.Tag = "res_id_cliente";
            this.txt_idcliente.Visible = false;
            // 
            // lbl_precio
            // 
            this.lbl_precio.AutoSize = true;
            this.lbl_precio.Font = new System.Drawing.Font("Century Gothic", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_precio.ForeColor = System.Drawing.Color.SteelBlue;
            this.lbl_precio.Location = new System.Drawing.Point(419, 287);
            this.lbl_precio.Name = "lbl_precio";
            this.lbl_precio.Size = new System.Drawing.Size(252, 56);
            this.lbl_precio.TabIndex = 68;
            this.lbl_precio.Text = "Q.1025.75";
            // 
            // date2
            // 
            this.date2.CalendarMonthBackground = System.Drawing.SystemColors.InactiveCaption;
            this.date2.Location = new System.Drawing.Point(224, 235);
            this.date2.Name = "date2";
            this.date2.Size = new System.Drawing.Size(129, 20);
            this.date2.TabIndex = 67;
            this.date2.Value = new System.DateTime(2023, 10, 24, 0, 0, 0, 0);
            this.date2.ValueChanged += new System.EventHandler(this.date2_ValueChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(221, 216);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(42, 13);
            this.label3.TabIndex = 66;
            this.label3.Text = "Salida";
            // 
            // date1
            // 
            this.date1.CalendarMonthBackground = System.Drawing.SystemColors.InactiveCaption;
            this.date1.Location = new System.Drawing.Point(66, 235);
            this.date1.Name = "date1";
            this.date1.Size = new System.Drawing.Size(129, 20);
            this.date1.TabIndex = 65;
            this.date1.Value = new System.DateTime(2023, 10, 24, 0, 0, 0, 0);
            this.date1.ValueChanged += new System.EventHandler(this.date1_ValueChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(380, 219);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(115, 13);
            this.label9.TabIndex = 64;
            this.label9.Text = "Tipo de Habitacion";
            // 
            // combo_emp
            // 
            this.combo_emp.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.combo_emp.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.combo_emp.FormattingEnabled = true;
            this.combo_emp.Location = new System.Drawing.Point(218, 320);
            this.combo_emp.Margin = new System.Windows.Forms.Padding(2);
            this.combo_emp.Name = "combo_emp";
            this.combo_emp.Size = new System.Drawing.Size(143, 21);
            this.combo_emp.TabIndex = 63;
            this.combo_emp.SelectedIndexChanged += new System.EventHandler(this.combo_emp_SelectedIndexChanged);
            // 
            // comboHabitacion
            // 
            this.comboHabitacion.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.comboHabitacion.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.comboHabitacion.FormattingEnabled = true;
            this.comboHabitacion.Location = new System.Drawing.Point(549, 232);
            this.comboHabitacion.Margin = new System.Windows.Forms.Padding(2);
            this.comboHabitacion.Name = "comboHabitacion";
            this.comboHabitacion.Size = new System.Drawing.Size(129, 21);
            this.comboHabitacion.TabIndex = 62;
            this.comboHabitacion.SelectedIndexChanged += new System.EventHandler(this.comboHabitacion_SelectedIndexChanged);
            // 
            // comboTipo
            // 
            this.comboTipo.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.comboTipo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.comboTipo.ForeColor = System.Drawing.SystemColors.WindowText;
            this.comboTipo.FormattingEnabled = true;
            this.comboTipo.Location = new System.Drawing.Point(383, 234);
            this.comboTipo.Margin = new System.Windows.Forms.Padding(2);
            this.comboTipo.Name = "comboTipo";
            this.comboTipo.Size = new System.Drawing.Size(143, 21);
            this.comboTipo.TabIndex = 61;
            this.comboTipo.SelectedIndexChanged += new System.EventHandler(this.comboTipo_SelectedIndexChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(216, 303);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(62, 13);
            this.label7.TabIndex = 59;
            this.label7.Text = "Empleado";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(63, 216);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(51, 13);
            this.label6.TabIndex = 58;
            this.label6.Text = "Entrada";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(546, 216);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(115, 13);
            this.label5.TabIndex = 57;
            this.label5.Text = "Numero Habitacion";
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.textBox1.Location = new System.Drawing.Point(61, 320);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(129, 20);
            this.textBox1.TabIndex = 56;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(58, 304);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(93, 13);
            this.label2.TabIndex = 55;
            this.label2.Text = "Nombre Cliente";
            // 
            // txt_date1
            // 
            this.txt_date1.Location = new System.Drawing.Point(219, 264);
            this.txt_date1.Name = "txt_date1";
            this.txt_date1.Size = new System.Drawing.Size(27, 20);
            this.txt_date1.TabIndex = 72;
            this.txt_date1.Tag = "res_fecha";
            this.txt_date1.Visible = false;
            // 
            // txt_date2
            // 
            this.txt_date2.Location = new System.Drawing.Point(252, 264);
            this.txt_date2.Name = "txt_date2";
            this.txt_date2.Size = new System.Drawing.Size(27, 20);
            this.txt_date2.TabIndex = 73;
            this.txt_date2.Tag = "res_fecha_s";
            this.txt_date2.Visible = false;
            // 
            // btn_status
            // 
            this.btn_status.BackColor = System.Drawing.Color.ForestGreen;
            this.btn_status.FlatAppearance.BorderSize = 0;
            this.btn_status.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_status.Location = new System.Drawing.Point(173, 346);
            this.btn_status.Name = "btn_status";
            this.btn_status.Size = new System.Drawing.Size(16, 10);
            this.btn_status.TabIndex = 74;
            this.btn_status.UseVisualStyleBackColor = false;
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(66, 11);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(574, 152);
            this.navegador1.TabIndex = 75;
            // 
            // data_grid
            // 
            this.data_grid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.data_grid.Location = new System.Drawing.Point(61, 378);
            this.data_grid.Name = "data_grid";
            this.data_grid.Size = new System.Drawing.Size(610, 102);
            this.data_grid.TabIndex = 76;
            this.data_grid.Tag = "tbl_reservacion";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(65, 166);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(18, 13);
            this.label1.TabIndex = 78;
            this.label1.Text = "ID";
            // 
            // txt_id
            // 
            this.txt_id.Location = new System.Drawing.Point(65, 182);
            this.txt_id.Name = "txt_id";
            this.txt_id.Size = new System.Drawing.Size(100, 20);
            this.txt_id.TabIndex = 77;
            this.txt_id.Tag = "res_id";
            // 
            // txt_idhabitacion
            // 
            this.txt_idhabitacion.Location = new System.Drawing.Point(218, 182);
            this.txt_idhabitacion.Name = "txt_idhabitacion";
            this.txt_idhabitacion.Size = new System.Drawing.Size(27, 20);
            this.txt_idhabitacion.TabIndex = 79;
            this.txt_idhabitacion.Tag = "res_id_habitacion";
            this.txt_idhabitacion.Visible = false;
            // 
            // txt_estado
            // 
            this.txt_estado.Location = new System.Drawing.Point(383, 182);
            this.txt_estado.Name = "txt_estado";
            this.txt_estado.Size = new System.Drawing.Size(27, 20);
            this.txt_estado.TabIndex = 80;
            this.txt_estado.Tag = "estado";
            this.txt_estado.Text = "1";
            this.txt_estado.Visible = false;
            this.txt_estado.TextChanged += new System.EventHandler(this.txt_estado_TextChanged);
            // 
            // frmReservaHabitacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(704, 487);
            this.Controls.Add(this.txt_estado);
            this.Controls.Add(this.txt_idhabitacion);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_id);
            this.Controls.Add(this.data_grid);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.btn_status);
            this.Controls.Add(this.txt_date2);
            this.Controls.Add(this.txt_date1);
            this.Controls.Add(this.txt_idempleado);
            this.Controls.Add(this.txt_idcliente);
            this.Controls.Add(this.lbl_precio);
            this.Controls.Add(this.date2);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.date1);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.combo_emp);
            this.Controls.Add(this.comboHabitacion);
            this.Controls.Add(this.comboTipo);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label2);
            this.Name = "frmReservaHabitacion";
            this.Text = "frmReservaHabitacion";
            this.Load += new System.EventHandler(this.frmReservaHabitacion_Load);
            ((System.ComponentModel.ISupportInitialize)(this.data_grid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_idempleado;
        private System.Windows.Forms.TextBox txt_idcliente;
        private System.Windows.Forms.Label lbl_precio;
        private System.Windows.Forms.DateTimePicker date2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker date1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox combo_emp;
        private System.Windows.Forms.ComboBox comboHabitacion;
        private System.Windows.Forms.ComboBox comboTipo;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_date1;
        private System.Windows.Forms.TextBox txt_date2;
        private System.Windows.Forms.Button btn_status;
        private NavegadorVista.Navegador navegador1;
        private System.Windows.Forms.DataGridView data_grid;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_id;
        private System.Windows.Forms.TextBox txt_idhabitacion;
        private System.Windows.Forms.TextBox txt_estado;
    }
}