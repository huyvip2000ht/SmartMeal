using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Hubs
{
    public class FoodReadyHub : Hub
    {
        public async Task ConfirmFoodReady(int msg)
        {
            Console.WriteLine("Food type id: " + msg.ToString());
            await Clients.All.SendAsync("ConfirmFoodReady",msg);
        }
    }
}
