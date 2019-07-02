using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBService
/// </summary>
public class DBService
{
    public DBService()
    {


    }

    public List<User> GetUsersWithReader()
    {
        List<User> users = new List<User>();
        SqlConnection con = new SqlConnection(@"Data Source=LABC-00;Initial Catalog=UsersDB;Integrated Security=True");
        SqlCommand comm = new SqlCommand("SELECT * FROM UsersTB", con);
        con.Open();
        SqlDataReader reader = comm.ExecuteReader();
        while (reader.Read())
        {
            User u = new User()
            {
                ID = (int)reader["UserID"],
                Name = (string)reader["UserName"],
                Pass = (string)reader["UserPass"]
            };
            users.Add(u);
        }
        con.Close();
        return users;
    }

    public DataTable GetUsersWithDS()
    {
        DataTable users = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=LABC-00;Initial Catalog=UsersDB;Integrated Security=True");
        SqlDataAdapter adptr = new SqlDataAdapter("SELECT * FROM UsersTB", con);
        adptr.Fill(users);
        return users;
    }
}