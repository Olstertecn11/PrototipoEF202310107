using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo_PrototipoMenu.templates
{
    public class Cliente
    {
        public int CliId { get; set; }
        public string CliNombre { get; set; }
        public string CliApellido { get; set; }
        public string CliCorreo { get; set; }
        public string CliTelefono { get; set; }
        public string CliNit { get; set; }

        // Método constructor
        public Cliente() { }
        public Cliente(int cliId, string cliNombre, string cliApellido, string cliCorreo, string cliTelefono, string cliNit)
        {
            CliId = cliId;
            CliNombre = cliNombre;
            CliApellido = cliApellido;
            CliCorreo = cliCorreo;
            CliTelefono = cliTelefono;
            CliNit = cliNit;
        }
    }
}
