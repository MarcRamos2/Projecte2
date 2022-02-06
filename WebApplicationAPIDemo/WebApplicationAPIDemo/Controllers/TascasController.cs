using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplicationAPIDemo.DAL.Service;
using WebApplicationAPIDemo.Entity;

namespace WebAplicationAPIRestDemo.Controllers
{
    [EnableCors]
    [Route("api/tasca")]
    [ApiController]
    public class TascasController : ControllerBase
    {

        [HttpGet]
        public List<Tasca> Get()
        {
            TascaService objUserService = new TascaService();
            return objUserService.GetALL();

        }

        [HttpGet("{estat}")]
        public Tasca Get(string estat)
        {
            TascaService objUserService = new TascaService();
            return objUserService.GetByEstat(estat);
        }


        // Afagir Tasca
        [HttpPost]
        public void Post([FromBody] Tasca tasca)
        {
            TascaService objUserService = new TascaService();
            objUserService.Add(tasca);
        }


        // Uptdate Tasca
        [HttpPut("{Codi}")]
        public void Put(int Codi, [FromBody] Tasca tasca)
        {
            TascaService objUserService = new TascaService();
            objUserService.Update(tasca);
        }

        // Eliminar Tasca
        [HttpDelete("{Codi}")]
        public void Delete(int Codi)
        {
            TascaService objUserService = new TascaService();
            objUserService.Delete(Codi);
        }
    }
}
