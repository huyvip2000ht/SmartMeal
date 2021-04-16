using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Models
{
    public class Dish
    {
        public int DishId { get; set; }
        public string DishName { get; set; }
        public int DishTypeId { get; set; }
        public int Price { get; set; }
        public string Image { get; set; }
        public DateTime AddDate { get; set; }
    }
}
