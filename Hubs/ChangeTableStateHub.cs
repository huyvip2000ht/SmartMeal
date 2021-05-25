using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartMeal.Hubs
{
    public class ChangeTableStateHub:Hub
    {
        public async Task ChangeTableState(int tableId, int tag)
        {
            Console.WriteLine("ReceiveTableState: " + tableId.ToString() + tag.ToString());
            await Clients.All.SendAsync("ReceiveTableState", tableId, tag);
        }
    }
}
