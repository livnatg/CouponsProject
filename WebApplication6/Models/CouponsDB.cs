using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
namespace WebApplication6.Models
{
    public class CouponsDB
    {


        public static SqlConnection sqlConnection;
        SqlConnectionStringBuilder scsBuilder;


        public void ConnectAndQuery()
        {
            this.scsBuilder = new SqlConnectionStringBuilder();
            // Change these values to your values.
            this.scsBuilder["Server"] = "tcp:uda8uj5v0j.database.windows.net,1433";
            this.scsBuilder["User ID"] = "livnat@uda8uj5v0j";
            this.scsBuilder["Password"] = "Aa12345!";
            this.scsBuilder["Database"] = "Coupons";
            this.scsBuilder["Trusted_Connection"] = false;
            this.scsBuilder["Integrated Security"] = false;
            this.scsBuilder["Encrypt"] = true;
            this.scsBuilder["Connection Timeout"] = 3000;

           // this.EstablishConnection();
        } // method ConnectAndQuery

       

        public DataTable QueryCommand(string query)
        {

            sqlConnection = new SqlConnection(this.scsBuilder.ToString());
            SqlCommand sqlComm = new SqlCommand(query, sqlConnection);

            sqlConnection.Open();

            SqlDataReader sqlDataReader = sqlComm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(sqlDataReader);

            sqlConnection.Close();

            return dt;

   
        }

        public Object QueryCommandScalar(string query)
        {
            sqlConnection = new SqlConnection(this.scsBuilder.ToString());
            SqlCommand sqlComm = new SqlCommand(query, sqlConnection);

            sqlConnection.Open();

            var sqlDataReader = sqlComm.ExecuteScalar();

            sqlConnection.Close();

            return sqlDataReader;
        }

        public int NonQueryCommand(string query)
        {
            sqlConnection = new SqlConnection(this.scsBuilder.ToString());
            SqlCommand sqlComm = new SqlCommand(query, sqlConnection);

            sqlConnection.Open();

            var newID = sqlComm.ExecuteScalar();

            sqlConnection.Close();

            return Convert.ToInt32(newID);

        }
           
        
    }
}