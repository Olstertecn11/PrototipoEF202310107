using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo_PrototipoMenu
{
    public class Factura
    {
        public int id;
        public int idCliente;
        public double monto;
        public double subTotal;
        public double impuesto;

        public Factura(int id, int idCliente, double monto, double subTotal, double impuesto)
        {
            this.id = id;
            this.idCliente = idCliente;
            this.monto = monto;
            this.subTotal = subTotal;
            this.impuesto = impuesto;
        }
    }
}
