﻿using CartasCredito.Models;
using CartasCredito.Models.DTOs;
using Microsoft.AspNet.Identity;
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
	public class PagosController : ApiController
	{
		// GET api/<controller>
		public IEnumerable<string> Get()
		{
			return new string[] { "value1", "value2" };
		}

		// GET api/<controller>/5
		public string Get(int id)
		{
			return "value";
		}

		// POST api/<controller>
		public RespuestaFormato Post([FromBody] PagoInsertDTO model)
		{
			var rsp = new RespuestaFormato();
			var identity = Thread.CurrentPrincipal.Identity;
			var usr = AspNetUser.GetByUserName(identity.Name);

			try
			{
				var nuevoPago = new Pago();
				nuevoPago.CartaCreditoId = model.CartaCreditoId;
				nuevoPago.NumeroFactura = model.NumeroFactura;
				nuevoPago.FechaVencimiento = model.FechaVencimiento;
				nuevoPago.MontoPago = model.MontoPago;
				nuevoPago.Estatus = 1;
				nuevoPago.CreadoPor = usr.Id;

				var cc = CartaCredito.GetById(model.CartaCreditoId);
				var ccPagos = Pago.GetByCartaCreditoId(model.CartaCreditoId);

				// verifica que nuevo pago + pagos existentes no sobrepase el monto original
				var totalPagos = ccPagos.Sum(p => p.MontoPago) + nuevoPago.MontoPago;

				if ( totalPagos > cc.MontoOriginalLC )
				{
					throw new Exception("Pagos exceden el monto original de la carta");
				}

				rsp = Pago.Insert(nuevoPago);

				var bm = new BitacoraMovimiento();
				bm.Titulo = "Pago Programado";
				bm.CreadoPorId = usr.Id;
				bm.Descripcion = "Se ha creado un nuevo pago programado en la carta de crédito.";
				bm.CartaCreditoId = model.CartaCreditoId;
				bm.ModeloNombre = "Pago";
				bm.ModeloId = rsp.DataInt;

				BitacoraMovimiento.Insert(bm);
			} 
			catch ( Exception ex )
			{
				rsp.Flag = false;
				rsp.DataString = "";
				rsp.Errors.Add(ex.Message);
				rsp.DataInt = 0;
			}

			return rsp;
		}

		// PUT api/<controller>/5
		public RespuestaFormato Put(int id, [FromBody] PagoUpdateDTO model)
		{
			var rsp = new RespuestaFormato();
			var identity = Thread.CurrentPrincipal.Identity;
			var usr = AspNetUser.GetByUserName(identity.Name);

			try
			{
				Pago pago = Pago.GetById(model.Id);
				pago.Estatus = 3;
				pago.FechaPago = model.FechaPago;
				pago.MontoPagado = model.Monto;
				pago.RegistroPagoPor = usr.Id;
				rsp = Pago.Update(pago);
			}
			catch (Exception ex)
			{
				rsp.Flag = false;
				rsp.DataString = "";
				rsp.Errors.Add(ex.Message);
				rsp.DataInt = 0;
			}

			return rsp;
		}

		// DELETE api/<controller>/5
		public void Delete(int id)
		{
		}
	}
}