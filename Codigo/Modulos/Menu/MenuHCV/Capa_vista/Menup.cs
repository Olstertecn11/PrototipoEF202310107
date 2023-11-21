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
using Vista_Seguridad;
using Vista_PrototipoMenu;

namespace MenuHCV
{
    public partial class Menup : Form
    {
        Controlador cn = new Controlador();

        public Menup()
        {
            InitializeComponent();

            Button[] apps = { btnseguridad, btncompras, btnVentas, btnInventario, btnBancos, btnNominas };
            cn.deshabilitarApps(apps);

            cn.getAccesoApp(1000, apps[0]);  //Modulo Seguridad
            cn.getAccesoApp(2000, apps[1]);  //Modulo Compras y Cxp
            cn.getAccesoApp(3000, apps[2]);  //Modulo Ventas y Cxc
            cn.getAccesoApp(7000, apps[3]);  //Modulo Inventarios
            cn.getAccesoApp(5000, apps[4]);  //Modulo Bancos
            cn.getAccesoApp(6000, apps[5]);  //Modulo Nominas



        }
        //Método que ingresa un valor a la bitacora de acuerdo el módulo
        public void btnlogout_Click(object sender, EventArgs e)
        {
            MenuSeguridad b = new MenuSeguridad();
            b.Show();
            cn.setBtitacora("1000", "Ingreso Seguridad");
            //this.Close();
        }

        public void btnVentas_Click(object sender, EventArgs e)
        {
            cn.setBtitacora("2000", "Ingreso Informes");
        }
        private void btnLogout_Click_1(object sender, EventArgs e)
        {
            Login b = new Login();
            cn.setBtitacora("999", "Cerro Sesion");
            b.Show();
            this.Close();
        }
        private void btncompras_Click(object sender, EventArgs e)
        {
            cn.setBtitacora("3000", "Ingreso Procesos");
        }

        private void btnInventario_Click(object sender, EventArgs e)
        {
            cn.setBtitacora("4000", "Ingreso Catalogos");
            Vista_PrototipoMenu.MenuPrototipo frm = new Vista_PrototipoMenu.MenuPrototipo();
            frm.Show();
        }

        private void btnBancos_Click(object sender, EventArgs e)
        {
            cn.setBtitacora("5000", "Ingreso Herramientas");
        }

        private void btnNominas_Click_1(object sender, EventArgs e)
        {
            cn.setBtitacora("6000", "Ingreso Ayuda");
        }

        private void btnHoteleria_Click(object sender, EventArgs e)
        {

        }

        private void btnCxC_Click(object sender, EventArgs e)
        {

        }

        private void btnCxP_Click(object sender, EventArgs e)
        {

        }

        private void btnPrototipo_Click(object sender, EventArgs e)
        {
            cn.setBtitacora("8000", "Ingreso Prototipo");
        }

    }
}
