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
    public partial class frmGestionSalon : Form
    {
        Seguridad_Controlador.Controlador cn = new Seguridad_Controlador.Controlador();
        public frmGestionSalon()
        {
            InitializeComponent();
            NavegadorVista.Navegador.idApp = "7003";
            navegador1.actual = this;
            navegador1.tabla = dataGridView1;
            TextBox[] Grupotextbox = { txt_id, txt_nombre, txt_desc, txt_capacidad, txt_precio };
            TextBox[] Idtextbox = { txt_id, txt_nombre };
            navegador1.textbox = Grupotextbox;
            navegador1.textboxi = Idtextbox;
            navegador1.cargar(dataGridView1, Grupotextbox, cn.getNombreBd());

        }
    }
}
