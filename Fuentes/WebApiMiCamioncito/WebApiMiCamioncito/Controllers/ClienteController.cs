using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DATOS;
using WebApiMiCamioncito.Clases;
//using Microsoft.AspNetCore.Cors;
using System.Web.Http.Cors;


namespace WebApiMiCamioncito.Controllers
{
    public class ClienteController : ApiController
    {
        [EnableCors(origins: "https://localhost:44337", headers: "*", methods: "*")]
        // GET: api/Cliente
        public IEnumerable<Cliente> Get()
        {
            using (MiCamioncito2Entities db = new MiCamioncito2Entities()) 
            {
                IEnumerable<Cliente> Clt = db.Database.SqlQuery<Cliente>("exec SP_MC2_LISTADO_CLIENTES").ToList();
                return Clt;
            }
        }

        // GET: api/Cliente/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Cliente
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Cliente/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Cliente/5
        public void Delete(int id)
        {
        }
    }
}
