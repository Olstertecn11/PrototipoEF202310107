using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo_PrototipoMenu.templates
{
    public class Habitacion
    {
        public int id;
        public int numero;
        public int tipo;
        public int estado;

        public Habitacion(int id, int numero, int tipo, int estado)
        {
            this.id = id;
            this.numero = numero;
            this.tipo = tipo;
            this.estado = estado;
        }

        public Habitacion()
        {

        }
    }
}
