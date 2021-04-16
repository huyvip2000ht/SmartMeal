using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Models
{
    public class Orders
    {
        public int OrderId { get; set; }
        public int TableId { get; set; }
        public int Status { get; set; }
    }
}
