using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using DALProj;

namespace BALProj
{
    public static class BALServices
    {
        public static string Login(string name, string pass)
        {
            //DBServices dbs = new DBServices();
            //Person p = dbs.Login(name, pass);
            Person p = DBServices.Login(name, pass);
            
            //if (p != null)
            //{
            //    p.ID *= 7;
            //    //Console.WriteLine(p.ID);
            //    //code algorithm!!!
            //}
            //else
            //{
            //    //Console.WriteLine("this person doesn't exists");
            //}

            return new JavaScriptSerializer().Serialize(p) ; 
        }
    }
}
