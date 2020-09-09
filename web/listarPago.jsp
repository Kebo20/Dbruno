<%@page import="java.text.DecimalFormat"%>
<%@page import="modelo.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PagoDao"%>
<%@page import="modelo.Pago"%>
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
							Navegación
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
                                                                                         <li  class="">
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
						<h2>Pagos</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Pagos</span></li>
								<li><span>Listar</span></li>
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
						
                                        
							<section class="panel">
							<header class="panel-heading">
							                          
                                                                                 
                                                                                      <%for(Venta v:VentaDao.total_cliente(Integer.parseInt(request.getParameter("cliente").trim()))) {%>
                                                                                      
                                                                                       <% for(Pago p:PagoDao.MontoCancelado(Integer.parseInt(request.getParameter("cliente")))){ %>
                                                                                    <a  style="color:#EDEDDE ;" href="#ModalAñadir" data-toggle="modal"  class="btn btn-primary"><i class="fa fa-plus">Añadir Pago</i></a> 
                                                                                       <% }%>

                                                                                    <% }%>
                                                                                    
                                                                                    <%@include file="añadirPago.jsp" %>
                                                                                    
                                                                                    <br>
							</header>
							<div class="panel-body">
                                                                                    <a  style="color:#000000 ;position: absolute;left: 900px;" onclick="imprimir('areaImprimir')" class="btn btn-default"><i class="fa fa-print"> Imprimir</i></a> 
                                                                                       
										
                                                          <div id='areaImprimir' >   
                                                                   
                                                           
                                                             <section style="" class="panel panel-featured-left panel-featured-secondary">
                                                                <div class="panel-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-secondary">
														<i class="fa fa-usd"></i>
													</div>
																								</div>
<div class="widget-summary-col">
													<div class="summary">
                                                                                                            <%for(Cliente c:ClienteDao.getCliente(Integer.parseInt(request.getParameter("cliente")))) {%>
                                                                                                            <h3 class="title" style="color: #002D57"><%=c.getNombre() %> ( <%=c.getDireccion()%>)</h3>
                                                                                                            <% }%>
                                                                                                            <% DecimalFormat f = new DecimalFormat("0.00");%>
														<div class="info">
                                                                                                                     <%for(Venta v:VentaDao.total_cliente(Integer.parseInt(request.getParameter("cliente").trim()))) {%>
                                                                                                                     <p style="font-size:16px;color: #000">Deuda Inicial  <i style="color: #EDEDDE">--------</i>= S/. <%=f.format(v.getTotal_venta()) %></p>
														     
                                                                                                                      
                                                                                                                      <% for(Pago p:PagoDao.MontoCancelado(Integer.parseInt(request.getParameter("cliente")))){ %>
                                                                                                                      <p style="font-size:16px;color: #000">Monto Cancelado <i style="color: #EDEDDE">-</i> =  S/. <%= f.format(p.getSaldo_total()) %></p>
                                                                                                                         
                                                                                                                      <p style="font-size:16px;color: #000">Deuda Actual <i style="color: #EDEDDE">--------</i>= <i style="color: #f00">S/. <%=f.format(v.getTotal_venta()-p.getSaldo_total() )%></i></p>
                                                                                                                     <% }%>
                                                                                                                     <% }%>

                                                                                                                </div>
													</div>
													
												</div>
											</div>
											</div>
                                                                
                                                            </section>
											
                                                                
                                                            
                                                                   
							           <table style="font-size:13px" class="table table-bordered table-striped mb-none">
									
									                    <thead>
										<tr>
											<th class="center hidden-phone">Fecha</th>
											<th class="center hidden-phone">Monto cancelado</th>
											
											
											
											
											<th class="center hidden-phone"></th>
											
										</tr>
									</thead>
									<tbody>
                                                                           
                                                                            <% for(Pago p:PagoDao.PagosporCliente(Integer.parseInt(request.getParameter("cliente").trim()) )) {%>
										<tr class="gradeX">
                                                                                    
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000"><%=p.getFecha_pago()%></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000">S/. <%=p.getPago_diario() %></td>
											
                                                                                        
                                                                                        <input name="pago" type="hidden" value="<%=p.getId_pago()%>" />
                                                                                        
   	      
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px">
                                                                                            
                                                                                                
                                                                                            <button type="button" class="red" style="background-color: transparent;border: 0px" onclick="eliminar(<%=p.getId_pago()%>,<%=p.getId_cliente()%>)" >
													 	<i class="ace-icon fa fa-trash-o bigger-130" style="color: #f00 "></i>
													</button>
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                                          
                                                                                                            
                                                                                                                            
											   
                                                                                            
                                                                                        </td>
									          
										</tr>
								               <%} %>
                                                                               
									</tbody>
								</table>
                                                               </div>
                                                               </div>
                                                                          <script>	
                                                                      function imprimir(nombreDiv) {
                                                                         var contenido= document.getElementById(nombreDiv).innerHTML;
                                                                         var contenidoOriginal= document.body.innerHTML;

                                                                         document.body.innerHTML = contenido;

                                                                         window.print();

                                                                         document.body.innerHTML = contenidoOriginal;
                                                                         }
                                                                      </script>         
                                                                      <script>
                                                                        function eliminar(id,cliente){
                                                                            
                                                                            $('#ModalEliminar').modal('show');
                                                                            $('#btneliminar').val(id);
                                                                            $('#cliente').val(cliente);
                                                                            
                                                                        
                                                                        }
                                                                        </script>
                                                                               
                                                                                                     <div id="ModalEliminar" class="modal fade">
                                                                                                            <div class="modal-dialog">
                                                                                                                <div class="modal-content">
                                                                                                                    <div class="modal-header">
                                                                                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                                                                        <h4 class="modal-title" align="left" style="color: #000">Eliminar Pago</h4>
                                                                                                                    </div>
                                                                                                                    <div class="modal-body">
                                                                                                                        <p align="left" style="color: #000 "><big>¿Está seguro de eliminar este pago?</big></p>

                                                                                                                    </div>
                                                                                                                   <form action="PagoEliminar" method="post">
                                                                                                                    <div class="modal-footer">
                                                                                                                        <input type="hidden" name="cliente" id="cliente" />

                                                                                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                
                                                                                                                        <button  type="submit" name="pago" id="btneliminar" class="btn btn-danger" >Eliminar</button>
                                                                                                                        
                                                                                                                           
                                                                                                                    </div>
                                                                                                                    </form>     
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>                  
                                                                         
							
						</section>
							
							
					
						
					<!-- end: page -->
<%@include file= "piepage.jsp" %>
