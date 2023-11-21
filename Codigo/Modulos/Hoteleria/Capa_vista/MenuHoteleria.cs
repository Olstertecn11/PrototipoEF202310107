using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
// using Seguridad_Controlador;  // Agregar cuando se vincule la DLL de seguridad 

namespace Vista_PrototipoMenu
{
    public partial class MenuHoteleria : Form
    {
        Form currentForm = null;
        public MenuHoteleria()
        {
            InitializeComponent();
        }

        public void showForm(Form newForm)
        {
            if (currentForm != null)
            {
                currentForm.Close();
            }
            newForm.MdiParent = this;
            currentForm = newForm;
            newForm.Show();
        }

        //Validaciones que si son visibles los panales los oculta
        private void hideSubMenu()
        {

            if (panelTranportes.Visible == true)
                panelTranportes.Visible = false;
            if (PanelAuditoria.Visible == true)
                PanelAuditoria.Visible = false;
            if (panelseguridad.Visible == true)
                panelseguridad.Visible = false;
            if (panelayuda.Visible == true)
                panelayuda.Visible = false;
        }
        //Método que valida si el submenu no es visible oculta el submenu
        private void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hideSubMenu();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = false;
        }
        //Método que muestra el panel indicado
        private void btnmanteniminetos_Click(object sender, EventArgs e)
        {
            showSubMenu(panelTranportes);
        }
        //Método que muestra el panel indicado
        private void btnProcesos_Click(object sender, EventArgs e)
        {
            showSubMenu(PanelAuditoria);
        }
        //Método que muestra el panel indicado
        private void btnSeguridad_Click(object sender, EventArgs e)
        {
            showSubMenu(panelayuda);
        }
        //Método que muestra el panel indicado
        private void btnReportes_Click(object sender, EventArgs e)
        {
            showSubMenu(panelseguridad);
        }
        //Método que muestra el formulario indicado
        //Método que muestra el formulario indicado
        private void btnaplicaciones_Click(object sender, EventArgs e)
        {
            this.showForm(new frmTipoHabitacion());
            hideSubMenu();
        }
        //Método que muestra el formulario indicado

        private void btninicio_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void btnsalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void btnayuda_Click(object sender, EventArgs e)
        {
            Help.ShowHelp(this, "umg.chm");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.showForm(new frmGestionHuespedes());
            hideSubMenu();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.showForm(new frmGestionSalon());
            hideSubMenu();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.showForm(new frmGestionHabitacion());
            hideSubMenu();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.showForm(new frmReservaHabitacion());
            hideSubMenu();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.showForm(new frmEvaluacion());
            hideSubMenu();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.showForm(new frmChequeo());
            hideSubMenu();
        }
    }
}
