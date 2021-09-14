using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TableCheck.Controllers
{
    public class TableResult
    {
        public Int64 ID { get; set; }
        public string TableSchema { get; set; }
        public string Table { get; set; }
        public string DependsON { get; set; }
        public Int32 LVL { get; set; }
    }
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index(string tables)
        {
            if (tables != null)
            {
                List<string> sourceTables = tables.Split(',').ToList();

                TestUPEntities1 db = new TestUPEntities1();
                var relTables = db.Database.SqlQuery<TableResult>("[dbo].[getTables]").ToList();

                var searchTables = relTables.Where(o => sourceTables.Contains(o.Table)).ToList();

                foreach(var item in relTables)
                {
                    
                }
                return View();
            }
            else
            {
                return View();
            }

            
        }
    }
}