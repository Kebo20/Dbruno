<%@page import="dao.CompraDao"%>
<%@page import="modelo.Compra"%>
<%@page import="modelo.Compra"%>
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
                                                                        
                                                                        <li class="nav-parent nav-expanded nav-active">
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
											<li class="nav-active">
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
											<li  >
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
						<h2>Compras</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Compras</span></li>
								<li><span>Listar</span></li>
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
						
                                        
							<section class="panel">
							<header class="panel-heading">
								
						
								<h2 class="panel-title">Lista de compras</h2>
							</header>
							<div class="panel-body">
								<table  style="font-size:11px" class="table table-bordered table-striped mb-none" id="tablebutton" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
									
									                    <thead>
										<tr>
											<th class="center hidden-phone">Fecha</th>
											<th class="center hidden-phone">#Guía</th>
                                                                                        <th class="center hidden-phone">Pollos</th>                          
											<th class="center hidden-phone">Descripción</th>
                                                                                        <th class="center hidden-phone">Cantidad(Kg.)</th>
											<th class="center hidden-phone">Kilo(S/.)</th>
											<th class="center hidden-phone">Total(S/.)</th>
											<th class="center hidden-phone"></th>
											
											
										</tr>
									</thead>
									<tbody>
                                                                             <% for(Compra co:CompraDao.listar()) {%>
										<tr class="gradeX">
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:30px;color: #000"><span style='display: none;'><%=co.getFecha_compra().substring(6,10)+co.getFecha_compra().substring(3,5)+co.getFecha_compra().substring(0,2) %></span><%=co.getFecha_compra() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:40px;color: #000"><%=co.getNum_guia() %></td>
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:30px;color: #000"><%=co.getNum_pollos() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:20px;color: #000"><%=co.getDescripcion() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:20px;color: #000"><%=co.getCan_kilo()  %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:80px;color: #000"><%=co.getPrecio_kilo() %></td>
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:20px;color: #000"><%=co.getTotal_compra() %></td>
                                                                                        
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:10px">
                                                                                            <button  type="button" style="background-color: transparent;border: 0px"   class="red" onclick="eliminar(<%=co.getId_compra()%>)">
                                                                                                <i class="ace-icon fa fa-trash-o bigger-130" style="color: #f00"></i>
                                                                                            </button>
                                                                                        </td>
                                                                                       
										</tr>
								               <%} %>		
									</tbody>
								</table>
                                                                        
                                                                        
                                                                        <script>
                                                                        function eliminar(id){
                                                                            
                                                                            $('#ModalEliminar').modal('show');
                                                                            $('#btneliminar').val(id);
                                                                            
                                                                        
                                                                        }
                                                                        </script>
                                                                        
                                                                        
                                                                                                                     
                                                                                               <div id="ModalEliminar" class="modal fade">
                                                                                                            <div class="modal-dialog">
                                                                                                                <div class="modal-content">
                                                                                                                    <div class="modal-header">
                                                                                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                                                                        <h4 class="modal-title" align="left" style="color: #000">Eliminar Compra </h4>
                                                                                                                    </div>
                                                                                                                    <div class="modal-body">
                                                                                                                        <p align="left" style="color: #000 "><big>¿Está seguro de eliminar esta compra?</big></p>

                                                                                                                    </div>
                                                                                                                    <form action="CompraEliminar" method="post">  
                                                                                                                    <div class="modal-footer">

                                                                                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                                                                                                            
                                                                                                                        <button  type="submit" name="compra" id="btneliminar" class="btn btn-danger" >Eliminar</button>
                                                                                                                           
                                                                                                                    </div>
                                                                                                                    </form>     
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div> 
							</div>
                                                                        
                                                               
						</section>
							
							
					
						
					<!-- end: page -->
				<%@include file= "piepage.jsp" %>