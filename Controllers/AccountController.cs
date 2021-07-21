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
    public class AccountController : ControllerBase
    {
        public DbConnector dbConnector = new DbConnector();
        // GET: api/<ValuesController>
        [HttpGet]
        public IActionResult Get()
        {
            
            return Ok(dbConnector.GetAllData<Account>());
            
        }



        
        // GET api/<ValuesController>/5
        [HttpGet("{username}")]
        public IActionResult Get(string username)
        {
            return Ok(dbConnector.GetBy<Account>("username",username));
        }







        // POST api/<ValuesController>
        [HttpPost]
        public IActionResult Post(Account account)
        {
            account.Password = BCrypt.Net.BCrypt.HashPassword(account.Password);

            int affect = dbConnector.Insert<Account>(account);
            return Ok(affect);
        }


        [HttpPost("login")]
        public IActionResult PostLogin(Account account)
        {
            bool affect = dbConnector.CheckLogin(account.Username,account.Password);
            return Ok(affect);
        }




        // PUT api/<ValuesController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {

        }

        // DELETE api/<ValuesController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {

        }
    }
}
