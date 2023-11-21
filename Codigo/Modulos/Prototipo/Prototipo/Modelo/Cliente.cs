using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo_PrototipoMenu
{
    public class Cliente
    {
        public int id;
        public string name;
        public string nit;

        public Cliente(int id, string name, string nit)
        {
            this.id = id;
            this.name = name;
            this.nit = nit;
        }
    }
}
