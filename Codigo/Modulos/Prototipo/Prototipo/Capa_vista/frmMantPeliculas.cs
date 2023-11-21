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
    public partial class frmMantPeliculas : Form
    {
        Seguridad_Controlador.Controlador cn = new Seguridad_Controlador.Controlador();
        public frmMantPeliculas()
        {
            InitializeComponent();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "7001";
            dataGrid.actual = this;
            dataGrid.tabla = this.dataGridView1;
            TextBox[] Grupotextbox = { txtId, txtNombre, txtClasificacion, txtGenero, txtSubtitulado, txtIdioma, txtPrecio };
            TextBox[] Idtextbox = { txtId, txtNombre };
            dataGrid.textbox = Grupotextbox;
            dataGrid.textboxi = Idtextbox;
            dataGrid.cargar(dataGridView1, Grupotextbox, cn.getNombreBd());

        }
    }
}
