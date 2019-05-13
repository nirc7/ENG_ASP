using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DALProj
{
    public class DBServices
    {
        string conStr = @"";
        SqlConnection con = null;
        SqlCommand comm = null;

        public DBServices()
        {
            con = new SqlConnection( conStr);
            comm = new SqlCommand();
            comm.Connection = con;
        }

        public Person Login(string name, string pass)
        {
            Person p = null;
            comm.CommandText =   " SELECT * "+ " " +
                                 " FROM TBUsers " + "" +
                                $" WHERE UserName='{name}' AND UserPass='{pass}' ";
            comm.Connection.Open();
            SqlDataReader reader =  comm.ExecuteReader();
            if (reader.Read())
            {
                p = new Person()
                {
                    ID = int.Parse(reader["ID"].ToString()),
                    Name = reader["UserName"].ToString(),
                    Pass = (string)reader["UserPass"]
                };
            }
            comm.Connection.Close();

            return p;
        }

    }
}
