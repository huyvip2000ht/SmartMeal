using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Hubs
{
    public class ConfirmPaymentHub : Hub
    {
        public async Task ConfirmPayment(int msg)
        {
            Console.WriteLine("confirm payment msg: " + msg.ToString());
            await Clients.All.SendAsync("ConfirmPayment", msg);
        }
    }
}
