using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DALProj
{
    public  class DBServices
    {
        static string conStr = @"Data Source=.;Initial Catalog=DBUsers;Integrated Security=True";
        //static string conStr = null;
        static bool local = false;
        static SqlConnection con = null;
        static SqlCommand comm = null;

       static DBServices()
        {
            //if (local)
            //{
            //    conStr = ConfigurationManager.ConnectionStrings["Local"].ConnectionString;

            //}
            //else
            //{
            //    conStr = ConfigurationManager.ConnectionStrings["LiveDNS"].ConnectionString;
            //}
            //int n = ConfigurationManager.AppSettings.AllKeys.Count();
            //if (local)
            //{
            //    conStr = ConfigurationManager.AppSettings["Local"];

            //}
            //else
            //{
            //    conStr = ConfigurationManager.AppSettings["LiveDNS"];
            //}

            con = new SqlConnection(conStr);
            comm = new SqlCommand();
            comm.Connection = con;
        }

        public static Person Login(string name, string pass)
        {
            Person p = null;
            comm.CommandText = " SELECT * " + " " +
                                 " FROM TBUsers " + "" +
                                $" WHERE UserName='{name}' AND UserPass='{pass}' ";
            comm.Connection.Open();
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.Read())
            {
                p = new Person()
                {
                    ID = int.Parse(reader["UserID"].ToString()),
                    Name = reader["UserName"].ToString(),
                    Pass = (string)reader["UserPass"]
                };
            }
            comm.Connection.Close();

            return p;
        }

    }
}
