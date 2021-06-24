using System;
using System.Collections;
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
    public class PaymentController : ControllerBase
    {
        public DbConnector dbConnector = new DbConnector();

        // GET: api/<PaymentController>
        [HttpGet]
        public IActionResult Get()
        {

            return Ok(dbConnector.GetAllData<Payment>());

        }

        // GET api/<PaymentController>/5
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            return Ok(dbConnector.GetBy<Payment>("PaymentId", id));
        }



        List<dynamic> list = new List<dynamic>();
        // POST api/<PaymentController>/Dishes
        [HttpPost("Dishes")]
        public IActionResult Post(string tableId,string voucherId)
        {
            var insert = dbConnector.InsertPayment(tableId,voucherId);
            var dishes = new { Dishes = dbConnector.GetDishesByTableId(tableId) };
            var payment = new { Payment = dbConnector.GetPaymentByTableId(tableId) };

            list.Add(payment);
            list.Add(dishes);

            return Ok(list);
        }
        // GET api/Payment/table/1
        [HttpGet("Table/{tableId}")]
        public IActionResult PostPayment(string tableId)
        {
            var payment = dbConnector.GetPaymentByTableId(tableId);

            return Ok(payment);
        }



        // PUT api/<PaymentController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<PaymentController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
