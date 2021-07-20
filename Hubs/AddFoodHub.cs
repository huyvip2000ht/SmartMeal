using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR;

namespace SmartMeal.Hubs
{
    public class AddFoodHub : Hub
    {
        public async Task SendNewFood(int msg)
        {
            Console.WriteLine("ReceiveNewFood: " + msg.ToString());
            await Clients.All.SendAsync("ReceiveNewFood", msg);
        }
    }
}