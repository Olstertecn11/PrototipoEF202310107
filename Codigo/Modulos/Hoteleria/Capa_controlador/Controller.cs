using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo_PrototipoMenu;
using Modelo_PrototipoMenu.templates;
using System.Windows.Forms;

namespace Controlador_PrototipoMenu
{
    public class Controller
    {
        public List<TipoHabitacion> thabs = new List<TipoHabitacion>();
        public List<Habitacion> habitaciones = new List<Habitacion>();
        public List<Empleado> empleados = new List<Empleado>();
        public List<Cliente> clientes = new List<Cliente>();
        GeneralSentence sn = new GeneralSentence();
        public Controller()
        {
            this.thabs = sn.getTiposHabitacion();
            habitaciones = sn.getHabitaciones();
            this.empleados = sn.GetEmpleados();
            this.clientes = sn.GetClientes();
        }

        public List<string> getTypes(ComboBox cmb)
        {
            List<string> types = new List<string>();
            foreach (TipoHabitacion th in thabs)
            {
                cmb.Items.Add(th.thab_nombre);
            }
            return types;
        }

        public void fillEmpleados(ComboBox cmb)
        {
            foreach (Empleado emp in empleados)
            {
                cmb.Items.Add(emp.EmpNombre);
            }
        }

        public void fillSelectEmp(string selected, TextBox txt)
        {
            int id_seleccionado = 0;
            foreach (Empleado th in empleados)
            {
                if (th.EmpNombre.Equals(selected))
                {
                    id_seleccionado = th.EmpId;
                }
            }
            txt.Text = id_seleccionado.ToString();
        }

        public int getClientID(string reference)
        {
            foreach (Cliente cl in clientes)
            {
                if (cl.CliNombre.Equals(reference))
                {
                    return cl.CliId;
                }
            }
            return -1;
        }




        public void fillHabitaciones(string selected, TextBox txt)
        {
            int id_seleccionado = 0;
            foreach (TipoHabitacion th in thabs)
            {
                if (th.thab_nombre.Equals(selected))
                {
                    id_seleccionado = th.thab_id;
                }
            }
            txt.Text = id_seleccionado.ToString();
        }

        public void fillComboHabitaciones(ComboBox cmb, string selected, Label lbl)
        {

            int id_seleccionado = 0;
            foreach (TipoHabitacion th in thabs)
            {
                if (th.thab_nombre.Equals(selected))
                {
                    lbl.Text = "Q." + th.thab_precio.ToString() + ".00";
                    id_seleccionado = th.thab_id;
                }
            }

            foreach (Habitacion _h in habitaciones)
            {
                if (_h.tipo == id_seleccionado && _h.estado == 0)
                {
                    cmb.Items.Add(_h.numero.ToString());
                }
            }
            this.habitaciones = sn.getHabitaciones();
        }

        public void fillHabitacionesByDate(ComboBox cmb, DateTimePicker d1, DateTimePicker d2, Label lbl, string selected)
        {
            List<Reservacion> reservaciones = sn.ObtenerReservacionesEntreFechas(d1.Value, d2.Value);
            if (reservaciones.Count == 0)
            {
                this.fillComboHabitaciones(cmb, selected, lbl);
            }
            else
            {

                List<Habitacion> habitaciones_desocupadas = new List<Habitacion>();
                foreach (Habitacion hab in habitaciones)
                {
                    foreach (Reservacion res in reservaciones)
                    {
                        if (!res.Res_id_habitacion.Equals(hab.id))
                        {
                            habitaciones_desocupadas.Add(hab);
                        }
                    }
                }
                habitaciones = habitaciones_desocupadas;
                this.fillComboHabitaciones(cmb, selected, lbl);
            }
        }


        public void fillComboReservacion(ComboBox cmb, int id_client)
        {
            List<Reservacion> rs = sn.ObtenerTodasLasReservaciones();
            List<Cliente> _clientes = sn.GetClientes();
            foreach (Reservacion res in rs)
            {
                foreach (Cliente cl in _clientes)
                {
                    if (cl.CliId.Equals(res.Res_id_cliente) && cl.CliId.Equals(id_client))
                    {
                        if (res.estado != 3)
                        {
                            cmb.Items.Add(res.Res_fecha);
                        }
                    }
                }
            }
        }

        public int getIdResSelected(int idClient)
        {
            List<Reservacion> rs = sn.ObtenerTodasLasReservaciones();
            foreach (Reservacion r in rs)
            {
                if (r.Res_id_cliente.Equals(idClient)) return r.Res_id;
            }
            return -1;
        }

        public int getHabIdByRes(int resId)
        {
            List<Reservacion> rs = sn.ObtenerTodasLasReservaciones();
            List<Habitacion> _habs = sn.getHabitaciones();
            foreach (Reservacion r in rs)
            {
                foreach (Habitacion h in _habs)
                {
                    if (h.id.Equals(r.Res_id_habitacion) && r.Res_id.Equals(resId)) return h.id;
                }
            }
            return -1;
        }

        public int getIdEmpSelectedByRes(int resId)
        {

            List<Reservacion> rs = sn.ObtenerTodasLasReservaciones();
            List<Empleado> emps = sn.GetEmpleados();
            foreach (Empleado em in emps)
            {
                foreach (Reservacion r in rs)
                {
                    if (r.Res_id_empleado.Equals(em.EmpId) && r.Res_id.Equals(resId))
                    {
                        return em.EmpId;
                    }
                }
            }
            return -1;
        }
        public int getIdEmpSelected(string reference)
        {
            List<Empleado> emps = sn.GetEmpleados();
            foreach (Empleado em in emps)
            {
                if (reference.Equals(em.EmpNombre)) return em.EmpId;
            }
            return -1;
        }


        public void saveEva(DateTime fecha, string descripcion, int estadoCalidad, int idEmpleado)
        {
            this.sn.InsertarEvaluacion(fecha, descripcion, estadoCalidad, idEmpleado);
        }

        public void saveEntrada(int idEvaluacion, int idCliente, int idHabitacion)
        {
            this.sn.InsertarEntrada(idEvaluacion, idCliente, idHabitacion);
        }

        public void saveSalida(int idEvaluacion, int idCliente, int idHabitacion)
        {
            this.sn.InsertarSalida(idEvaluacion, idCliente, idHabitacion);
        }

        public int lastEvaId()
        {
            return this.sn.ObtenerUltimoIdDeEvaluacion();
        }

        public void changeReservStatus(int idRef, int estado)
        {
            this.sn.CambiarEstadoReservacion(idRef, estado);
        }





    }
}
