using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Controlador_PrototipoMenu;

namespace Vista_PrototipoMenu
{
    public partial class frmGestionHabitacion : Form
    {
        Controller ctrl = new Controller();
        Seguridad_Controlador.Controlador cn;

        public frmGestionHabitacion()
        {
            this.cn = new Seguridad_Controlador.Controlador();
            InitializeComponent();
            NavegadorVista.Navegador.idApp = "7005";
            _navegador.actual = this;
            _navegador.tabla = dataGridView1;
            TextBox[] Grupotextbox = { txt_id, txt_numero, txt_tipo, txt_estado };
            TextBox[] Idtextbox = { txt_id, txt_numero };
            _navegador.textbox = Grupotextbox;
            _navegador.textboxi = Idtextbox;
            _navegador.cargar(dataGridView1, Grupotextbox, cn.getNombreBd());
            this.setupForm();
        }

        public void setupForm()
        {
            this.ctrl.getTypes(this.combo);
        }

        private void combo_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ctrl.fillHabitaciones(combo.SelectedItem.ToString(), txt_tipo);
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                txt_estado.Text = "1";
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                txt_estado.Text = "0";
            }
        }

        private void checkBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                txt_estado.Text = "2";
            }
        }
    }
}
