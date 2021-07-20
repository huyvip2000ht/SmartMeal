using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Hubs
{
    public class OrderFoodHub : Hub
    {
        public async Task ConfirmOrderedFood(int foodTypeId)
        {
            Console.WriteLine("Food type id: " + foodTypeId.ToString());
            await Clients.All.SendAsync("ConfirmOrderedFood", foodTypeId);
        }
    }
}