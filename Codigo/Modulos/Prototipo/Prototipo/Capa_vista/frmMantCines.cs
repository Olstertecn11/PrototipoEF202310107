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
    public partial class _navegador : Form
    {

        Seguridad_Controlador.Controlador cn = new Seguridad_Controlador.Controlador();
        public _navegador()
        {
            InitializeComponent();
        }



        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "7001";
            navegador1.actual = this;
            navegador1.tabla = this.dataGridView1;
            TextBox[] Grupotextbox = { txtId, txtNombre, txtDireccion };
            TextBox[] Idtextbox = { txtId, txtNombre };
            navegador1.textbox = Grupotextbox;
            navegador1.textboxi = Idtextbox;
            navegador1.cargar(dataGridView1, Grupotextbox, cn.getNombreBd());
        }
    }
}
