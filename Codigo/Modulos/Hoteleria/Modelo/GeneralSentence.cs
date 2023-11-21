using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo_PrototipoMenu.templates;
using System.Data.Odbc;
using System.Windows.Forms;

namespace Modelo_PrototipoMenu
{
    public class GeneralSentence : Conexion
    {
        public Conexion conn;
        public GeneralSentence()
        {
            this.conn = new Conexion();
        }

        public List<TipoHabitacion> getTiposHabitacion()
        {
            List<TipoHabitacion> listaResultados = new List<TipoHabitacion>();
            try
            {
                string tabla = "tbl_tipohabitacion";
                string query = "SELECT * FROM " + tabla;
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());
                OdbcDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    if (!reader.IsDBNull(0) && !reader.IsDBNull(1) && !reader.IsDBNull(2) && !reader.IsDBNull(3) && !reader.IsDBNull(4))
                    {
                        int id = Convert.ToInt32(reader["thab_id"]);
                        string nombre = reader["thab_nombre"].ToString();
                        string descripcion = reader["thab_descripcion"].ToString();
                        double precio = Convert.ToDouble(reader["thab_precio"]);
                        int capacidad = Convert.ToInt32(reader["thab_capacidad"]);

                        TipoHabitacion tipoHabitacion = new TipoHabitacion(id, nombre, descripcion, precio, capacidad);
                        listaResultados.Add(tipoHabitacion);
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return listaResultados;
        }

        public List<Habitacion> getHabitaciones()
        {
            List<Habitacion> listaHabitaciones = new List<Habitacion>();
            try
            {
                string tabla = "tbl_habitacion";
                string query = "SELECT * FROM " + tabla;
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());
                OdbcDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Habitacion habitacion = new Habitacion();
                    habitacion.id = Convert.ToInt32(reader["hab_id"]);
                    habitacion.numero = Convert.ToInt32(reader["hab_numero"]);
                    habitacion.tipo = Convert.ToInt32(reader["hab_tipo"]);
                    habitacion.estado = Convert.ToInt32(reader["hab_estado"]);
                    listaHabitaciones.Add(habitacion);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return listaHabitaciones;
        }

        public List<Empleado> GetEmpleados()
        {
            List<Empleado> listaEmpleados = new List<Empleado>();
            try
            {
                string tabla = "tbl_empleado";
                string query = "SELECT * FROM " + tabla;
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());
                OdbcDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Empleado empleado = new Empleado();
                    empleado.EmpId = Convert.ToInt32(reader["emp_id"]);
                    empleado.EmpNombre = reader["emp_nombre"].ToString();
                    empleado.EmpApellido = reader["emp_apellido"].ToString();
                    empleado.EmpCorreo = reader["emp_correo"].ToString();
                    empleado.EmpTelefono = reader["emp_telefono"].ToString();
                    empleado.EmpNit = reader["emp_nit"].ToString();
                    listaEmpleados.Add(empleado);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return listaEmpleados;
        }

        public List<Cliente> GetClientes()
        {
            List<Cliente> listaClientes = new List<Cliente>();
            try
            {
                string tabla = "tbl_cliente";
                string query = "SELECT * FROM " + tabla;
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());
                OdbcDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int cliId = Convert.ToInt32(reader["cli_id"]);
                    string cliNombre = reader["cli_nombre"].ToString();
                    string cliApellido = reader["cli_apellido"].ToString();
                    string cliCorreo = reader["cli_correo"].ToString();
                    string cliTelefono = reader["cli_telefono"].ToString();
                    string cliNit = reader["cli_nit"].ToString();

                    Cliente cliente = new Cliente(cliId, cliNombre, cliApellido, cliCorreo, cliTelefono, cliNit);
                    listaClientes.Add(cliente);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener clientes: " + ex.Message);
            }
            return listaClientes;
        }
        public List<Reservacion> ObtenerReservacionesEntreFechas(DateTime fechaInicio, DateTime fechaFin)
        {
            MessageBox.Show(fechaInicio.ToString("yyyy-MM-dd"));
            List<Reservacion> reservaciones = new List<Reservacion>();
            try
            {
                /*string query = "SELECT * FROM tbl_Reservacion " +
                               "WHERE (res_fecha >= ? AND res_fecha <= ?) OR (res_fecha_salida >= ? AND res_fecha_salida <= ?)";
                */
                string sql = "SELECT * FROM tbl_Reservacion WHERE(res_fecha BETWEEN ? AND ?) OR(res_fecha_s BETWEEN ? AND ?)";
                OdbcCommand command = new OdbcCommand(sql, this.conn.connection());

                command.Parameters.AddWithValue("@fechaInicio", fechaInicio);
                command.Parameters.AddWithValue("@fechaFin", fechaFin);
                command.Parameters.AddWithValue("@fechaInicio", fechaInicio);
                command.Parameters.AddWithValue("@fechaFin", fechaFin);

                OdbcDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int res_id = Convert.ToInt32(reader["res_id"]);
                    int res_id_habitacion = Convert.ToInt32(reader["res_id_habitacion"]);
                    int res_id_cliente = Convert.ToInt32(reader["res_id_cliente"]);
                    DateTime res_fecha = Convert.ToDateTime(reader["res_fecha"]);
                    int res_id_empleado = Convert.ToInt32(reader["res_id_empleado"]);
                    int estado = Convert.ToInt32(reader["estado"]);

                    Reservacion reservacion = new Reservacion(res_id, res_id_habitacion, res_id_cliente, res_fecha, res_id_empleado, estado);
                    reservaciones.Add(reservacion);
                }

                reader.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

            return reservaciones;
        }


        public List<Reservacion> ObtenerTodasLasReservaciones()
        {
            List<Reservacion> reservaciones = new List<Reservacion>();
            try
            {
                string query = "SELECT * FROM tbl_reservacion";
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());
                OdbcDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int res_id = Convert.ToInt32(reader["res_id"]);
                    int res_id_habitacion = Convert.ToInt32(reader["res_id_habitacion"]);
                    int res_id_cliente = Convert.ToInt32(reader["res_id_cliente"]);
                    DateTime res_fecha = Convert.ToDateTime(reader["res_fecha"]);
                    int res_id_empleado = Convert.ToInt32(reader["res_id_empleado"]);
                    int estado = Convert.ToInt32(reader["estado"]);

                    Reservacion reservacion = new Reservacion(res_id, res_id_habitacion, res_id_cliente, res_fecha, res_id_empleado, estado);
                    reservaciones.Add(reservacion);
                }

                reader.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

            return reservaciones;
        }

        public int ObtenerUltimoIdDeEvaluacion()
        {
            int ultimoId = 0;
            try
            {
                string query = "SELECT eva_id FROM tbl_evaluacion ORDER BY eva_id DESC LIMIT 1";
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());
                OdbcDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    ultimoId = Convert.ToInt32(reader["id"]);
                }

                reader.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

            return ultimoId;
        }


        public void InsertarEvaluacion(DateTime fecha, string descripcion, int estadoCalidad, int idEmpleado)
        {
            try
            {
                string query = "INSERT INTO tbl_Evaluacion (eva_fecha, eva_descripcion, eva_estado_calidad, eva_id_empleado) " +
                               "VALUES (?, ?, ?, ?)";
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());

                command.Parameters.AddWithValue("@fecha", fecha);
                command.Parameters.AddWithValue("@descripcion", descripcion);
                command.Parameters.AddWithValue("@estadoCalidad", estadoCalidad);
                command.Parameters.AddWithValue("@idEmpleado", idEmpleado);

                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public void InsertarEntrada(int idEvaluacion, int idCliente, int idHabitacion)
        {
            try
            {
                string query = "INSERT INTO tbl_Entrada (in_id_evaluacion, in_id_cliente, in_id_habitacion) " +
                               "VALUES (?, ?, ?)";
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());

                command.Parameters.AddWithValue("@idEvaluacion", idEvaluacion);
                command.Parameters.AddWithValue("@idCliente", idCliente);
                command.Parameters.AddWithValue("@idHabitacion", idHabitacion);

                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public void InsertarSalida(int idEvaluacion, int idCliente, int idHabitacion)
        {
            try
            {
                string query = "INSERT INTO tbl_Salida (in_id_evaluacion, in_id_cliente, in_id_habitacion) " +
                               "VALUES (?, ?, ?)";
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());

                command.Parameters.AddWithValue("@idEvaluacion", idEvaluacion);
                command.Parameters.AddWithValue("@idCliente", idCliente);
                command.Parameters.AddWithValue("@idHabitacion", idHabitacion);

                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public void CambiarEstadoReservacion(int resId, int estado)
        {
            try
            {
                string query = "UPDATE tbl_Reservacion SET estado = ? WHERE res_id = ?";
                OdbcCommand command = new OdbcCommand(query, this.conn.connection());

                command.Parameters.AddWithValue("@estado", estado);
                command.Parameters.AddWithValue("@resId", resId);

                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }









    }
}
