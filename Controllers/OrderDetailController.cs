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
    public class OrderDetailController : ControllerBase
    {
        public DbConnector dbConnector = new DbConnector();

        // GET: api/<OrderDetailController>
        [HttpGet]
        public IActionResult Get()
        {

            return Ok(dbConnector.GetAllData<OrderDetail>());

        }

        // GET api/<OrderDetailController>/5
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            return Ok(dbConnector.GetBy<OrderDetail>("OrderDetailId", id));
        }


        // POST api/<OrderDetailController>
        [HttpPost]
        public IActionResult Post(List<OrderDetail> orderDetails)
        {

            int sum = 0;
           foreach(OrderDetail orderDetail in orderDetails)
            {
       
                int affect = dbConnector.Insert<OrderDetail>(orderDetail);
                sum += affect; 
            }

            return Ok(sum);
        }

        // POST api/<OrderDetailController>/Table
        [HttpPost("Table")]
        public IActionResult PostTable(List<OrderDetailTable> orderDetailTables)
        {

            int sum = 0;
            foreach (OrderDetailTable orderDetailTable in orderDetailTables)
            {

                int affect = dbConnector.InsertOrderDetailByTableId(orderDetailTable);
                sum += affect;
            }

            return Ok(sum);
        }


        // PUT api/<OrderDetailController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<OrderDetailController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
