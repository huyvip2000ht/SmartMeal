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
    public class OrdersController : ControllerBase
    {
        public DbConnector dbConnector = new DbConnector();

        // GET: api/<OrdersController>
        [HttpGet]
        public IActionResult Get()
        {

            return Ok(dbConnector.GetAllData<Orders>());

        }

        // GET api/<OrdersController>/5
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            return Ok(dbConnector.GetBy<Account>("OrderId", id));
        }

        // POST api/<OrdersController>
        [HttpPost]
        public IActionResult Post(Orders order)
        {
            int affect = dbConnector.Insert<Orders>(order);
            return Ok(affect);


        }

        // PUT api/<OrdersController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<OrdersController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
