using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo_PrototipoMenu.templates
{
    public class TipoHabitacion
    {
        public int thab_id { get; set; }
        public string thab_nombre { get; set; }
        public string thab_descripcion { get; set; }
        public double thab_precio { get; set; }
        public int thab_capacidad { get; set; }

        public TipoHabitacion(int id, string nombre, string descripcion, double precio, int capacidad)
        {
            thab_id = id;
            thab_nombre = nombre;
            thab_descripcion = descripcion;
            thab_precio = precio;
            thab_capacidad = capacidad;
        }
        public TipoHabitacion()
        {

        }
    }
}
