using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApiMiCamioncito.Clases
{
    public class Cliente
    {
        public int ID { get; set; }
        public string NOMBRE { get; set; }
        public string TIPO { get; set; }
        public int PORCENTAJE { get; set; }
    }
}