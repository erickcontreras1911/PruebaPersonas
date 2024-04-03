using PruebaPersonas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PruebaPersonas.Controllers
{
    public class PruebaDatabaseController : Controller
    {
        // GET: PruebaDatabase
        public ActionResult Index()
        {

            DataBase db = new DataBase();

            var listaPersonas = db.Persona.ToList();


            return new JsonResult
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = listaPersonas
            };
        }
    }
}