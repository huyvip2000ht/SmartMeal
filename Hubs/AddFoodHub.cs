using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR;

namespace SmartMeal.Hubs
{
    public class AddFoodHub : Hub
    {
        public async Task SendNewFood(string foodName, int foodPrice, int dishType, string foodImage)
        {
            Console.WriteLine("ReceiveNewFood: " + foodName + foodPrice.ToString() +dishType.ToString() + foodImage);
            await Clients.All.SendAsync("ReceiveNewFood", foodName, foodPrice, dishType, foodImage);
        }
    }
}
