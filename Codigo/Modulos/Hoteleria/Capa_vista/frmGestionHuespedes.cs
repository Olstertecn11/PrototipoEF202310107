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
    public partial class frmGestionHuespedes : Form
    {

        Seguridad_Controlador.Controlador cn = new Seguridad_Controlador.Controlador();
        public frmGestionHuespedes()
        {
            InitializeComponent();
            NavegadorVista.Navegador.idApp = "7004";
            _navegador.actual = this;
            _navegador.tabla = dataGridView1;
            TextBox[] Grupotextbox = { txt_id, txt_nombre, txt_apellido, txt_correo, txt_telefono, txt_nit };
            TextBox[] Idtextbox = { txt_id, txt_nombre };
            _navegador.textbox = Grupotextbox;
            _navegador.textboxi = Idtextbox;
            _navegador.cargar(dataGridView1, Grupotextbox, cn.getNombreBd());
        }
    }
}
