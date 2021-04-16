using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Models
{
    public class Payment
    {
        public int PaymentId { get; set; }
        public int CashierId { get; set; }
        public int TableId { get; set; }
        public int OrderId { get; set; }
        public int TotalPrice { get; set; }
        public DateTime TimePayment { get; set; }
        public int Status { get; set; }
    }
}
