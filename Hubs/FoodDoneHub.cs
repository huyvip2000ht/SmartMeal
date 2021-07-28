using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Hubs
{
    public class FoodDoneHub : Hub
    {
        public async Task FoodDone(int msg)
        {
            Console.WriteLine("msg: " + msg.ToString());
            await Clients.All.SendAsync("FoodDone", msg);
        }
    }
}
