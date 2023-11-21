
namespace Vista_PrototipoMenu
{
    partial class frmEvaluacion
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
            this.txt_estado = new System.Windows.Forms.TextBox();
            this.txt_id_empleado = new System.Windows.Forms.TextBox();
            this.txt_descripcion = new System.Windows.Forms.TextBox();
            this.fecha = new System.Windows.Forms.DateTimePicker();
            this.lbl_estado = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.lbl_descripcion = new System.Windows.Forms.Label();
            this.data_grid = new System.Windows.Forms.DataGridView();
            this.navegador1 = new NavegadorVista.Navegador();
            this.txt_fecha = new System.Windows.Forms.TextBox();
            this.txtid = new System.Windows.Forms.TextBox();
            this.lbl_empleados = new System.Windows.Forms.Label();
            this.comboEmpleados = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.data_grid)).BeginInit();
            this.SuspendLayout();
            // 
            // txt_estado
            // 
            this.txt_estado.Location = new System.Drawing.Point(72, 316);
            this.txt_estado.Name = "txt_estado";
            this.txt_estado.Size = new System.Drawing.Size(129, 20);
            this.txt_estado.TabIndex = 58;
            this.txt_estado.Tag = "eva_estado_calidad";
            // 
            // txt_id_empleado
            // 
            this.txt_id_empleado.Location = new System.Drawing.Point(230, 355);
            this.txt_id_empleado.Name = "txt_id_empleado";
            this.txt_id_empleado.Size = new System.Drawing.Size(30, 20);
            this.txt_id_empleado.TabIndex = 54;
            this.txt_id_empleado.Tag = "eva_id_empleado";
            this.txt_id_empleado.Visible = false;
            // 
            // txt_descripcion
            // 
            this.txt_descripcion.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txt_descripcion.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txt_descripcion.Location = new System.Drawing.Point(402, 216);
            this.txt_descripcion.Multiline = true;
            this.txt_descripcion.Name = "txt_descripcion";
            this.txt_descripcion.Size = new System.Drawing.Size(290, 157);
            this.txt_descripcion.TabIndex = 50;
            this.txt_descripcion.Tag = "eva_descripcion";
            // 
            // fecha
            // 
            this.fecha.CalendarMonthBackground = System.Drawing.SystemColors.InactiveCaption;
            this.fecha.Location = new System.Drawing.Point(72, 235);
            this.fecha.Name = "fecha";
            this.fecha.Size = new System.Drawing.Size(129, 20);
            this.fecha.TabIndex = 49;
            this.fecha.Tag = "";
            this.fecha.Value = new System.DateTime(2023, 10, 24, 0, 0, 0, 0);
            this.fecha.ValueChanged += new System.EventHandler(this.fecha_ValueChanged);
            // 
            // lbl_estado
            // 
            this.lbl_estado.AutoSize = true;
            this.lbl_estado.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_estado.Location = new System.Drawing.Point(69, 300);
            this.lbl_estado.Name = "lbl_estado";
            this.lbl_estado.Size = new System.Drawing.Size(110, 13);
            this.lbl_estado.TabIndex = 44;
            this.lbl_estado.Text = "Estado de Calidad";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(69, 216);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(42, 13);
            this.label6.TabIndex = 42;
            this.label6.Text = "Fecha";
            // 
            // lbl_descripcion
            // 
            this.lbl_descripcion.AutoSize = true;
            this.lbl_descripcion.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_descripcion.Location = new System.Drawing.Point(399, 188);
            this.lbl_descripcion.Name = "lbl_descripcion";
            this.lbl_descripcion.Size = new System.Drawing.Size(74, 13);
            this.lbl_descripcion.TabIndex = 40;
            this.lbl_descripcion.Text = "Descripcion";
            // 
            // data_grid
            // 
            this.data_grid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.data_grid.Location = new System.Drawing.Point(41, 391);
            this.data_grid.Name = "data_grid";
            this.data_grid.Size = new System.Drawing.Size(651, 130);
            this.data_grid.TabIndex = 60;
            this.data_grid.Tag = "tbl_evaluacion";
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(94, 12);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(574, 145);
            this.navegador1.TabIndex = 76;
            // 
            // txt_fecha
            // 
            this.txt_fecha.Location = new System.Drawing.Point(264, 235);
            this.txt_fecha.Name = "txt_fecha";
            this.txt_fecha.Size = new System.Drawing.Size(28, 20);
            this.txt_fecha.TabIndex = 77;
            this.txt_fecha.Tag = "eva_fecha";
            this.txt_fecha.Visible = false;
            // 
            // txtid
            // 
            this.txtid.Location = new System.Drawing.Point(230, 235);
            this.txtid.Name = "txtid";
            this.txtid.Size = new System.Drawing.Size(28, 20);
            this.txtid.TabIndex = 78;
            this.txtid.Tag = "eva_id";
            this.txtid.Visible = false;
            // 
            // lbl_empleados
            // 
            this.lbl_empleados.AutoSize = true;
            this.lbl_empleados.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_empleados.Location = new System.Drawing.Point(229, 300);
            this.lbl_empleados.Name = "lbl_empleados";
            this.lbl_empleados.Size = new System.Drawing.Size(62, 13);
            this.lbl_empleados.TabIndex = 43;
            this.lbl_empleados.Text = "Empleado";
            // 
            // comboEmpleados
            // 
            this.comboEmpleados.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.comboEmpleados.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.comboEmpleados.FormattingEnabled = true;
            this.comboEmpleados.Location = new System.Drawing.Point(231, 318);
            this.comboEmpleados.Margin = new System.Windows.Forms.Padding(2);
            this.comboEmpleados.Name = "comboEmpleados";
            this.comboEmpleados.Size = new System.Drawing.Size(143, 21);
            this.comboEmpleados.TabIndex = 47;
            this.comboEmpleados.SelectedIndexChanged += new System.EventHandler(this.comboEmpleados_SelectedIndexChanged);
            // 
            // frmEvaluacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(753, 527);
            this.Controls.Add(this.txtid);
            this.Controls.Add(this.txt_fecha);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.data_grid);
            this.Controls.Add(this.txt_estado);
            this.Controls.Add(this.txt_id_empleado);
            this.Controls.Add(this.txt_descripcion);
            this.Controls.Add(this.fecha);
            this.Controls.Add(this.comboEmpleados);
            this.Controls.Add(this.lbl_estado);
            this.Controls.Add(this.lbl_empleados);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.lbl_descripcion);
            this.Name = "frmEvaluacion";
            this.Text = "frmChequeo";
            ((System.ComponentModel.ISupportInitialize)(this.data_grid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox txt_estado;
        private System.Windows.Forms.TextBox txt_id_empleado;
        private System.Windows.Forms.TextBox txt_descripcion;
        private System.Windows.Forms.DateTimePicker fecha;
        private System.Windows.Forms.Label lbl_estado;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lbl_descripcion;
        private System.Windows.Forms.DataGridView data_grid;
        private NavegadorVista.Navegador navegador1;
        private System.Windows.Forms.TextBox txt_fecha;
        private System.Windows.Forms.TextBox txtid;
        private System.Windows.Forms.Label lbl_empleados;
        private System.Windows.Forms.ComboBox comboEmpleados;
    }
}