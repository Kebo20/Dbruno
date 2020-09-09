<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="modelo.Pago"%>
<%@page import="modelo.Venta"%>
<%@page import="dao.PagoDao"%>
<%@page import="dao.ClienteDao"%>
<%@page import="modelo.Cliente"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.VentaDao"%>
<%@page session="true" %>
<%@include file= "encabezado2.jsp" %>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<aside id="sidebar-left" class="sidebar-left">
				
					<div class="sidebar-header">
						<div class="sidebar-title">
                                                    <b style="color:#ABB4BE">NAVEGACIÓN</b>
						</div>
						<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
							<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
						</div>
					</div>
				
					<div class="nano">
						<div class="nano-content">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-main">
									<li>
										<a href="index.jsp">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>Inicio</span>
										</a>
									</li>
									
									
									
                                                                        
									<li class="nav-parent ">
										<a>
											<i class="fa fa-user" aria-hidden="true"></i>
											<span>Clientes</span>
										</a>
										<ul class="nav nav-children">
											<li >
												<a href="registrarCliente.jsp">
													 Registrar
												</a>
											</li>
											<li class="">
											
                                                                                                <a href="listarCliente.jsp">
													 Listar
                                                                                                    </a>
                                                                                               
											</li>
											
										</ul>
									</li>
                                                                        
                                                                        <li class="nav-parent ">
										<a>
											<i class="fa fa-shopping-cart" aria-hidden="true"></i>
											<span>Compras</span>
										</a>
										<ul class="nav nav-children">
											<li class="">
												<a href="registrarCompra.jsp">
													 Registrar
												</a>
											</li>
											<li>
												<a href="listarCompra.jsp">
													 Listar
												</a>
											</li>
                                                                                        
                                                                                        <li class="">
												<a href="rCompras.jsp">
													Reportes
												</a>
											</li>
											
										</ul>
									</li>
                                                                        
                                                                        <li class="nav-parent ">
										<a>
											<i class="fa fa-dollar" aria-hidden="true"></i>
											<span>Ventas</span>
										</a>
										<ul class="nav nav-children">
											<li class="">
												<a href="registrarVenta.jsp">
													 Registrar
												</a>
											</li>
											<li  class="">
												<a href="listarVenta.jsp">
													 Listar
												</a>
											</li>
                                                                                       
                                                                                        <li  class="">
												<a href="rVentas.jsp">
													 Reportes
												</a>
											</li>
                                                                                        
											
										</ul>
									</li>
                                                                         <li class="nav-parent nav-expanded nav-active">
										<a>
											<i class="fa fa-credit-card" aria-hidden="true"></i>
											<span>Pagos</span>
										</a>
										<ul class="nav nav-children">
											<li class="">
												<a href="administrarPagos.jsp">
													 Registrar
												</a>
											</li>
                                                                                         <li class="nav-active">
												<a href="listarClientesPagos.jsp">
													 Listar
												</a>
											</li>
                                                                                        <li class="">
												<a href="rPago.jsp">
													 Reportes
												</a>
											</li>
											          
											
										</ul>
									</li>
                                                                        
                                                                       
                                                                        
									
									
									
									
									
								</ul>
							</nav>
				
							<hr class="separator" />
				
						
				
							<hr class="separator" />
				
							
						</div>
				
					</div>
				
				</aside>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Pagos</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Pagos</span></li>
								<li><span>Control de pagos</span></li>
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
						
                                        
							<section class="panel">
							<header class="panel-heading">
								
						
								<h2 class="panel-title">Control de pagos</h2>
							</header>
							<div class="panel-body">
								<table style="font-size:11px" class="table table-bordered table-striped mb-none" id="tablebutton" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
									
                                                                        <thead> 
                                                                          
                                                                          Listado de Pagos a Cuentas y Saldos
                                                                          
										<tr>
                                                                                        
											<th class="center hidden-phone">Nombre</th>
											<th class="center hidden-phone">Descripción</th>
											
											
											<th class="center hidden-phone">Valor de venta</th>
											<th class="center hidden-phone">Pago a cuenta</th>
											<th class="center hidden-phone">Saldo actual</th>
											
										</tr>
                                                                        </thead>
									<tbody>
                                                                              <% Double ventas=0.0;
                                                                                         Double saldos=0.0;
                                                                                         Double pagos=0.0;
                                                                                         
                                                                               %>
                                                                             <% for(Cliente c:ClienteDao.listar()) {%>
                                                                            
                                                                             
										<tr class="gradeX">
                                                                                       
                                                                                   
											<% DecimalFormat f = new DecimalFormat("0.00");%>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=c.getNombre() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=c.getDescripcion() %></td>
											 <%for(Venta v:VentaDao.total_cliente(c.getId_cliente())) {%>
                                                                                         <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=f.format(v.getTotal_venta()) %></td>
                                                                                         <%ventas= ventas + (v.getTotal_venta()); %>
                                                                                        <% for(Pago p:PagoDao.MontoCancelado(c.getId_cliente())){ %>
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=f.format(p.getSaldo_total()) %></td>
                                                                                        <%pagos=pagos + ((p.getSaldo_total())); %>
                                                                                        <%saldos=saldos+ ((v.getTotal_venta()-p.getSaldo_total())); %>
                                                                                        
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=f.format(v.getTotal_venta()-p.getSaldo_total()) %></td>
                                                                                        <% }%>
                                                                                        <% }%>
                                                                                       
                                                                                        
                                                                                 
                                                                                          
										</tr>
								               
								               <%} %>	
                                                                               
									</tbody>
                                                                        
                                                                        <thead>
										<tr>
                                                                                        <th></th>   
                                                                                        <th></th>
                                                                                        <th class="center hidden-phone" style="padding-bottom:   0px;color: #000"><b>Total: Valor de ventas</b></th>
											<th class="center hidden-phone" style="padding-bottom:   0px;color: #000"><b>Total: Pagos a cuenta</b></th>
											<th class="center hidden-phone" style="padding-bottom:   0px;color: #000"><b>Total: Saldos Actuales</b></th>
											
											
											
										</tr>
									</thead>
									<tbody>
                                                                            
										<tr class="gradeX">
											<% DecimalFormat f = new DecimalFormat("0.00");%>
                                                                                        <td></td>
                                                                                        <td></td>
                                                                                        <td class="center hidden-phone" style="padding-bottom:   0px;color: #000"><b>S/. <%=f.format(ventas) %></b></td>
                                                                                        
                                                                                        <td class="center hidden-phone" style="padding-bottom:   0px;color: #000"><b>S/. <%=f.format(pagos)%>.</b></td>
                                                                                        <td class="center hidden-phone" style="padding-bottom:   0px;color: #000"><b>S/. <%=f.format(saldos)%></b></td>
                                                                                        
                                                                                         
                                                                                       
										</tr>
								              		
									</tbody>
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
								</table>
                                                        <table  style="font-size: 11px" class="table table-bordered table-striped mb-none" >
									
									 
                                                        </table>                       
                                                                               
							</div>
						</section>
							
							
					
						
					<!-- end: page -->
				<%@include file= "piepage.jsp" %>