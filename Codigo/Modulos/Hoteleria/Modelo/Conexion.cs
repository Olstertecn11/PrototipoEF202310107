using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Odbc;

namespace Modelo_PrototipoMenu
{
    public class Conexion
    {
        public OdbcConnection connection()
        {
            OdbcConnection conn = new OdbcConnection("Dsn=HotelSConexion");
            try
            {
                conn.Open();
            }
            catch (OdbcException)
            {
                Console.WriteLine("Error en la conexion");
            }
            return conn;
        }


        public void disconnect(OdbcConnection conn)
        {
            try
            {
                conn.Close();
            }
            catch (OdbcException)
            {
                Console.WriteLine("Error al desconectar");
            }
        }
    }
}
