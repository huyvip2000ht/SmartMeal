using System;
using System.Collections.Generic;
using System.Text;

namespace SmartMeal
{
    public class ServiceResult
    {
        public object Data { get; set; }
        public List<string> Messenger { get; set; } = new List<string> { };
        public EnumCode Code { get; set; }

        public ServiceResult(object Data, List<string> Messenger, EnumCode Code)
        {
            this.Data = Data;
            this.Messenger = Messenger;
            this.Code = Code;
        }
        public ServiceResult()
        {

        }
    }
}
