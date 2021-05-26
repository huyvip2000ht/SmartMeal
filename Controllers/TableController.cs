using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SmartMeal.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SmartMeal.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TableController : ControllerBase
    {
        public DbConnector dbConnector = new DbConnector();

        // GET: api/<TableController>
        [HttpGet]
        public IActionResult Get()
        {

            return Ok(dbConnector.GetAllData<Table>());

        }

        // GET api/<TableController>/5
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            return Ok(dbConnector.GetBy<Table>("TableId", id));
        }

        // POST api/<TableController>
        [HttpPost]
        public IActionResult Post(Table table)
        {
            int affect = dbConnector.Insert<Table>(table);
            return Ok(affect);


        }

        // PUT api/<TableController>/5
        [HttpPut("{id}")]
        public IActionResult Put(string id,[FromBody] Table table)
        {



            return Ok(dbConnector.Update<Table>("status",table.Status.ToString(),"tableId", id));
        }

        // DELETE api/<TableController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
