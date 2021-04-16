using System;
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
        
        protected string connectionString = "Host=localhost;port=3307;Character Set=utf8;Database=restaurant;User Id=root;password=''";
        protected IDbConnection dbConnection;
        public DbConnector()
        {
            dbConnection = new MySqlConnection(connectionString);
        }

        public virtual IEnumerable<TEntity> GetAllData<TEntity>()
        {
            var tableName = typeof(TEntity).Name;
            var entity = dbConnection.Query<TEntity>($"SELECT * FROM {tableName}");
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
        public bool CheckLogin(string username,string password)
        {
            var rowEffect = dbConnection.Query<Account>($"SELECT * FROM account where username='{username}' and password='{password}'").FirstOrDefault();
            if (rowEffect != null)
                return true;
            return false;
        }
        public IEnumerable<TEntity> GetBy<TEntity>(string type , string value) // select * from 'TEntity' wherer 'type'= 'value'
        {
            var tableName = typeof(TEntity).Name;
            

            var sql = $"SELECT *  from {tableName} WHERE {type}  = '{value}'";
            var entity = dbConnection.Query<TEntity>(sql);
            return entity;
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





    }
    
}
