using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Models
{
    public class DishInsert
    {
      
        public string DishName { get; set; } 
        public int Price { get; set; }
        public int DishTypeId { get; set; }
        public string Base64ImageString { get; set; }
        
    }
}
