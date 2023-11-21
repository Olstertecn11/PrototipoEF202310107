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
using Seguridad_Controlador;

namespace Vista_PrototipoMenu
{
    public partial class frmEvaluacion : Form
    {
        Seguridad_Controlador.Controlador cn = new Seguridad_Controlador.Controlador();
        Controller ctrl = new Controller();
        public frmEvaluacion()
        {
            InitializeComponent();
            NavegadorVista.Navegador.idApp = "7006";
            navegador1.actual = this;
            navegador1.tabla = data_grid;
            TextBox[] Grupotextbox = { txtid, txt_fecha, txt_descripcion, txt_estado, txt_id_empleado };
            TextBox[] Idtextbox = { txtid, txt_fecha };
            navegador1.textbox = Grupotextbox;
            navegador1.textboxi = Idtextbox;
            navegador1.cargar(data_grid, Grupotextbox, cn.getNombreBd());
            this.setupForm();
        }

        void setupForm()
        {
            this.ctrl.fillEmpleados(comboEmpleados);
        }

        private void fecha_ValueChanged(object sender, EventArgs e)
        {
            string fechaSeleccionada = ((DateTimePicker)sender).Value.ToString("yyyy-MM-dd"); // Convierte la fecha al formato deseado
            txt_fecha.Text = fechaSeleccionada;
        }

        private void comboEmpleados_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ctrl.fillSelectEmp(comboEmpleados.SelectedItem.ToString(), txt_id_empleado);
        }
    }
}
