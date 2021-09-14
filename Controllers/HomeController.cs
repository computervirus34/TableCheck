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
            if (tables == null)
            {
                tables = "Table_2,Table_3";
            }
            List<string> sourceTables = tables.Split(',').ToList();

            TestUPEntities1 db = new TestUPEntities1();
            var relTables = db.Database.SqlQuery<TableResult>("[dbo].[getTables]").ToList();

            var searchTables = relTables.Where(o => sourceTables.Contains(o.Table)).ToList();
            bool isChecked = false;
            foreach (var item in sourceTables)
            {
                List<string> all = UnionOtherListExceptCurrent(searchTables.Where(o => !o.Table.Equals(item)).ToList());

                var currentDependends = searchTables.Where(o => o.Table.Equals(item)).ToList();
                List<string> nodeDepList = new List<string> { item };
                foreach (var currentDependent in currentDependends)
                {
                    List<string> newTables = currentDependent.DependsON.Split(',').ToList();
                    nodeDepList.AddRange(newTables);
                }
                if (all.Contains(item))
                {
                    isChecked = true;
                    continue;
                }
                else if (nodeDepList.Contains(item))
                {
                    isChecked = true;
                    continue;
                }
                else if (all.Intersect(nodeDepList).Any())
                {
                    isChecked = true;
                    continue;
                }
                else
                {
                    isChecked = false;
                    TempData["retMsg"] = "Table " + item + " is not joinable among the provided table list";
                    break;
                }
            }
            TempData["retSuccess"] = "Table are joinable amongest them";
            return View();

        }

        private List<string> UnionOtherListExceptCurrent(List<TableResult> enumerable)
        {
            List<string> allTables = new List<string> { };

            foreach (var item in enumerable)
            {
                List<string> newTables = item.DependsON.Split(',').ToList();

                allTables.AddRange(newTables);
            }
            return allTables;
        }
    }
}