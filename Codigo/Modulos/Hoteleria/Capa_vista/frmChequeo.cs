using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Vista_PrototipoMenu
{
    public partial class frmChequeo : Form
    {
        Controlador_PrototipoMenu.Controller ctrl = new Controlador_PrototipoMenu.Controller();
        public int id_client = 0;
        public int id_res = 0;
        public int id_emp = 0;
        public int id_hab = 0;
        public frmChequeo()
        {
            InitializeComponent();
            this.ctrl.fillEmpleados(comboEmp);
        }


        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            int id = this.ctrl.getClientID(((TextBox)sender).Text);
            if (id == -1)
            {
                btn_status.BackColor = Color.Red;
            }
            else
            {
                btn_status.BackColor = Color.Green;
                ctrl.fillComboReservacion(comboRes, id);
                id_client = id;
            }
        }

        private void comboRes_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.id_res = ctrl.getIdResSelected(id_client);
            this.id_hab = ctrl.getHabIdByRes(id_res);
        }

        public void makeCheckIn()
        {
            this.ctrl.saveEva(dateTimePicker1.Value, txt_descripcion.Text, Convert.ToInt32(txt_estado_c.Text), id_emp);
            this.ctrl.saveEntrada(this.ctrl.lastEvaId() + 1, id_client, id_hab);
            this.ctrl.changeReservStatus(id_res, 1);
            MessageBox.Show("Chequeo de entrada realizado correctamente!");
        }

        public void makeCheckOut()
        {

            this.ctrl.saveEva(dateTimePicker1.Value, txt_descripcion.Text, Convert.ToInt32(txt_estado_c.Text), id_emp);
            this.ctrl.saveSalida(this.ctrl.lastEvaId() + 1, id_client, id_hab);
            this.ctrl.changeReservStatus(id_res, 3);
            MessageBox.Show("Chequeo de salida realizado correctamente!");
        }

        public void clearWidgets()
        {
            foreach (Control c in this.Controls)
            {
                if (c is TextBox)
                {
                    ((TextBox)c).Clear();
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (ch_entrada.Checked)
            {
                makeCheckIn();
            }
            else
            {
                makeCheckOut();
            }
            clearWidgets();
        }

        private void comboEmp_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.id_emp = this.ctrl.getIdEmpSelectedByRes(id_res);
        }

        private void ch_entrada_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
