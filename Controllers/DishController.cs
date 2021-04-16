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
    public class DishController : ControllerBase
    {
        public DbConnector dbConnector = new DbConnector();

        // GET: api/<DishController>
        [HttpGet]
        public IActionResult Get()
        {

            return Ok(dbConnector.GetAllData<Dish>());

        }

        // GET api/<DishController>/5
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            return Ok(dbConnector.GetBy<Account>("DishId", id));
        }

        // POST api/<DishController>
        [HttpPost]
        public IActionResult Post(Dish dish)
        {
            int affect = dbConnector.Insert<Dish>(dish);
            return Ok(affect);


        }

        // PUT api/<DishController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<DishController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
