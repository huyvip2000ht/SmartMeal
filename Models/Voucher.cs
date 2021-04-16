using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Models
{
    public class Voucher
    {
        public int VoucherId { get; set; }
        public int Title { get; set; }
        public int DiscountPercent { get; set; }
        public string Description { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
    }
}
