using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SmartMeal.Models;
using System.Drawing;
using System.Drawing.Imaging;

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

        [HttpGet("Table/{tableId}")]
        public IActionResult GetDishesByTableId(string tableId)
        {
            var dishes =  dbConnector.GetDishesByTableId(tableId) ;
            return Ok(dishes);
        }

        [HttpGet("AllDishesCountByAccount")]
        public IActionResult GetAllDishes()
        {
            return Ok(dbConnector.GetAllDishesByAccountId());
        }
        [HttpGet("AllDishesPaid")]
        public IActionResult GetAllDishesPaid()
        {
            return Ok(dbConnector.GetAllDishesPaid());
        }






        // POST api/<DishController>
        [HttpPost]
        public IActionResult Post(DishInsert dishInsert)
        {
            Dish dish = new Dish();
            dish.DishName = dishInsert.DishName;
            dish.DishTypeId = dishInsert.DishTypeId;
            dish.Price = dishInsert.Price;
            dish.Image = Base64ToImageAndSave(dishInsert.Base64ImageString);
            int affect = dbConnector.Insert<Dish>(dish);
            return Ok(affect);
           // return Ok(dish);

            //dish.Image = dishInsert......;
            
        }

        
        private String Base64ToImageAndSave(string base64String)
        {
            string filePath = Directory.GetCurrentDirectory() + "\\Images\\";
            string extension = ".jpg";
            string fileName = Path.ChangeExtension(
                Path.GetRandomFileName(),
                extension
            );

            string imagePath = filePath + fileName;

            string base64StringData = base64String; // Your base 64 string data
            string cleandata = base64StringData.Replace("data:image/jpeg;base64,", "");
                    cleandata = cleandata.Replace("data:image/png;base64,", "");
                    cleandata = cleandata.Replace("data:image/jpg;base64,", "");

            byte[] data = System.Convert.FromBase64String(cleandata);
            MemoryStream ms = new MemoryStream(data);
            System.Drawing.Image img = System.Drawing.Image.FromStream(ms);
            img.Save(imagePath, System.Drawing.Imaging.ImageFormat.Jpeg);
            return fileName;

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
