using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using MySql.Data.MySqlClient;
using SmartMeal.Models;

namespace SmartMeal
{
    public class DbConnector
    {
        //protected string connectionString = "Host=localhost;port=3306;Character Set=utf8;Database=restaurant;User Id=root;password=''"; //huy
            protected string connectionString = "Host=localhost;port=3306;Character Set=utf8;Database=restaurant;User Id=root;password='12345678'"; //khoi
         //   protected string connectionString = "Database=restaurant;port=50154;Data Source=127.0.0.1;User Id=azure;Password=6#vWHD_$";
        protected IDbConnection dbConnection;
        public DbConnector()
        {
            dbConnection = new MySqlConnection(connectionString);
        }

        public virtual IEnumerable<TEntity> GetAllData<TEntity>()
        {
            var tableName = typeof(TEntity).Name;
            var entity = dbConnection.Query<TEntity>($"SELECT * FROM restaurant.{tableName}");
            return entity;
        }

        public IEnumerable<TEntity> GetById<TEntity>(string id) // select * from ... wherer id=...
        {
            var tableName = typeof(TEntity).Name;
            var storeName = $"Proc_Get{tableName}ById";

            DynamicParameters dynamicParameters = new DynamicParameters();
            dynamicParameters.Add($"@{tableName}Id", id);

            var entity = dbConnection.Query<TEntity>(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);
            return entity;
        }
        public IEnumerable GetAllDishesByAccountId(string accountId)
        {
            var storeName = $"Proc_GetAllDishesByAccountId";
            DynamicParameters dynamicParameters = new DynamicParameters();
            dynamicParameters.Add($"accountId", accountId);
            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);
            return entity;
        }
        public IEnumerable GetAllDishesPaid()
        {
            var storeName = $"Proc_GetAllDishesPaid";
            DynamicParameters dynamicParameters = new DynamicParameters();

            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);
            return entity;
        }
        public IEnumerable GetAllReadyOrders()
        {
            var storeName = $"Proc_GetAllReadyOrders";
            DynamicParameters dynamicParameters = new DynamicParameters();

            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);
            return entity;
        }





        public IEnumerable GetDishesByTableId(string tableId)
        {
            var storeName = $"Proc_GetDishesByTableId";
            DynamicParameters dynamicParameters = new DynamicParameters();
            dynamicParameters.Add($"tableId", tableId);

            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);

            return entity;
        }

        public virtual IEnumerable InsertPayment(string tableId, string voucherId)
        {
            //var tableName = "payment";
            var storeName = $"Proc_MakePayment";
            DynamicParameters dynamicParameters = new DynamicParameters();
            dynamicParameters.Add($"tableId", tableId);
            dynamicParameters.Add($"voucherId", voucherId);
            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);

            return entity;

        }

        public virtual IEnumerable InsertPayment1(string tableId, string cashierId)
        {
            //var tableName = "payment";
            var storeName = $"Proc_MakePayment1";
            DynamicParameters dynamicParameters = new DynamicParameters();
            dynamicParameters.Add($"tableId", tableId);
            dynamicParameters.Add($"cashierId", cashierId);
            // dynamicParameters.Add($"voucherId", voucherId);
            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);

            return entity;

        }



        public IEnumerable GetPaymentByTableId(string tableId) // select * from ... wherer tableId=...
        {
            var tableName = "Payment";
            var storeName = $"Proc_Get{tableName}ByTableId";

            DynamicParameters dynamicParameters = new DynamicParameters();
            dynamicParameters.Add($"@tableId", tableId);

            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);
            return entity;
        }

        public IEnumerable GetAllDishesIsCalled()
        {
            var storeName = $"Proc_GetAllDishesIsOrdered";
            DynamicParameters dynamicParameters = new DynamicParameters();


            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);

            return entity;
        }

        public IEnumerable GetAllDishesReady()
        {
            var storeName = $"Proc_GetAllDishesReady";
            DynamicParameters dynamicParameters = new DynamicParameters();


            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);

            return entity;
        }
        public IEnumerable GetAllPayments()
        {
            var storeName = $"Proc_GetAllPayments";
            DynamicParameters dynamicParameters = new DynamicParameters();


            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);

            return entity;
        }

        public IEnumerable GetAllDishesDoneByTableId(string tableId)
        {
            var storeName = $"Proc_GetAllDishesDoneByTableId";
            DynamicParameters dynamicParameters = new DynamicParameters();
            dynamicParameters.Add($"TableId", tableId);
            var entity = dbConnection.Query(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);

            return entity;
        }






        public bool CheckLogin(string username, string password)
        {
            var rowEffect = dbConnection.Query<Account>($"SELECT * FROM account where username='{username}' and password='{password}'").FirstOrDefault();
            if (rowEffect != null)
                return true;
            return false;
        }
        public IEnumerable<TEntity> GetBy<TEntity>(string type, string value) // select * from 'TEntity' wherer 'type'= 'value'
        {
            var tableName = typeof(TEntity).Name;


            var sql = $"SELECT *  from {tableName} WHERE {type}  = '{value}'";
            var entity = dbConnection.Query<TEntity>(sql);
            return entity;
        }




        public int InsertOrderDetailByTableId(OrderDetailTable orderDetailTable)
        {
            var storeName = $"Proc_InsertOrderDetailByTableId";
            DynamicParameters dynamicParameters = new DynamicParameters();


            var properties = typeof(OrderDetailTable).GetProperties();

            foreach (var property in properties)
            {
                var propertyName = property.Name;       // lấy tên biến
                var propertyValue = property.GetValue(orderDetailTable);  // lấy giá trị
                dynamicParameters.Add($"@{propertyName}", propertyValue);       // thêm tên biến và giá trị tương ứng
            }

            var affects = dbConnection.Execute(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);
            return affects;
        }






        public int Insert<M>(M entity)      // thêm mọi thứ vào database
        {
            var tableName = typeof(M).Name;
            // var customer = entity as Customer; 
            var storeName = $"Proc_Insert{tableName}";
            DynamicParameters dynamicParameters = new DynamicParameters();


            var properties = typeof(M).GetProperties();
            foreach (var property in properties)
            {
                var propertyName = property.Name;       // lấy tên biến
                var propertyValue = property.GetValue(entity);  // lấy giá trị
                dynamicParameters.Add($"@{propertyName}", propertyValue);       // thêm tên biến và giá trị tương ứng
            }

            var affects = dbConnection.Execute(storeName, dynamicParameters, commandType: CommandType.StoredProcedure);
            return affects;
        }

        public int Update<TEntity>(string column_value, string value, string column_id, string id)
        {
            var tableName = typeof(TEntity).Name;
            var sql = $"UPDATE `{tableName}` SET `{column_value}` = '{value}' WHERE `{tableName}`.`{column_id}` = '{id}';";


            int affects = dbConnection.Execute(sql);
            // var entity = dbConnection.Query<TEntity>(sql);
            return affects;
        }



    }

}
