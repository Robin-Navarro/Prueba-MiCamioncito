//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DATOS
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tipo_Empleado
    {
        public Tipo_Empleado()
        {
            this.Empleado = new HashSet<Empleado>();
        }
    
        public int TEMP_Id { get; set; }
        public string TEMP_Nombre { get; set; }
    
        public virtual ICollection<Empleado> Empleado { get; set; }
    }
}
