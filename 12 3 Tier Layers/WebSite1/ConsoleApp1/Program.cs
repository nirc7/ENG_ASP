using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALProj;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Person p = DBServices.Login("avi", "123");
            if (p!=null)
            {
                p.ID *= 7;
                Console.WriteLine(p.ID);
                //code algorithm!!!
            }
            else
            {
                Console.WriteLine("this person doesn't exists");
            }

            foreach (var item in ConfigurationManager.AppSettings.AllKeys)
            {
                Console.WriteLine(item);
            }
        }
    }
}
