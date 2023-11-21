using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo_PrototipoMenu.templates
{
    public class Empleado
    {
        public int EmpId { get; set; }
        public string EmpNombre { get; set; }
        public string EmpApellido { get; set; }
        public string EmpCorreo { get; set; }
        public string EmpTelefono { get; set; }
        public string EmpNit { get; set; }

        // Método constructor
        public Empleado() { }
        public Empleado(int empId, string empNombre, string empApellido, string empCorreo, string empTelefono, string empNit)
        {
            EmpId = empId;
            EmpNombre = empNombre;
            EmpApellido = empApellido;
            EmpCorreo = empCorreo;
            EmpTelefono = empTelefono;
            EmpNit = empNit;
        }
    }
}
