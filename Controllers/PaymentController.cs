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

            return Ok(dbConnector.GetAllPayments());

        }

        // GET api/<PaymentController>/5
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            return Ok(dbConnector.GetBy<Payment>("PaymentId", id));
        }

        [HttpGet("getByDate/{fromDate}/{toDate}")]
        public IActionResult GetByDate(string fromDate, string toDate)
        {
            return Ok(dbConnector.GetPaymentsByDate(fromDate, toDate));
        }



        List<dynamic> list = new List<dynamic>();
        // POST api/<PaymentController>/Dishes
        [HttpPost("Dishes")]
        public IActionResult Post(int tableId,string voucherId)
        {
            var insert = dbConnector.InsertPayment(tableId,voucherId);
            var dishes = new { Dishes = dbConnector.GetDishesByTableId(tableId) };
            var payment = new { Payment = dbConnector.GetPaymentByTableId(tableId) };

            list.Add(payment);
            list.Add(dishes);

            return Ok(list);
        }

        [HttpPost("{tableId}/{cashierId}")]
        public IActionResult AddPayment(int tableId, string cashierId)
        {
            //  var insert = dbConnector.InsertPayment(tableId, voucherId);
            var insert = dbConnector.InsertPayment1(tableId, cashierId);



            var payment = new { Payment = dbConnector.GetPaymentByTableId(tableId) };
           // var dishes = new { Dishes = dbConnector.GetAllDishesDoneByTableId(tableId) };

            list.Add(payment);
           // list.Add(dishes);

            return Ok(list);
        }


        // GET api/Payment/table/1
        [HttpGet("Table/{tableId}")]
        public IActionResult PostPayment(int tableId)
        {
            var payment = dbConnector.GetPaymentByTableId(tableId);

            return Ok(payment);
        }



        // PUT api/<PaymentController>/5
        [HttpPut("isPaid/{paymentId}")]
        public IActionResult Put(string paymentId)
        {
            return Ok(dbConnector.Update<Table>("Status", "1", "paymentId", paymentId));

        }

        // DELETE api/<PaymentController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
