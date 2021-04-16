using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Models
{
    public class OrderDetail
    {
        public int OrderId { get; set; }
        public int DishId { get; set; }
        public int AccountId{ get; set; }
        public int QuantityOrder { get; set; }
        public DateTime Timeorder { get; set; }
        public int ServeStatus { get; set; }
    }
}
