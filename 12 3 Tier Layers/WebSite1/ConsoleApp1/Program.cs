using System;
using System.Collections.Generic;
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
            DBServices dbs = new DBServices();
            Person p =  dbs.Login("avi", "123");
            if (p!=null)
            {
                p.ID *= 7;
                //code algorithm!!!
            }
        }
    }
}
