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
    public class VoucherController : ControllerBase
    {
        public DbConnector dbConnector = new DbConnector();

        // GET: api/<VoucherController>
        [HttpGet]
        public IActionResult Get()
        {

            return Ok(dbConnector.GetAllData<Voucher>());

        }

        // GET api/<VoucherController>/5
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            return Ok(dbConnector.GetBy<Voucher>("VoucherId", id));
        }


        // POST api/<VoucherController>
        [HttpPost]
        public IActionResult Post(Voucher voucher)
        {
            int affect = dbConnector.Insert<Voucher>(voucher);
            return Ok(affect);


        }

        // PUT api/<VoucherController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<VoucherController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
