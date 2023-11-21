using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo_PrototipoMenu.templates
{
    public class Reservacion
    {
        public int Res_id { get; set; }
        public int Res_id_habitacion { get; set; }
        public int Res_id_cliente { get; set; }
        public DateTime Res_fecha { get; set; }
        public int Res_id_empleado { get; set; }
        public int estado;

        public Reservacion(int res_id, int res_id_habitacion, int res_id_cliente, DateTime res_fecha, int res_id_empleado, int estado)
        {
            this.Res_id = res_id;
            this.Res_id_habitacion = res_id_habitacion;
            this.Res_id_cliente = res_id_cliente;
            this.Res_fecha = res_fecha;
            this.Res_id_empleado = res_id_empleado;
            this.estado = estado;
        }
    }
}
