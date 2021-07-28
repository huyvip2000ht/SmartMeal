using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Hubs
{
    public class DrinkReadyHub : Hub
    {
        public async Task ConfirmDrinkReady(int msg)
        {
            Console.WriteLine("msg: " + msg.ToString());
            await Clients.All.SendAsync("ConfirmDrinkReady", msg);
        }
    }
}
