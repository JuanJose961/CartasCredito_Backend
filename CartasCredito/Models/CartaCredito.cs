﻿using CartasCredito.Models.DTOs;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;

namespace CartasCredito.Models
{
	public class CartaCredito
	{
		public int Consecutive { get; set; }
		public string Id { get; set; }
		public string NumCartaCredito { get; set; }
		public string TipoCarta { get; set; }
		public int TipoCartaId { get; set; }
		public string TipoStandBy { get; set; }
		public string TipoActivo { get; set; }
		public string Banco { get; set; }
		public string Empresa { get; set; }
		public string Proveedor { get; set; }
		public string Moneda { get; set; }
		public int TipoActivoId { get; set; }
		public int ProyectoId { get; set; }
		public string Proyecto { get; set; }
		public int BancoId { get; set; }
		public int ProveedorId { get; set; }
		public int EmpresaId { get; set; }
		public int AgenteAduanalId { get; set; }
		public string AgenteAduanal { get; set; }
		public int MonedaId { get; set; }
		public string TipoPago { get; set; }
		public string Responsable { get; set; }
		public int CompradorId { get; set; }
		public string Comprador { get; set; }
		public int PorcentajeTolerancia { get; set; }
		public string NumOrdenCompra { get; set; }
		public decimal CostoApertura { get; set; }
		public decimal MontoOrdenCompra { get; set; }
		public decimal MontoOriginalLC { get; set; }
		public decimal PagosEfectuados { get; set; }
		public decimal PagosProgramados { get; set; }
		public decimal PagosComisionesEfectuados { get; set; }
		public decimal MontoDispuesto { get; set; }
		public decimal SaldoInsoluto { get; set; }
		public DateTime FechaApertura { get; set; }
		public string Incoterm { get; set; }
		public DateTime FechaLimiteEmbarque { get; set; }
		public DateTime FechaVencimiento { get; set; }
		public string EmbarquesParciales { get; set; }
		public string Transbordos { get; set; }
		public string PuntoEmbarque { get; set; }
		public string PuntoDesembarque { get; set; }
		public string DescripcionMercancia { get; set; }
		public string DescripcionCartaCredito { get; set; }
		public string InstruccionesEspeciales { get; set; }
		public string PagoCartaAceptacion { get; set; }
		public string ConsignacionMercancia { get; set; }
		public string ConsideracionesAdicionales { get; set; }
		public string ConsideracionesReclamacion { get; set; }
		public int DiasParaPresentarDocumentos { get; set; }
		public int DiasPlazoProveedor { get; set; }
		public string CondicionesPago { get; set; }
		public int NumeroPeriodos { get; set; }
		public int BancoCorresponsalId { get; set; }
		public string BancoCorresponsal { get; set; }
		public string SeguroPorCuenta { get; set; }
		public string GastosComisionesCorresponsal { get; set; }
		public string ConfirmacionBancoNotificador { get; set; }
		public string TipoEmision { get; set; }
		public string DocumentoSwift { get; set; }
		//public List<DocumentoRequerido> DocumentosRequeridos { get; set; }
		public DateTime Creado { get; set; }
		public string CreadoPor { get; set; }
		public int Estatus { get; set; }
		public bool Activo { get; set; }
		public List<Pago> Pagos { get; set; }
		public List<CartaCreditoComision> Comisiones { get; set; }
		public List<Enmienda> Enmiendas { get; set; }



		//---
		public DateTime Actualizado { get; set; }
		public string Estado { get; set; } = "";
		public string Creado_str { get; set; } = "";
		public string Actualizado_str { get; set; } = "";
		public string FechaApertura_str { get; set; } = "";
		public string FechaLimiteEmbarque_str { get; set; } = "";
		public string FechaVencimiento_str { get; set; } = "";

		public int TipoCoberturaId { get; set; } = 0;
		public string TipoCobertura { get; set; } = "";

		public List<CartaCreditoDocumentoANegociar> DocumentoANegociar { get; set; } = new List<CartaCreditoDocumentoANegociar>();
		/*
		public decimal TotalPagosEfectuados()
		{
			decimal result = 0;
			List<Pago> listaPagos = new List<Pago>();
			listaPagos = Pago.GetByCartaCreditoId(Id);

			foreach (var lp in listaPagos)
			{
				result += lp.MontoPagado;
			}

			return result;
		}

		public decimal TotalPagosProgramados()
		{
			decimal result = 0;
			DateTime dateNow = DateTime.Now;
			DateTime dateLimit = new DateTime(dateNow.Year, dateNow.Month, dateNow.Day);

			List<Pago> listaPagos = new List<Pago>();
			listaPagos = Pago.GetByCartaCreditoId(Id);

			foreach (Pago lp in listaPagos)
			{
				if (lp.FechaVencimiento >= dateLimit & lp.Estatus == 1)
				{
					result += lp.MontoPago;
				}
			}

			//result -= TotalPagosEfectuados();

			return result;
		}

		public decimal TotalMontoDispuesto()
		{
			decimal result = 0;

			List<Pago> listaPagos = new List<Pago>();
			listaPagos = Pago.GetByCartaCreditoId(Id);

			foreach (var lp in listaPagos)
			{
				result += lp.MontoPago;
			}

			return result;
		}

		public decimal PagosCancelados()
		{
			return 0;
		}
		*/

		public static List<CartaCredito> Get(DateTime fechaInicio, DateTime fechaFin, int activo = -1)
		{
			List<CartaCredito> res = new List<CartaCredito>();

			try
			{
				DataAccess da = new DataAccess();

				var dt = new System.Data.DataTable();
				var errores = "";
				if (da.Cons_CartasCredito(out dt, out errores, fechaInicio, fechaFin, activo))
				{
					if (dt.Rows.Count > 0)
					{
						for (int i = 0; i < dt.Rows.Count; i++)
						{
							int idx = 0;
							var row = dt.Rows[i];
							var item = new CartaCredito();

							item.Consecutive = int.Parse(row[idx].ToString()); idx++;
							item.Id = row[idx].ToString(); idx++;
							item.TipoActivo = row[idx].ToString(); idx++;
							item.Banco = row[idx].ToString(); idx++;
							item.Empresa = row[idx].ToString(); idx++;
							item.Proveedor = row[idx].ToString(); idx++;
							item.Moneda = row[idx].ToString(); idx++;
							item.FechaVencimiento = DateTime.TryParse(row[idx].ToString(), out DateTime fvval) ? fvval : new DateTime(); idx++;
							item.NumCartaCredito = row[idx].ToString(); idx++;
							item.TipoCartaId = int.TryParse(row[idx].ToString(), out int tipoCartaVal) ? tipoCartaVal : 0; idx++;
							item.TipoCarta = item.TipoCartaId == 17 ? "Comercial" : "StandBy";
							item.TipoActivoId = int.TryParse(row[idx].ToString(), out int tactval) ? tactval : 0; idx++;
							item.BancoId = int.TryParse(row[idx].ToString(), out int bncidval) ? bncidval : 0; idx++;
							item.ProyectoId = int.TryParse(row[idx].ToString(), out int pryidval) ? pryidval : 0; idx++;
							item.ProveedorId = int.TryParse(row[idx].ToString(), out int prvidval) ? prvidval : 0; idx++;
							item.EmpresaId = int.TryParse(row[idx].ToString(), out int empidval) ? empidval : 0; idx++;
							item.AgenteAduanalId = int.TryParse(row[idx].ToString(), out int agadidval) ? agadidval : 0; idx++;
							item.MonedaId = int.TryParse(row[idx].ToString(), out int mndidval) ? mndidval : 0; idx++;
							item.TipoPago = row[idx].ToString(); idx++;
							item.Responsable = row[idx].ToString(); idx++;
							item.CompradorId = int.TryParse(row[idx].ToString(), out int cmprdidval) ? cmprdidval : 0; idx++;
							item.PorcentajeTolerancia = int.TryParse(row[idx].ToString(), out int prctolval) ? prctolval : 0; idx++;
							item.NumOrdenCompra = row[idx].ToString(); idx++;
							item.CostoApertura = decimal.TryParse(row[idx].ToString(), out decimal costoapval) ? costoapval : 0; idx++;
							item.MontoOrdenCompra = decimal.TryParse(row[idx].ToString(), out decimal montoordenval) ? montoordenval : 0; idx++;
							item.MontoOriginalLC = decimal.TryParse(row[idx].ToString(), out decimal montooriginalval) ? montooriginalval : 0; idx++;
							item.PagosEfectuados = decimal.TryParse(row[idx].ToString(), out decimal pagosEfectuadosVal) ? pagosEfectuadosVal : 0; idx++;
							item.PagosProgramados = decimal.TryParse(row[idx].ToString(), out decimal pagosProgramadosVal) ? pagosProgramadosVal : 0; idx++;
							item.MontoDispuesto = decimal.TryParse(row[idx].ToString(), out decimal montoDispuestoVal) ? montoDispuestoVal : 0; idx++;
							item.SaldoInsoluto = decimal.TryParse(row[idx].ToString(), out decimal saldoInsolutoVal) ? saldoInsolutoVal : 0; idx++;
							item.FechaApertura = DateTime.TryParse(row[idx].ToString(), out DateTime faval) ? faval : DateTime.Now.AddDays(365); idx++;
							item.Incoterm = row[idx].ToString(); idx++;
							item.FechaLimiteEmbarque = DateTime.TryParse(row[idx].ToString(), out DateTime flimval) ? flimval : DateTime.Now.AddDays(365); idx++;
							item.EmbarquesParciales = row[idx].ToString(); idx++;
							item.Transbordos = row[idx].ToString(); idx++;
							item.PuntoEmbarque = row[idx].ToString(); idx++;
							item.PuntoDesembarque = row[idx].ToString(); idx++;
							item.DescripcionMercancia = row[idx].ToString(); idx++;
							item.DescripcionCartaCredito = row[idx].ToString(); idx++;
							item.PagoCartaAceptacion = row[idx].ToString(); idx++;
							item.ConsignacionMercancia = row[idx].ToString(); idx++;
							item.ConsideracionesAdicionales = row[idx].ToString(); idx++;
							item.DiasParaPresentarDocumentos = int.TryParse(row[idx].ToString(), out int diasprsval) ? diasprsval : 0; idx++;
							item.DiasPlazoProveedor = int.TryParse(row[idx].ToString(), out int diasPlazoVal) ? diasPlazoVal : 0; idx++;
							item.CondicionesPago = row[idx].ToString(); idx++;
							item.NumeroPeriodos = int.TryParse(row[idx].ToString(), out int numeroPeriodosVal) ? numeroPeriodosVal : 0; idx++;
							item.BancoCorresponsalId = int.TryParse(row[idx].ToString(), out int bancoCoritemVal) ? bancoCoritemVal : 0; idx++;
							item.SeguroPorCuenta = row[idx].ToString(); idx++;
							item.GastosComisionesCorresponsal = row[idx].ToString(); idx++;
							item.ConfirmacionBancoNotificador = row[idx].ToString(); idx++;
							item.Estatus = int.Parse(row[idx].ToString()); idx++;
							item.TipoEmision = row[idx].ToString(); idx++;
							item.DocumentoSwift = row[idx].ToString(); idx++;
							item.CreadoPor = row[idx].ToString(); idx++;
							item.Creado = DateTime.Parse(row[idx].ToString()); idx++;
							item.Activo = bool.TryParse(row[idx].ToString(), out bool activoVal) && activoVal; idx++;
							// item.Pagos = Pago.GetByCartaCreditoId(item.Id);
							item.Enmiendas = Enmienda.GetByCartaCreditoId(item.Id);

							decimal totalPagosEfectuados = 0;
							foreach (var lp in item.Pagos)
							{
								if (lp.Estatus == 3)
								{
									totalPagosEfectuados += lp.MontoPago;
								}
							}

							item.PagosEfectuados = totalPagosEfectuados;

							decimal totalPagosProgramados = 0;
							foreach (var lp in item.Pagos)
							{
								if (lp.Estatus == 1)
								{
									totalPagosProgramados += lp.MontoPago;
								}
							}

							item.PagosProgramados = totalPagosProgramados;

							res.Add(item);
						}
					}
				}

			}
			catch (Exception ex)
			{
				res = new List<CartaCredito>();

				// Get stack trace for the exception with source file information
				var st = new StackTrace(ex, true);
				// Get the top stack frame
				var frame = st.GetFrame(0);
				// Get the line number from the stack frame
				var line = frame.GetFileLineNumber();

				var errorMsg = ex.ToString();
			}

			return res;
		}


		public static List<CartaCredito> Filtrar(CartasCreditoFiltrarDTO model)
		{
			List<CartaCredito> res = new List<CartaCredito>();

			try
			{
				DataAccess da = new DataAccess();

				var dt = new System.Data.DataTable();
				var errores = "";
				if (da.Cons_CartasCreditoFiltrar(model, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						for (int i = 0; i < dt.Rows.Count; i++)
						{
							int idx = 0;
							var row = dt.Rows[i];
							var item = new CartaCredito();

							item.Consecutive = int.Parse(row[idx].ToString()); idx++;
							item.Id = row[idx].ToString(); idx++;
							item.TipoActivo = row[idx].ToString(); idx++;
							item.Banco = row[idx].ToString(); idx++;
							item.Empresa = row[idx].ToString(); idx++;
							item.Proveedor = row[idx].ToString(); idx++;
							item.Moneda = row[idx].ToString(); idx++;
							item.FechaVencimiento = DateTime.TryParse(row[idx].ToString(), out DateTime fvval) ? fvval : new DateTime(); idx++;
							item.NumCartaCredito = row[idx].ToString(); idx++;
							item.TipoCartaId = int.TryParse(row[idx].ToString(), out int tipoCartaVal) ? tipoCartaVal : 0; idx++;
							item.TipoCarta = item.TipoCartaId == 17 ? "Comercial" : "StandBy";
							item.TipoActivoId = int.TryParse(row[idx].ToString(), out int tactval) ? tactval : 0; idx++;
							item.BancoId = int.TryParse(row[idx].ToString(), out int bncidval) ? bncidval : 0; idx++;
							item.ProyectoId = int.TryParse(row[idx].ToString(), out int pryidval) ? pryidval : 0; idx++;
							item.ProveedorId = int.TryParse(row[idx].ToString(), out int prvidval) ? prvidval : 0; idx++;
							item.EmpresaId = int.TryParse(row[idx].ToString(), out int empidval) ? empidval : 0; idx++;
							item.AgenteAduanalId = int.TryParse(row[idx].ToString(), out int agadidval) ? agadidval : 0; idx++;
							item.MonedaId = int.TryParse(row[idx].ToString(), out int mndidval) ? mndidval : 0; idx++;
							item.TipoPago = row[idx].ToString(); idx++;
							item.Responsable = row[idx].ToString(); idx++;
							item.CompradorId = int.TryParse(row[idx].ToString(), out int cmprdidval) ? cmprdidval : 0; idx++;
							item.PorcentajeTolerancia = int.TryParse(row[idx].ToString(), out int prctolval) ? prctolval : 0; idx++;
							item.NumOrdenCompra = row[idx].ToString(); idx++;
							item.CostoApertura = decimal.TryParse(row[idx].ToString(), out decimal costoapval) ? costoapval : 0; idx++;
							item.MontoOrdenCompra = decimal.TryParse(row[idx].ToString(), out decimal montoordenval) ? montoordenval : 0; idx++;
							item.MontoOriginalLC = decimal.TryParse(row[idx].ToString(), out decimal montooriginalval) ? montooriginalval : 0; idx++;
							item.PagosEfectuados = decimal.TryParse(row[idx].ToString(), out decimal pagosEfectuadosVal) ? pagosEfectuadosVal : 0; idx++;
							item.PagosProgramados = decimal.TryParse(row[idx].ToString(), out decimal pagosProgramadosVal) ? pagosProgramadosVal : 0; idx++;
							item.MontoDispuesto = decimal.TryParse(row[idx].ToString(), out decimal montoDispuestoVal) ? montoDispuestoVal : 0; idx++;
							item.SaldoInsoluto = decimal.TryParse(row[idx].ToString(), out decimal saldoInsolutoVal) ? saldoInsolutoVal : 0; idx++;
							item.FechaApertura = DateTime.TryParse(row[idx].ToString(), out DateTime faval) ? faval : DateTime.Now.AddDays(365); idx++;
							item.Incoterm = row[idx].ToString(); idx++;
							item.FechaLimiteEmbarque = DateTime.TryParse(row[idx].ToString(), out DateTime flimval) ? flimval : DateTime.Now.AddDays(365); idx++;
							item.EmbarquesParciales = row[idx].ToString(); idx++;
							item.Transbordos = row[idx].ToString(); idx++;
							item.PuntoEmbarque = row[idx].ToString(); idx++;
							item.PuntoDesembarque = row[idx].ToString(); idx++;
							item.DescripcionMercancia = row[idx].ToString(); idx++;
							item.DescripcionCartaCredito = row[idx].ToString(); idx++;
							item.PagoCartaAceptacion = row[idx].ToString(); idx++;
							item.ConsignacionMercancia = row[idx].ToString(); idx++;
							item.ConsideracionesAdicionales = row[idx].ToString(); idx++;
							item.DiasParaPresentarDocumentos = int.TryParse(row[idx].ToString(), out int diasprsval) ? diasprsval : 0; idx++;
							item.DiasPlazoProveedor = int.TryParse(row[idx].ToString(), out int diasPlazoVal) ? diasPlazoVal : 0; idx++;
							item.CondicionesPago = row[idx].ToString(); idx++;
							item.NumeroPeriodos = int.TryParse(row[idx].ToString(), out int numeroPeriodosVal) ? numeroPeriodosVal : 0; idx++;
							item.BancoCorresponsalId = int.TryParse(row[idx].ToString(), out int bancoCoritemVal) ? bancoCoritemVal : 0; idx++;
							item.SeguroPorCuenta = row[idx].ToString(); idx++;
							item.GastosComisionesCorresponsal = row[idx].ToString(); idx++;
							item.ConfirmacionBancoNotificador = row[idx].ToString(); idx++;
							item.Estatus = int.Parse(row[idx].ToString()); idx++;
							item.TipoEmision = row[idx].ToString(); idx++;
							item.DocumentoSwift = row[idx].ToString(); idx++;
							item.CreadoPor = row[idx].ToString(); idx++;
							item.Creado = DateTime.Parse(row[idx].ToString()); idx++;
							item.Activo = bool.TryParse(row[idx].ToString(), out bool activoVal) && activoVal; idx++;
							item.Enmiendas = Enmienda.GetByCartaCreditoId(item.Id);

							res.Add(item);
						}
					}
				}

			}
			catch (Exception ex)
			{
				Console.Write(ex);
				res = new List<CartaCredito>();

				// Get stack trace for the exception with source file information
				var st = new StackTrace(ex, true);
				// Get the top stack frame
				var frame = st.GetFrame(0);
				// Get the line number from the stack frame
				var line = frame.GetFileLineNumber();

				var errorMsg = ex.ToString();
			}

			return res;
		}

		public static List<CartaCredito> FiltrarReporte(CartasCreditoFiltrarDTO model)
		{
			List<CartaCredito> res = new List<CartaCredito>();

			try
			{
				DataAccess da = new DataAccess();

				var dt = new System.Data.DataTable();
				var errores = "";
				if (da.Cons_CartasCreditoFiltrarReporte(model, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						for (int i = 0; i < dt.Rows.Count; i++)
						{
							int idx = 0;
							var row = dt.Rows[i];
							var item = new CartaCredito();

							item.Consecutive = int.Parse(row[idx].ToString()); idx++;
							item.Id = row[idx].ToString(); idx++;
							item.TipoActivo = row[idx].ToString(); idx++;
							item.Banco = row[idx].ToString(); idx++;
							item.Empresa = row[idx].ToString(); idx++;
							item.Proveedor = row[idx].ToString(); idx++;
							item.Moneda = row[idx].ToString(); idx++;
							item.FechaVencimiento = DateTime.TryParse(row[idx].ToString(), out DateTime fvval) ? fvval : new DateTime(); idx++;
							item.NumCartaCredito = row[idx].ToString(); idx++;
							item.TipoCartaId = int.TryParse(row[idx].ToString(), out int tipoCartaVal) ? tipoCartaVal : 0; idx++;
							item.TipoCarta = item.TipoCartaId == 17 ? "Comercial" : "StandBy";
							item.TipoActivoId = int.TryParse(row[idx].ToString(), out int tactval) ? tactval : 0; idx++;
							item.BancoId = int.TryParse(row[idx].ToString(), out int bncidval) ? bncidval : 0; idx++;
							item.ProyectoId = int.TryParse(row[idx].ToString(), out int pryidval) ? pryidval : 0; idx++;
							item.ProveedorId = int.TryParse(row[idx].ToString(), out int prvidval) ? prvidval : 0; idx++;
							item.EmpresaId = int.TryParse(row[idx].ToString(), out int empidval) ? empidval : 0; idx++;
							item.AgenteAduanalId = int.TryParse(row[idx].ToString(), out int agadidval) ? agadidval : 0; idx++;
							item.MonedaId = int.TryParse(row[idx].ToString(), out int mndidval) ? mndidval : 0; idx++;
							item.TipoPago = row[idx].ToString(); idx++;
							item.Responsable = row[idx].ToString(); idx++;
							item.CompradorId = int.TryParse(row[idx].ToString(), out int cmprdidval) ? cmprdidval : 0; idx++;
							item.PorcentajeTolerancia = int.TryParse(row[idx].ToString(), out int prctolval) ? prctolval : 0; idx++;
							item.NumOrdenCompra = row[idx].ToString(); idx++;
							item.CostoApertura = decimal.TryParse(row[idx].ToString(), out decimal costoapval) ? costoapval : 0; idx++;
							item.MontoOrdenCompra = decimal.TryParse(row[idx].ToString(), out decimal montoordenval) ? montoordenval : 0; idx++;
							item.MontoOriginalLC = decimal.TryParse(row[idx].ToString(), out decimal montooriginalval) ? montooriginalval : 0; idx++;
							item.PagosEfectuados = decimal.TryParse(row[idx].ToString(), out decimal pagosEfectuadosVal) ? pagosEfectuadosVal : 0; idx++;
							item.PagosProgramados = decimal.TryParse(row[idx].ToString(), out decimal pagosProgramadosVal) ? pagosProgramadosVal : 0; idx++;
							item.MontoDispuesto = decimal.TryParse(row[idx].ToString(), out decimal montoDispuestoVal) ? montoDispuestoVal : 0; idx++;
							item.SaldoInsoluto = decimal.TryParse(row[idx].ToString(), out decimal saldoInsolutoVal) ? saldoInsolutoVal : 0; idx++;
							item.FechaApertura = DateTime.TryParse(row[idx].ToString(), out DateTime faval) ? faval : DateTime.Now.AddDays(365); idx++;
							item.Incoterm = row[idx].ToString(); idx++;
							item.FechaLimiteEmbarque = DateTime.TryParse(row[idx].ToString(), out DateTime flimval) ? flimval : DateTime.Now.AddDays(365); idx++;
							item.EmbarquesParciales = row[idx].ToString(); idx++;
							item.Transbordos = row[idx].ToString(); idx++;
							item.PuntoEmbarque = row[idx].ToString(); idx++;
							item.PuntoDesembarque = row[idx].ToString(); idx++;
							item.DescripcionMercancia = row[idx].ToString(); idx++;
							item.DescripcionCartaCredito = row[idx].ToString(); idx++;
							item.PagoCartaAceptacion = row[idx].ToString(); idx++;
							item.ConsignacionMercancia = row[idx].ToString(); idx++;
							item.ConsideracionesAdicionales = row[idx].ToString(); idx++;
							item.DiasParaPresentarDocumentos = int.TryParse(row[idx].ToString(), out int diasprsval) ? diasprsval : 0; idx++;
							item.DiasPlazoProveedor = int.TryParse(row[idx].ToString(), out int diasPlazoVal) ? diasPlazoVal : 0; idx++;
							item.CondicionesPago = row[idx].ToString(); idx++;
							item.NumeroPeriodos = int.TryParse(row[idx].ToString(), out int numeroPeriodosVal) ? numeroPeriodosVal : 0; idx++;
							item.BancoCorresponsalId = int.TryParse(row[idx].ToString(), out int bancoCoritemVal) ? bancoCoritemVal : 0; idx++;
							item.SeguroPorCuenta = row[idx].ToString(); idx++;
							item.GastosComisionesCorresponsal = row[idx].ToString(); idx++;
							item.ConfirmacionBancoNotificador = row[idx].ToString(); idx++;
							item.Estatus = int.Parse(row[idx].ToString()); idx++;
							item.TipoEmision = row[idx].ToString(); idx++;
							item.DocumentoSwift = row[idx].ToString(); idx++;
							item.CreadoPor = row[idx].ToString(); idx++;
							item.Creado = DateTime.Parse(row[idx].ToString()); idx++;
							item.Activo = bool.TryParse(row[idx].ToString(), out bool activoVal) && activoVal; idx++;
							item.Enmiendas = Enmienda.GetByCartaCreditoId(item.Id);

							res.Add(item);
						}
					}
				}

			}
			catch (Exception ex)
			{
				Console.Write(ex);
				res = new List<CartaCredito>();

				// Get stack trace for the exception with source file information
				var st = new StackTrace(ex, true);
				// Get the top stack frame
				var frame = st.GetFrame(0);
				// Get the line number from the stack frame
				var line = frame.GetFileLineNumber();

				var errorMsg = ex.ToString();
			}

			return res;
		}

		public static List<CartaCredito> ParaReportes(CartasCreditoFiltrarDTO model)
		{
			List<CartaCredito> res = new List<CartaCredito>();

			try
			{
				DataAccess da = new DataAccess();

				var dt = new System.Data.DataTable();
				var errores = "";
				if (da.Cons_CartasCreditoParaReportes(model, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						for (int i = 0; i < dt.Rows.Count; i++)
						{
							int idx = 0;
							var row = dt.Rows[i];
							var item = new CartaCredito();

							item.Consecutive = int.Parse(row[idx].ToString()); idx++;
							item.Id = row[idx].ToString(); idx++;
							item.TipoActivo = row[idx].ToString(); idx++;
							item.Banco = row[idx].ToString(); idx++;
							item.Empresa = row[idx].ToString(); idx++;
							item.Proveedor = row[idx].ToString(); idx++;
							item.Moneda = row[idx].ToString(); idx++;
							item.FechaVencimiento = DateTime.TryParse(row[idx].ToString(), out DateTime fvval) ? fvval : new DateTime(); idx++;
							item.NumCartaCredito = row[idx].ToString(); idx++;
							item.TipoCartaId = int.TryParse(row[idx].ToString(), out int tipoCartaVal) ? tipoCartaVal : 0; idx++;
							item.TipoCarta = item.TipoCartaId == 17 ? "Comercial" : "StandBy";
							item.TipoActivoId = int.TryParse(row[idx].ToString(), out int tactval) ? tactval : 0; idx++;
							item.BancoId = int.TryParse(row[idx].ToString(), out int bncidval) ? bncidval : 0; idx++;
							item.ProyectoId = int.TryParse(row[idx].ToString(), out int pryidval) ? pryidval : 0; idx++;
							item.ProveedorId = int.TryParse(row[idx].ToString(), out int prvidval) ? prvidval : 0; idx++;
							item.EmpresaId = int.TryParse(row[idx].ToString(), out int empidval) ? empidval : 0; idx++;
							item.AgenteAduanalId = int.TryParse(row[idx].ToString(), out int agadidval) ? agadidval : 0; idx++;
							item.MonedaId = int.TryParse(row[idx].ToString(), out int mndidval) ? mndidval : 0; idx++;
							item.TipoPago = row[idx].ToString(); idx++;
							item.Responsable = row[idx].ToString(); idx++;
							item.CompradorId = int.TryParse(row[idx].ToString(), out int cmprdidval) ? cmprdidval : 0; idx++;
							item.PorcentajeTolerancia = int.TryParse(row[idx].ToString(), out int prctolval) ? prctolval : 0; idx++;
							item.NumOrdenCompra = row[idx].ToString(); idx++;
							item.CostoApertura = decimal.TryParse(row[idx].ToString(), out decimal costoapval) ? costoapval : 0; idx++;
							item.MontoOrdenCompra = decimal.TryParse(row[idx].ToString(), out decimal montoordenval) ? montoordenval : 0; idx++;
							item.MontoOriginalLC = decimal.TryParse(row[idx].ToString(), out decimal montooriginalval) ? montooriginalval : 0; idx++;
							item.PagosEfectuados = decimal.TryParse(row[idx].ToString(), out decimal pagosEfectuadosVal) ? pagosEfectuadosVal : 0; idx++;
							item.PagosProgramados = decimal.TryParse(row[idx].ToString(), out decimal pagosProgramadosVal) ? pagosProgramadosVal : 0; idx++;
							item.MontoDispuesto = decimal.TryParse(row[idx].ToString(), out decimal montoDispuestoVal) ? montoDispuestoVal : 0; idx++;
							item.SaldoInsoluto = decimal.TryParse(row[idx].ToString(), out decimal saldoInsolutoVal) ? saldoInsolutoVal : 0; idx++;
							item.FechaApertura = DateTime.TryParse(row[idx].ToString(), out DateTime faval) ? faval : DateTime.Now.AddDays(365); idx++;
							item.Incoterm = row[idx].ToString(); idx++;
							item.FechaLimiteEmbarque = DateTime.TryParse(row[idx].ToString(), out DateTime flimval) ? flimval : DateTime.Now.AddDays(365); idx++;
							item.EmbarquesParciales = row[idx].ToString(); idx++;
							item.Transbordos = row[idx].ToString(); idx++;
							item.PuntoEmbarque = row[idx].ToString(); idx++;
							item.PuntoDesembarque = row[idx].ToString(); idx++;
							item.DescripcionMercancia = row[idx].ToString(); idx++;
							item.DescripcionCartaCredito = row[idx].ToString(); idx++;
							item.PagoCartaAceptacion = row[idx].ToString(); idx++;
							item.ConsignacionMercancia = row[idx].ToString(); idx++;
							item.ConsideracionesAdicionales = row[idx].ToString(); idx++;
							item.DiasParaPresentarDocumentos = int.TryParse(row[idx].ToString(), out int diasprsval) ? diasprsval : 0; idx++;
							item.DiasPlazoProveedor = int.TryParse(row[idx].ToString(), out int diasPlazoVal) ? diasPlazoVal : 0; idx++;
							item.CondicionesPago = row[idx].ToString(); idx++;
							item.NumeroPeriodos = int.TryParse(row[idx].ToString(), out int numeroPeriodosVal) ? numeroPeriodosVal : 0; idx++;
							item.BancoCorresponsalId = int.TryParse(row[idx].ToString(), out int bancoCoritemVal) ? bancoCoritemVal : 0; idx++;
							item.SeguroPorCuenta = row[idx].ToString(); idx++;
							item.GastosComisionesCorresponsal = row[idx].ToString(); idx++;
							item.ConfirmacionBancoNotificador = row[idx].ToString(); idx++;
							item.Estatus = int.Parse(row[idx].ToString()); idx++;
							item.TipoEmision = row[idx].ToString(); idx++;
							item.DocumentoSwift = row[idx].ToString(); idx++;
							item.CreadoPor = row[idx].ToString(); idx++;
							item.Creado = DateTime.Parse(row[idx].ToString()); idx++;
							item.Activo = bool.TryParse(row[idx].ToString(), out bool activoVal) && activoVal; idx++;
							item.Enmiendas = Enmienda.GetByCartaCreditoId(item.Id);

							res.Add(item);
						}
					}
				}

			}
			catch (Exception ex)
			{
				Console.Write(ex);
				res = new List<CartaCredito>();

				// Get stack trace for the exception with source file information
				var st = new StackTrace(ex, true);
				// Get the top stack frame
				var frame = st.GetFrame(0);
				// Get the line number from the stack frame
				var line = frame.GetFileLineNumber();

				var errorMsg = ex.ToString();
			}

			return res;
		}

		public static List<CartaCredito> Reporte(int empresaId, DateTime fechaInicio, DateTime fechaFin)
		{
			List<CartaCredito> res = new List<CartaCredito>();

			try
			{
				DataAccess da = new DataAccess();

				var dt = new System.Data.DataTable();
				var errores = "";
				if (da.Cons_ReporteCartas(empresaId, fechaInicio, fechaFin, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						for (int i = 0; i < dt.Rows.Count; i++)
						{
							int idx = 0;
							var row = dt.Rows[i];
							var item = new CartaCredito();

							item.Consecutive = int.Parse(row[idx].ToString()); idx++;
							item.Id = row[idx].ToString(); idx++;
							item.TipoActivo = row[idx].ToString(); idx++;
							item.Banco = row[idx].ToString(); idx++;
							item.Empresa = row[idx].ToString(); idx++;
							item.Proveedor = row[idx].ToString(); idx++;
							item.Moneda = row[idx].ToString(); idx++;
							item.FechaVencimiento = DateTime.TryParse(row[idx].ToString(), out DateTime fvval) ? fvval : new DateTime(); idx++;
							item.NumCartaCredito = row[idx].ToString(); idx++;
							item.TipoCartaId = int.TryParse(row[idx].ToString(), out int tipoCartaVal) ? tipoCartaVal : 0; idx++;
							item.TipoCarta = item.TipoCartaId == 17 ? "Comercial" : "StandBy";
							item.TipoActivoId = int.TryParse(row[idx].ToString(), out int tactval) ? tactval : 0; idx++;
							item.BancoId = int.TryParse(row[idx].ToString(), out int bncidval) ? bncidval : 0; idx++;
							item.ProyectoId = int.TryParse(row[idx].ToString(), out int pryidval) ? pryidval : 0; idx++;
							item.ProveedorId = int.TryParse(row[idx].ToString(), out int prvidval) ? prvidval : 0; idx++;
							item.EmpresaId = int.TryParse(row[idx].ToString(), out int empidval) ? empidval : 0; idx++;
							item.AgenteAduanalId = int.TryParse(row[idx].ToString(), out int agadidval) ? agadidval : 0; idx++;
							item.MonedaId = int.TryParse(row[idx].ToString(), out int mndidval) ? mndidval : 0; idx++;
							item.TipoPago = row[idx].ToString(); idx++;
							item.Responsable = row[idx].ToString(); idx++;
							item.CompradorId = int.TryParse(row[idx].ToString(), out int cmprdidval) ? cmprdidval : 0; idx++;
							item.PorcentajeTolerancia = int.TryParse(row[idx].ToString(), out int prctolval) ? prctolval : 0; idx++;
							item.NumOrdenCompra = row[idx].ToString(); idx++;
							item.CostoApertura = decimal.TryParse(row[idx].ToString(), out decimal costoapval) ? costoapval : 0; idx++;
							item.MontoOrdenCompra = decimal.TryParse(row[idx].ToString(), out decimal montoordenval) ? montoordenval : 0; idx++;
							item.MontoOriginalLC = decimal.TryParse(row[idx].ToString(), out decimal montooriginalval) ? montooriginalval : 0; idx++;
							item.PagosEfectuados = decimal.TryParse(row[idx].ToString(), out decimal pagosEfectuadosVal) ? pagosEfectuadosVal : 0; idx++;
							item.PagosProgramados = decimal.TryParse(row[idx].ToString(), out decimal pagosProgramadosVal) ? pagosProgramadosVal : 0; idx++;
							item.MontoDispuesto = decimal.TryParse(row[idx].ToString(), out decimal montoDispuestoVal) ? montoDispuestoVal : 0; idx++;
							item.SaldoInsoluto = decimal.TryParse(row[idx].ToString(), out decimal saldoInsolutoVal) ? saldoInsolutoVal : 0; idx++;
							item.FechaApertura = DateTime.TryParse(row[idx].ToString(), out DateTime faval) ? faval : DateTime.Now.AddDays(365); idx++;
							item.Incoterm = row[idx].ToString(); idx++;
							item.FechaLimiteEmbarque = DateTime.TryParse(row[idx].ToString(), out DateTime flimval) ? flimval : DateTime.Now.AddDays(365); idx++;
							item.EmbarquesParciales = row[idx].ToString(); idx++;
							item.Transbordos = row[idx].ToString(); idx++;
							item.PuntoEmbarque = row[idx].ToString(); idx++;
							item.PuntoDesembarque = row[idx].ToString(); idx++;
							item.DescripcionMercancia = row[idx].ToString(); idx++;
							item.DescripcionCartaCredito = row[idx].ToString(); idx++;
							item.PagoCartaAceptacion = row[idx].ToString(); idx++;
							item.ConsignacionMercancia = row[idx].ToString(); idx++;
							item.ConsideracionesAdicionales = row[idx].ToString(); idx++;
							item.DiasParaPresentarDocumentos = int.TryParse(row[idx].ToString(), out int diasprsval) ? diasprsval : 0; idx++;
							item.DiasPlazoProveedor = int.TryParse(row[idx].ToString(), out int diasPlazoVal) ? diasPlazoVal : 0; idx++;
							item.CondicionesPago = row[idx].ToString(); idx++;
							item.NumeroPeriodos = int.TryParse(row[idx].ToString(), out int numeroPeriodosVal) ? numeroPeriodosVal : 0; idx++;
							item.BancoCorresponsalId = int.TryParse(row[idx].ToString(), out int bancoCoritemVal) ? bancoCoritemVal : 0; idx++;
							item.SeguroPorCuenta = row[idx].ToString(); idx++;
							item.GastosComisionesCorresponsal = row[idx].ToString(); idx++;
							item.ConfirmacionBancoNotificador = row[idx].ToString(); idx++;
							item.Estatus = int.Parse(row[idx].ToString()); idx++;
							item.TipoEmision = row[idx].ToString(); idx++;
							item.DocumentoSwift = row[idx].ToString(); idx++;
							item.CreadoPor = row[idx].ToString(); idx++;
							item.Creado = DateTime.Parse(row[idx].ToString()); idx++;
							item.Activo = bool.TryParse(row[idx].ToString(), out bool activoVal) && activoVal; idx++;
							item.Enmiendas = Enmienda.GetByCartaCreditoId(item.Id);

							item.Pagos = Pago.GetByCartaCreditoId(item.Id);
							
							decimal totalPagosEfectuados = 0;
							foreach (var lp in item.Pagos)
							{
								if (lp.Estatus == 3)
								{
									totalPagosEfectuados += lp.MontoPago;
								}
							}

							item.PagosEfectuados = totalPagosEfectuados;

							decimal totalPagosProgramados = 0;
							foreach (var lp in item.Pagos)
							{
								if (lp.Estatus == 1)
								{
									totalPagosProgramados += lp.MontoPago;
								}
							}

							item.PagosProgramados = totalPagosProgramados;

							item.Comisiones = CartaCreditoComision.GetByCartaCreditoId(item.Id);

							decimal totalPagoComisionesEfectuados = 0;

							/*foreach (var comision in item.Comisiones)
							{
								if ( comision.Estatus == 3)
								{
									if ( item.MonedaId != comision.PagoMonedaId )
									{
										DateTime comFechaPago = comision.FechaPago ?? DateTime.Now;
										var comRateEx = Utility.GetRateEx(comision.PagoMonedaId, item.MonedaId, comFechaPago);
										totalPagoComisionesEfectuados += comision.MontoPagado * comRateEx;
									} else
									{
										totalPagoComisionesEfectuados += comision.MontoPagado;
									}
									
								}
							}*/

							item.PagosComisionesEfectuados = totalPagoComisionesEfectuados;

							res.Add(item);
						}
					}
				}

			}
			catch (Exception ex)
			{
				Console.Write(ex);
				res = new List<CartaCredito>();

				// Get stack trace for the exception with source file information
				var st = new StackTrace(ex, true);
				// Get the top stack frame
				var frame = st.GetFrame(0);
				// Get the line number from the stack frame
				var line = frame.GetFileLineNumber();

				var errorMsg = ex.ToString();
			}

			return res;
		}


		public static RespuestaFormato InsertStandBy(CartaCredito modelo)
		{
			RespuestaFormato rsp = new RespuestaFormato();

			try
			{
				DataAccess da = new DataAccess();
				var dt = new System.Data.DataTable();
				var errores = "";

				if (da.Ins_CartaCreditoStandBy(modelo, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						var row = dt.Rows[0];
						string id = row[3].ToString();

						if (id.Length > 0)
						{
							rsp.Flag = true;
							rsp.DataInt = 1;
							rsp.DataString = id;
						}
					}
				}
				else
				{
					rsp.Description = "Ocurrió un error";
					rsp.Errors.Add(errores);
				}
			}
			catch (Exception ex)
			{
				rsp.Errors.Add(ex.Message);
				rsp.Description = "Ocurrió un error";
			}

			return rsp;
		}

		public static RespuestaFormato Insert(CartaCredito modelo)
		{
			RespuestaFormato rsp = new RespuestaFormato();

			try
			{
				DataAccess da = new DataAccess();
				var dt = new System.Data.DataTable();
				var errores = "";

				if (da.Ins_CartaCredito(modelo, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						var row = dt.Rows[0];
						string id = row[3].ToString();

						if (id.Length > 0)
						{
							rsp.Flag = true;
							rsp.DataInt = 1;
							rsp.DataString = id;
						}
					}
				}
				else
				{
					rsp.Description = "Ocurrió un error";
					rsp.Errors.Add(errores);
				}
			}
			catch (Exception ex)
			{
				rsp.Errors.Add(ex.Message);
				rsp.Description = "Ocurrió un error";
			}

			return rsp;
		}

		public static RespuestaFormato Update(CartaCredito modelo)
		{
			RespuestaFormato rsp = new RespuestaFormato();

			try
			{
				DataAccess da = new DataAccess();
				var dt = new System.Data.DataTable();
				var errores = "";

				if (da.Upd_CartaCredito(modelo, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						var row = dt.Rows[0];
						string id = row[3].ToString();

						if (id.Length > 0)
						{
							rsp.Flag = true;
							rsp.DataInt = 1;
							rsp.DataString = id;
						}
					}
				}
				else
				{
					rsp.Description = "Ocurrió un error";
					rsp.Errors.Add(errores);
				}
			}
			catch (Exception ex)
			{
				rsp.Errors.Add(ex.Message);
				rsp.Description = "Ocurrió un error";
			}

			return rsp;
		}

		public static RespuestaFormato UpdateStandBy(CartaCredito modelo)
		{
			RespuestaFormato rsp = new RespuestaFormato();

			try
			{
				DataAccess da = new DataAccess();
				var dt = new System.Data.DataTable();
				var errores = "";

				if (da.Upd_StandBy(modelo, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						var row = dt.Rows[0];
						string id = row[3].ToString();

						if (id.Length > 0)
						{
							rsp.Flag = true;
							rsp.DataInt = 1;
							rsp.DataString = id;
						}
					}
				}
				else
				{
					rsp.Description = "Ocurrió un error";
					rsp.Errors.Add(errores);
				}
			}
			catch (Exception ex)
			{
				rsp.Errors.Add(ex.Message);
				rsp.Description = "Ocurrió un error";
			}

			return rsp;
		}

		public static CartaCredito GetById(string id)
		{
			CartaCredito rsp = new CartaCredito();

			try
			{
				DataAccess da = new DataAccess();
				var dt = new System.Data.DataTable();
				var errores = "";

				if (da.Cons_CartaCreditoById(id, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						var idx = 0;
						var row = dt.Rows[0];

						rsp.Consecutive = int.Parse(row[idx].ToString()); idx++;
						rsp.Id = row[idx].ToString(); idx++;
						rsp.TipoActivo = row[idx].ToString(); idx++;
						rsp.Banco = row[idx].ToString(); idx++;
						rsp.FechaVencimiento = DateTime.Parse(row[idx].ToString()); idx++;
						rsp.NumCartaCredito = row[idx].ToString(); idx++;
						rsp.TipoCartaId = int.TryParse(row[idx].ToString(), out int tipoCartaVal) ? tipoCartaVal : 0; idx++;
						rsp.TipoCarta = rsp.TipoCartaId == 17 ? "Comercial" : "StandBy";
						rsp.TipoActivoId = int.TryParse(row[idx].ToString(), out int taval) ? taval : 0; idx++;
						rsp.BancoId = int.TryParse(row[idx].ToString(), out int bancoidval) ? bancoidval : 0; idx++;
						rsp.ProyectoId = int.TryParse(row[idx].ToString(), out int proyectoidval) ? proyectoidval : 0; idx++;
						rsp.ProveedorId = int.TryParse(row[idx].ToString(), out int proveeidval) ? proveeidval : 0; idx++;
						rsp.EmpresaId = int.TryParse(row[idx].ToString(), out int eidval) ? eidval : 0; idx++;
						rsp.AgenteAduanalId = int.TryParse(row[idx].ToString(), out int aadidval) ? aadidval : 0; idx++;
						rsp.MonedaId = int.TryParse(row[idx].ToString(), out int monidval) ? monidval : 0; idx++;
						rsp.TipoPago = row[idx].ToString(); idx++;
						rsp.Responsable = row[idx].ToString(); idx++;
						rsp.CompradorId = int.TryParse(row[idx].ToString(), out int compidval) ? compidval : 0; idx++;
						rsp.PorcentajeTolerancia = int.TryParse(row[idx].ToString(), out int tolerval) ? tolerval: 0; idx++;
						rsp.NumOrdenCompra = row[idx].ToString(); idx++;
						rsp.CostoApertura = decimal.TryParse(row[idx].ToString(), out decimal costapval) ? costapval : 0M; idx++;
						rsp.MontoOrdenCompra = decimal.TryParse(row[idx].ToString(), out decimal ordencompval) ? ordencompval : 0M; idx++;
						rsp.MontoOriginalLC = decimal.TryParse(row[idx].ToString(), out decimal montoval) ? montoval : 0M; idx++;
						rsp.PagosEfectuados = decimal.TryParse(row[idx].ToString(), out decimal pagosEfectuadosVal) ? pagosEfectuadosVal : 0; idx++;
						rsp.PagosProgramados = decimal.TryParse(row[idx].ToString(), out decimal pagosProgramadosVal) ? pagosProgramadosVal : 0; idx++;
						rsp.MontoDispuesto = decimal.TryParse(row[idx].ToString(), out decimal montoDispuestoVal) ? montoDispuestoVal : 0; idx++;
						rsp.SaldoInsoluto = decimal.TryParse(row[idx].ToString(), out decimal saldoInsolutoVal) ? saldoInsolutoVal : 0; idx++;
						rsp.FechaApertura = DateTime.Parse(row[idx].ToString()); idx++;
						rsp.Incoterm = row[idx].ToString(); idx++;

						rsp.FechaLimiteEmbarque = DateTime.TryParse(row[idx].ToString(), out DateTime flimval) ? flimval : DateTime.Now.AddDays(365); idx++;

						rsp.EmbarquesParciales = row[idx].ToString(); idx++;
						rsp.Transbordos = row[idx].ToString(); idx++;
						rsp.PuntoEmbarque = row[idx].ToString(); idx++;
						rsp.PuntoDesembarque = row[idx].ToString(); idx++;
						rsp.DescripcionMercancia = row[idx].ToString(); idx++;
						rsp.DescripcionCartaCredito = row[idx].ToString(); idx++;
						rsp.PagoCartaAceptacion = row[idx].ToString(); idx++;
						rsp.ConsignacionMercancia = row[idx].ToString(); idx++;
						rsp.ConsideracionesAdicionales = row[idx].ToString(); idx++;
						rsp.DiasParaPresentarDocumentos = int.TryParse(row[idx].ToString(), out int diasdocval) ? diasdocval : 0; idx++;
						rsp.DiasPlazoProveedor = int.TryParse(row[idx].ToString(), out int diasPlazoVal) ? diasPlazoVal : 0; idx++;
						rsp.CondicionesPago = row[idx].ToString(); idx++;
						rsp.NumeroPeriodos = int.TryParse(row[idx].ToString(), out int numeroPeriodosVal) ? numeroPeriodosVal : 0; idx++;
						rsp.BancoCorresponsalId = int.TryParse(row[idx].ToString(), out int bancoCorrspVal) ? bancoCorrspVal : 0; idx++;
						rsp.SeguroPorCuenta = row[idx].ToString(); idx++;
						rsp.GastosComisionesCorresponsal = row[idx].ToString(); idx++;
						rsp.ConfirmacionBancoNotificador = row[idx].ToString(); idx++;
						rsp.Estatus = int.Parse(row[idx].ToString()); idx++;
						rsp.TipoEmision = row[idx].ToString(); idx++;


						var docSwiftUrlBase = Utility.HostUrl + "/Uploads/";

						if (row[idx].ToString() != "")
						{
							rsp.DocumentoSwift = docSwiftUrlBase + row[idx].ToString();
						} else
						{
							rsp.DocumentoSwift = "";
						}
												
						idx++;

						rsp.CreadoPor = row[idx].ToString(); idx++;
						rsp.Creado = DateTime.Parse(row[idx].ToString()); idx++;
						rsp.Activo = bool.TryParse(row[idx].ToString(), out bool activoVal) && activoVal; idx++;
						rsp.Proveedor = row[idx].ToString(); idx++;
						rsp.Proyecto = row[idx].ToString(); idx++;
						rsp.AgenteAduanal = row[idx].ToString(); idx++;
						rsp.Moneda = row[idx].ToString(); idx++;
						rsp.BancoCorresponsal = row[idx].ToString(); idx++;
						rsp.Empresa = row[idx].ToString(); idx++;
						rsp.Comprador = row[idx].ToString(); idx++;
						rsp.InstruccionesEspeciales = row[idx].ToString(); idx++;
						rsp.TipoStandBy = row[idx].ToString(); idx++;
						rsp.ConsideracionesReclamacion = row[idx].ToString(); idx++;


						rsp.Actualizado = DateTime.Parse(row[idx].ToString()); idx++;
						rsp.Estado = row[idx].ToString(); idx++;


						rsp.TipoCoberturaId = Int32.Parse(row[idx].ToString()); idx++;
						rsp.TipoCobertura = row[idx].ToString(); idx++;

						rsp.Actualizado_str = rsp.Actualizado.ToString("dd/MM/yyyy");
                        rsp.Creado_str = rsp.Creado.ToString("dd/MM/yyyy");


                        rsp.Pagos = Pago.GetByCartaCreditoId(rsp.Id);
						rsp.Comisiones = CartaCreditoComision.GetByCartaCreditoId(rsp.Id);
						rsp.Enmiendas = Enmienda.GetByCartaCreditoId(rsp.Id);

						decimal totalPagosEfectuados = 0;
						foreach (var lp in rsp.Pagos)
						{
							if ( lp.Estatus == 3 )
							{
								totalPagosEfectuados += lp.MontoPago;
							}
							
						}

						rsp.PagosEfectuados = totalPagosEfectuados;

						decimal totalPagosProgramados = 0;
						foreach (var lp in rsp.Pagos)
						{
							if (lp.Estatus == 1)
							{
								totalPagosProgramados += lp.MontoPago;
							}

						}

						rsp.PagosProgramados = totalPagosProgramados;

						rsp.MontoDispuesto = rsp.PagosEfectuados + rsp.PagosProgramados;

						rsp.FechaApertura_str = rsp.FechaApertura.ToString("dd/MM/yyyy");
						rsp.FechaLimiteEmbarque_str = rsp.FechaLimiteEmbarque.ToString("dd/MM/yyyy");
						rsp.FechaVencimiento_str = rsp.FechaVencimiento.ToString("dd/MM/yyyy");

						rsp.DocumentoANegociar = CartaCreditoDocumentoANegociar.GetFromCarta(rsp.Id);
					}
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex);
				rsp = new CartaCredito();
			}

			return rsp;
		}

		public static string GetSwiftByCartaCreditoId(string id)
		{
			string rsp = String.Empty;

			try
			{
				DataAccess da = new DataAccess();
				var dt = new System.Data.DataTable();
				var errores = "";

				if (da.Cons_SwiftByCartaCreditoId(id, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						var idx = 0;
						var row = dt.Rows[0];

						rsp = row[idx].ToString(); idx++;
					}
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex);
			}

			return rsp;
		}

		public static RespuestaFormato UpdateStatus(string ccid, int newStatus)
		{
			RespuestaFormato rsp = new RespuestaFormato();

			try
			{
				DataAccess da = new DataAccess();
				var dt = new System.Data.DataTable();
				var errores = "";

				if (da.Upd_CartaCreditoStatus(ccid, newStatus, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						var row = dt.Rows[0];
						string id = row[3].ToString();

						if (id.Length > 0)
						{
							rsp.Flag = true;
							rsp.DataInt = 1;
							rsp.DataString = id;
						}
					}
				}
				else
				{
					rsp.Description = "Ocurrió un error";
					rsp.Errors.Add(errores);
				}
			}
			catch (Exception ex)
			{
				rsp.Errors.Add(ex.Message);
				rsp.Description = "Ocurrió un error";
			}

			return rsp;
		}

		public static RespuestaFormato UpdateSwiftFile(string ccid, string numeroCartaComercial, string swiftFilename)
		{
			RespuestaFormato rsp = new RespuestaFormato();

			try
			{
				DataAccess da = new DataAccess();
				var dt = new System.Data.DataTable();
				var errores = "";

				if (da.Upd_CartaCreditoSwift(ccid, numeroCartaComercial, swiftFilename, out dt, out errores))
				{
					if (dt.Rows.Count > 0)
					{
						var row = dt.Rows[0];
						string id = row[3].ToString();

						if (id.Length > 0)
						{
							rsp.Flag = true;
							rsp.DataInt = 1;
							rsp.DataString = id;
						}
					}
				}
				else
				{
					rsp.Description = "Ocurrió un error";
					rsp.Errors.Add(errores);
				}
			}
			catch (Exception ex)
			{
				rsp.Errors.Add(ex.Message);
				rsp.Description = "Ocurrió un error";
			}

			return rsp;
		}

		public string GetStatusText()
		{
			string estatusText = String.Empty;
			switch (Estatus)
			{
				case 1:
					estatusText = "Registrada";
					break;
				case 2:
					estatusText = "Emitida";
					break;
				case 3:
					estatusText = "Enmienda Pendiente";
					break;
				case 4:
					estatusText = "Pagada";
					break;
				case 5:
					estatusText = "Cancelada";
					break;
			}

			return estatusText;
		}

		public static string GetStatusText(int Estatus)
		{
			string estatusText = String.Empty;
			switch (Estatus)
			{
				case 1:
					estatusText = "Registrada";
					break;
				case 2:
					estatusText = "Emitida";
					break;
				case 3:
					estatusText = "Enmienda Pendiente";
					break;
				case 4:
					estatusText = "Pagada";
					break;
				case 5:
					estatusText = "Cancelada";
					break;
			}

			return estatusText;
		}

		public string GetStatusClass()
		{
			string estatusText = String.Empty;
			switch (Estatus)
			{
				case 1:
					estatusText = "dark";
					break;
				case 2:
					estatusText = "primary";
					break;
				case 3:
					estatusText = "warning";
					break;
				case 4:
					estatusText = "success";
					break;
				case 5:
					estatusText = "danger";
					break;
			}

			return estatusText;
		}
	}
}