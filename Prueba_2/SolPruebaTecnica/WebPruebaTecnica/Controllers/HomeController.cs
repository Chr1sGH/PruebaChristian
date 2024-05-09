using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using WebPruebaTecnica.Models;

namespace WebPruebaTecnica.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using (TestDevBackExamenEntities db = new TestDevBackExamenEntities())
            {
                List<empleados> ls = db.empleados.Include("usuarios").Take(10).ToList();
                return View(ls);
            }

        }

        public ActionResult Usuarios()
        {
            using (TestDevBackExamenEntities db = new TestDevBackExamenEntities())
            {
                List<empleados> ls = db.empleados.Include("usuarios").ToList();
                return View(ls);
            }

        }

        public ActionResult EditarSalario(int id)
        {
            using (TestDevBackExamenEntities db = new TestDevBackExamenEntities())
            {
                empleados e = db.empleados.Find(id);
                usuarios usuario = db.usuarios.FirstOrDefault(u => u.userId == e.userId);

                ViewBag.NombreUsuario = usuario.Nombre;
                ViewBag.ApellidoPaternoUsuario = usuario.Paterno;

                return View("EditarSalario", e);
            }
        }


        [HttpPost]
        public ActionResult EditarSalario(empleados p)
        {
            using (TestDevBackExamenEntities db = new TestDevBackExamenEntities())
            {
                empleados empleadoOriginal = db.empleados.Find(p.empleadosId);
                empleadoOriginal.Sueldo = p.Sueldo;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

        }

        public ActionResult EditarSalarioU(int id)
        {
            using (TestDevBackExamenEntities db = new TestDevBackExamenEntities())
            {
                empleados e = db.empleados.Find(id);
                usuarios usuario = db.usuarios.FirstOrDefault(u => u.userId == e.userId);

                ViewBag.NombreUsuario = usuario.Nombre;
                ViewBag.ApellidoPaternoUsuario = usuario.Paterno;

                return View("EditarSalarioU", e);
            }
        }


        [HttpPost]
        public ActionResult EditarSalarioU(empleados p)
        {
            using (TestDevBackExamenEntities db = new TestDevBackExamenEntities())
            {
                empleados empleadoOriginal = db.empleados.Find(p.empleadosId);
                empleadoOriginal.Sueldo = p.Sueldo;
                db.SaveChanges();

                return RedirectToAction("Usuarios");
            }

        }





        public ActionResult VistaAgregar()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult VistaAgregar(usuarios u, double sueldo)
        {
            using (TestDevBackExamenEntities db = new TestDevBackExamenEntities())
            {
                db.usuarios.Add(u);
                db.SaveChanges();

                var nuevoEmpleado = new empleados
                {
                    Sueldo = sueldo,
                    FechaIngreso = DateTime.Today,
                    usuarios = u 
                };

                db.empleados.Add(nuevoEmpleado);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
        }


        public ActionResult ExportarCSV()
        {
            using (var db = new TestDevBackExamenEntities())
            {
                var usuarios = db.usuarios.ToList();
                var empleados = db.empleados.ToList();

                StringBuilder csvContent = new StringBuilder();

                csvContent.AppendLine("Login,Nombre Completo,Sueldo,Fecha Ingreso");

                foreach (var empleado in empleados)
                {
                    var usuario = empleado.usuarios;
                    string empleadoInfo = $"{usuario.Login},{usuario.Nombre} {usuario.Paterno} {usuario.Materno},{empleado.Sueldo},{empleado.FechaIngreso}";

                    csvContent.AppendLine(empleadoInfo);
                }

                string csvFilePath = Path.Combine(Path.GetTempPath(), "empleados.csv");
                System.IO.File.WriteAllText(csvFilePath, csvContent.ToString(), Encoding.UTF8);

                byte[] fileBytes = System.IO.File.ReadAllBytes(csvFilePath);
                return File(fileBytes, "text/csv", "empleados.csv");
            }
        }

    }
}