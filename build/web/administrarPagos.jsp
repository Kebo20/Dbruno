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
                                                                                        	         <li>
												<a href="gCompras.jsp">
													 Gráficas
												</a>
											</li>
                                                                                        <li class="">
												<a href="rCompras.jsp">
													Reportes
												</a>
											</li>
											
										</ul>
									</li>
                                                                        
                                                                        <li class="nav-parent">
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
												<a href="gVentas.jsp">
													 Gráficas
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
											<li class="nav-active">
												<a href="administrarPagos.jsp">
													 Registrar
												</a>
											</li>
                                                                                        <li class="">
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
								<table  style="font-size:11px" class="table table-bordered table-striped mb-none" id="tablebutton" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
									
							              <thead>
										<tr>
											<th class="center hidden-phone" style="color: #000">D.N.I</th>
											<th class="center hidden-phone" style="color: #000">Nombre</th>
											<th class="center hidden-phone" style="color: #000">Descripción</th>
											
											
											<th class="center hidden-phone" style="color: #000">Ventas</th>
											<th class="center hidden-phone" style="color: #000">Pagos</th>
										</tr>
									</thead>
									<tbody>
                                                                             <% for(Cliente c:ClienteDao.listar()) {%>
                                                                            
                                                                             
										<tr class="gradeX">
                                                                                   
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=c.getCod_dni() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=c.getNombre() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=c.getDescripcion() %></td>
											
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:5px">
                                                                                            
																                                                                                                                                                                                                                                                            
                                                                                            <a    class="btn btn-facebook" style="font-size: 9px;" href="listarVentasCliente.jsp?cliente=<%=c.getId_cliente() %>">
                                                                                                    <i class="ace-icon fa fa-shopping-cart bigger-130" style="color: #ffffff"></i>
											       </a>
                                                                                                                                
                                                                                                                           
													             
											     
                                                                                            
                                                                                        </td>
                                                                                        
                                                                                         <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:5px">
                                                                                            
                                                                                             <a  href="listarPago.jsp?cliente=<%=c.getId_cliente()%>" style="font-size: 9px;" class="btn btn-twitter" >
                                                                                                 <i class="ace-icon fa fa-dollar bigger-130" style="color:#ffffff"></i>
										              </a>
                                                                                          	                                  
                                                                                         
                                                                                            
                                                                                        </td>
                                                                                          
										</tr>
								               
								               <%} %>	
                                                                               
									</tbody>
								</table>
							</div>
						</section>
							
							
					
						
					<!-- end: page -->
  <%@include file="piepage.jsp" %>
