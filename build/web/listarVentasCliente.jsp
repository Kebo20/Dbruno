<%@page import="dao.ClienteDao"%>
<%@page import="modelo.Venta"%>
<%@page import="modelo.Venta"%>
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
									
									
									
                                                                        
									<li class="nav-parent">
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
											<li>
												
                                                                                                 <a href="listarCliente.jsp">
													 Listar
                                                                                                    </a>
                                                                                                
                                                                                                
											</li>
											
										</ul>
									</li>
                                                                        
                                                                        <li class="nav-parent">
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
												<a href="rVentas.jsp">
													 Reportes
												</a>
											</li>
											
										</ul>
									</li>
                                                                         <li class="nav-parent">
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
						<h2>Ventas</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Pagos</span></li>
								<li><span>Ventas por cliente</span></li>
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
						
                     <script> function eliminar_venta(){
                        
                        var id_venta=$("#id_venta").val();
                        
                        
                        $.ajax({
                            url: "VentaEliminar",
                            data: {
                              id_venta:id_venta
                              
                              
                              
                            },
                            success: function( result ) {
                              $( "#resultadoVe" ).html(result);
                            }
                          });
                               }
                 </script>
							<section class="panel">
							<header class="panel-heading">
								
						
                                                            <h2 class="panel-title">Ventas hechas a: <Strong style="color: green "><%=ClienteDao.cliente(Integer.parseInt(request.getParameter("cliente")))%></Strong> </h2>
							</header>
							<div class="panel-body">
                                                            
                                                          
                                                            
								<table  style="font-size:11px" class="table table-bordered table-striped mb-none" id="tablebutton" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
									
									                    <thead>
										<tr>
											<th class="center hidden-phone">Fecha</th>
											<th class="center hidden-phone">Número de Pollos</th>
											<th class="center hidden-phone">Descripción</th>
											<th class="center hidden-phone">Precio de Kilo(S/.)</th>
											<th class="center hidden-phone">Cantidad (Kg.)</th>
											<th class="center hidden-phone">Total (S/.)</th>
											<th class="center hidden-phone">Cliente</th>
											
											
											
											
										</tr>
									</thead>
									<tbody>
                                                                            <%for(Venta v : VentaDao.ventas_cliente(Integer.parseInt(request.getParameter("cliente")))) {%>
										<tr class="gradeX">
                                                                                      
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:20px;color: #000"><span style='display: none;'><%=v.getFecha_venta().substring(6,10)+v.getFecha_venta().substring(3,5)+v.getFecha_venta().substring(0,2) %></span><%=v.getFecha_venta() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:10px;color: #000"><%=v.getNum_pollos() %></td>
                                                                                        <input id="id_venta" name="venta" type='hidden' value='<%=v.getId_venta()%>'/>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:9px;color: #000"><%=v.getDescripcion() %></td>
											<td class="center hidden-phone"style="padding-top: 0px;padding-bottom:   0px;width:10px;color: #000"><%=v.getPrecio_kilo() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:10px;color: #000"><%=v.getCan_kilo() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:10px;color: #000"><%=v.getTotal_venta() %></td>
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:100px;color: #000"><%=ClienteDao.cliente(v.getId_cliente()) %></td>
                                                                                        
                                                                                       
                                                                                       
                                                                                </tr>
								               <%} %>		
									</tbody>
                                                                       
								</table>
         
                                                                       
                                                                        
							</div>
                                                                       
						</section>
							
							
					
						
					<!-- end: page -->
<%@include file= "piepage.jsp" %>