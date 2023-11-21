
namespace Vista_PrototipoMenu
{
    partial class frmReservacion
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
            this.btn_reservacion = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btn_reservacion
            // 
            this.btn_reservacion.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_reservacion.FlatAppearance.BorderSize = 0;
            this.btn_reservacion.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_reservacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_reservacion.ForeColor = System.Drawing.Color.White;
            this.btn_reservacion.Location = new System.Drawing.Point(622, 402);
            this.btn_reservacion.Name = "btn_reservacion";
            this.btn_reservacion.Size = new System.Drawing.Size(156, 36);
            this.btn_reservacion.TabIndex = 0;
            this.btn_reservacion.Text = "Realizar Reservación";
            this.btn_reservacion.UseVisualStyleBackColor = false;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(50, 168);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 1;
            // 
            // frmReservacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.btn_reservacion);
            this.Name = "frmReservacion";
            this.Text = "frmReservacion";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_reservacion;
        private System.Windows.Forms.TextBox textBox1;
    }
}