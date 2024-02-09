﻿using CartasCredito.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Web.Http;
using System.Web.Http.Cors;

namespace CartasCredito.Controllers.api
{
	[EnableCors(origins: "*", headers: "*", methods: "*")]
	[Authorize]
	public class MonedasController : ApiController
	{
		// GET api/<controller>
		public IEnumerable<Moneda> Get()
		{
			return Moneda.Get(0);
		}

		// GET api/<controller>/5
		public Moneda Get(int id)
		{
			return Moneda.GetById(id);
		}

		// POST api/<controller>
		public RespuestaFormato Post([FromBody] Moneda modelo)
		{
			var rsp = new RespuestaFormato();
			var identity = Thread.CurrentPrincipal.Identity;
			var usr = AspNetUser.GetByUserName(identity.Name);

			try
			{
				if (modelo.Nombre != "" && modelo.Abbr!="" && modelo.Descripcion != "")
				{
					var m = new Moneda()
					{
						Nombre = modelo.Nombre,
						Abbr = modelo.Abbr,
						Descripcion = modelo.Descripcion,
						CreadoPor = usr.Id
					};

					rsp = Moneda.Insert(m);
				}
				else
				{
                    throw new Exception("Faltan datos por completar");
                }
			}
			catch (Exception ex)
			{
				rsp.Flag = false;
				rsp.DataString = ex.Message;
				rsp.Errors.Add(ex.Message);
			}

			return rsp;
		}

		// PUT api/<controller>/5
		public RespuestaFormato Put(int id, [FromBody] Moneda modelo)
		{
			var rsp = new RespuestaFormato();
			var identity = Thread.CurrentPrincipal.Identity;
			var usr = AspNetUser.GetByUserName(identity.Name);

			try
			{
				var m = Moneda.GetById(id);

				m.Nombre = modelo.Nombre;
				m.Abbr = modelo.Abbr;
				m.Descripcion = modelo.Descripcion;
				m.Activo = m.Activo;

				rsp = Moneda.Update(m);
			}
			catch (Exception ex)
			{
				rsp.Flag = false;
				rsp.DataString = ex.Message;
				rsp.Errors.Add(ex.Message);
			}

			return rsp;
		}

		// DELETE api/<controller>/5
		public RespuestaFormato Delete(int id)
		{
			var rsp = new RespuestaFormato();

			try
			{
				var m = Moneda.GetById(id);
				m.Activo = m.Activo ? false : true;

				rsp = Moneda.Update(m);
			}
			catch (Exception ex)
			{
				rsp.Flag = false;
				rsp.DataString = ex.Message;
			}

			return rsp;
		}
	}
}