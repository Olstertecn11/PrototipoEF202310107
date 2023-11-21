using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Seguridad_Controlador;


namespace Vista_PrototipoMenu
{
    public partial class frmTipoHabitacion : Form
    {
        Seguridad_Controlador.Controlador cn;
        public frmTipoHabitacion()
        {
            this.cn = new Seguridad_Controlador.Controlador();
            InitializeComponent();
        }

        private void _navegador_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "7001";
            _navegador.actual = this;
            _navegador.tabla = dataGridView1;
            TextBox[] Grupotextbox = { txt_id, txt_nombre, txt_descripcion, txt_precio, txt_capacidad };
            TextBox[] Idtextbox = { txt_id, txt_nombre };
            _navegador.textbox = Grupotextbox;
            _navegador.textboxi = Idtextbox;
            _navegador.cargar(dataGridView1, Grupotextbox, cn.getNombreBd());
        }

        private void frmTipoHabitacion_Load(object sender, EventArgs e)
        {

        }
    }
}
