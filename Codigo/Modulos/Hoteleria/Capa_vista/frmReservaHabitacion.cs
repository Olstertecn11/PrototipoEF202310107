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
    public partial class frmReservaHabitacion : Form
    {
        Seguridad_Controlador.Controlador cn = new Seguridad_Controlador.Controlador();
        Controller ctrl = new Controller();
        public frmReservaHabitacion()
        {
            InitializeComponent();
            NavegadorVista.Navegador.idApp = "7002";
            navegador1.actual = this;
            navegador1.tabla = data_grid;
            TextBox[] Grupotextbox = { txt_id, txt_idhabitacion, txt_idcliente, txt_date1, txt_idempleado, txt_date2, txt_estado };
            TextBox[] Idtextbox = { txt_id, txt_idhabitacion };
            navegador1.textbox = Grupotextbox;
            navegador1.textboxi = Idtextbox;
            navegador1.cargar(data_grid, Grupotextbox, cn.getNombreBd());
            setupForm();

        }
        public void setupForm()
        {
            this.ctrl.getTypes(this.comboTipo);
            this.ctrl.fillEmpleados(this.combo_emp);
        }

        private void comboTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboHabitacion.Items.Clear();
            comboHabitacion.Text = "";
            this.ctrl.fillHabitacionesByDate(comboHabitacion, date1, date2, lbl_precio, comboTipo.SelectedItem.ToString()); ;
        }

        private void comboHabitacion_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_idhabitacion.Text = comboHabitacion.SelectedItem.ToString();
        }

        private void combo_emp_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ctrl.fillSelectEmp(combo_emp.SelectedItem.ToString(), txt_idempleado);
        }

        private void date1_ValueChanged(object sender, EventArgs e)
        {

            string fechaSeleccionada = ((DateTimePicker)sender).Value.ToString("yyyy-MM-dd"); // Convierte la fecha al formato deseado
            txt_date1.Text = fechaSeleccionada;
        }

        private void date2_ValueChanged(object sender, EventArgs e)
        {
            DateTime fechaSeleccionada = ((DateTimePicker)sender).Value;
            DateTime entradaDate = date1.Value;

            if (fechaSeleccionada > entradaDate)
            {
                string fechaSeleccionadaString = fechaSeleccionada.ToString("yyyy-MM-dd"); // Convierte la fecha al formato deseado
                txt_date2.Text = fechaSeleccionadaString;
            }
            else
            {
                MessageBox.Show("(Error) La fecha de salida no puede ser menor a la de entrada");
                DateTime nuevaFecha = entradaDate.AddDays(1); // Agrega un día a la fecha de entrada
                string nuevaFechaString = nuevaFecha.ToString("yyyy-MM-dd"); // Convierte la nueva fecha al formato deseado
                ((DateTimePicker)sender).Value = nuevaFecha;
                txt_date2.Text = nuevaFechaString;
            }
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
                txt_idcliente.Text = id.ToString();
            }
        }

        private void frmReservaHabitacion_Load(object sender, EventArgs e)
        {

        }

        private void txt_estado_TextChanged(object sender, EventArgs e)
        {
            txt_estado.Text = "1";
        }
    }
}
