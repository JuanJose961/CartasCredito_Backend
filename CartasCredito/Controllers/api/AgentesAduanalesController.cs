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
	public class AgentesAduanalesController : ApiController
	{
		// GET api/<controller>
		public IEnumerable<AgenteAduanal> Get()
		{
			return AgenteAduanal.Get(0);
		}

		// GET api/<controller>/5
		public AgenteAduanal Get(int id)
		{
			return AgenteAduanal.GetById(id);
		}

		// POST api/<controller>
		public RespuestaFormato Post([FromBody] AgenteAduanal modelo)
		{
			var rsp = new RespuestaFormato();
			var identity = Thread.CurrentPrincipal.Identity;
			var usr = AspNetUser.GetByUserName(identity.Name);

			try
			{
                if (modelo.Nombre != "" && modelo.Descripcion != "")
                {
                    var div = new AgenteAduanal()
					{
						Nombre = modelo.Nombre,
						Descripcion = modelo.Descripcion,
						CreadoPor = usr.Id
					};

					rsp = AgenteAduanal.Insert(div);

                    //var mContacto = modelo.Contacto;
                    //mContacto.ModelNombre = "Agente Aduanal";
                    //mContacto.ModelId = rsp.DataInt;

                    //Contacto.Insert(mContacto);
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
		public RespuestaFormato Put(int id, [FromBody] AgenteAduanal modelo)
		{
			var rsp = new RespuestaFormato();
			var identity = Thread.CurrentPrincipal.Identity;
			var usr = AspNetUser.GetByUserName(identity.Name);

			try
			{
				var div = AgenteAduanal.GetById(id);

				div.Nombre = modelo.Nombre;
				div.Descripcion = modelo.Descripcion;
				div.Activo = div.Activo;

				rsp = AgenteAduanal.Update(div);
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
				var modelo = AgenteAduanal.GetById(id);
				modelo.Activo = modelo.Activo ? false : true;

				rsp = AgenteAduanal.Update(modelo);
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