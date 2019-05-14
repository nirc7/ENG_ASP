using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace DALProj
{
    public class DBServices
    {
        static string conStr = null;
        //static string conStr = null;
        static bool local = true;
        static SqlConnection con = null;
        static SqlCommand comm = null;

        static DBServices()
        {
            Configuration config = null;
            string codeBase = Assembly.GetExecutingAssembly().CodeBase;
            UriBuilder uri = new UriBuilder(codeBase);
            string path = Uri.UnescapeDataString(uri.Path);

            string exeConfigPath = path;
            try
            {
                config = ConfigurationManager.OpenExeConfiguration(exeConfigPath);
            }
            catch (Exception ex)
            {
                //handle errror here.. means DLL has no sattelite configuration file.
            }

            if (config != null)
            {
                conStr = GetAppSetting(config, local? "Local" : "LiveDNS");
            }

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

        static  string GetAppSetting(Configuration config, string key)
        {
            KeyValueConfigurationElement element = config.AppSettings.Settings[key];
            if (element != null)
            {
                string value = element.Value;
                if (!string.IsNullOrEmpty(value))
                    return value;
            }
            return string.Empty;
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
