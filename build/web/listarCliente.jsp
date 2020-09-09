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
									
									
									
                                                                        
									<li class="nav-parent nav-expanded nav-active">
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
											<li class="nav-active">
												
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
						<h2>Clientes</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Clientes</span></li>
								<li><span>Listar</span></li>
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
						
                                        
							<section class="panel">
							<header class="panel-heading">
								
						
								<h2 class="panel-title">Lista de clientes</h2>
							</header>
							<div class="panel-body">
								<table style="font-size:11px" class="table table-bordered table-striped mb-none" id="tablebutton" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
									
							              <thead>
										<tr>
											<th class="center hidden-phone">D.N.I</th>
											<th class="center hidden-phone">Nombre</th>
											<th class="center hidden-phone">Correo</th>
											<th class="center hidden-phone">Celular</th>
											<th class="center hidden-phone">Dirección</th>
											<th class="center hidden-phone">Descripción</th>
											<th  class="center hidden-phone" ></th>
											<th class="center hidden-phone" ></th>
										</tr>
									</thead>
									<tbody>
                                                                             <% for(Cliente c:ClienteDao.listar()) {%>
                                                                             
										<tr class="gradeX">
                                                                                    
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000;width:9%"><%=c.getCod_dni() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000;width:20%"><%=c.getNombre() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000;width:15%"><%=c.getCorreo() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000;width:9%"><%=c.getCelular() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000;width:10%"><%=c.getDireccion() %></td>
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;color: #000;width:15%"><%=c.getDescripcion() %></td>
                                                                                   
                                                                                       <td class="center hidden-phone" style="padding-top: 0px;padding-bottom: 0px;width:11%">
                                                                                              <form action="actualizarCliente.jsp" method="post">				                                                                                                                                                                                                                                                            
                                                                                                  <button type="submit" style="font-size: 10px" class="btn btn-success"  name="cliente" value="<%=c.getId_cliente() %>">
                                                                                                    <i class="ace-icon fa fa-pencil bigger-130" style="color: #ffffff"> </i>
									                        </button>
                                                                                              </form>
                                                                                        </td>
                                                                                        
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom: 0px;width:11%">
                                                                                            <button type="button"  style="font-size: 10px" class="btn btn-danger"  onclick="eliminar(<%=c.getId_cliente() %>)" >
                                                                                                <i class="ace-icon fa fa-trash-o bigger-130" style="color: #ffffff">  </i>
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
                                                                                                                        <h4 class="modal-title" align="left" style="color: #000">Eliminar Cliente </h4>
                                                                                                                    </div>
                                                                                                                    <div class="modal-body">
                                                                                                                        <p align="left" style="color: #000 "><big>¿Está seguro de eliminar este cliente?</big></p>

                                                                                                                    </div>
                                                                                                                    <form action="ClienteEliminar" method="post">  
                                                                                                                    <div class="modal-footer">

                                                                                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                                                                                                            
                                                                                                                        <button  type="submit" name="cliente" id="btneliminar" class="btn btn-danger" >Eliminar</button>
                                                                                                                           
                                                                                                                    </div>
                                                                                                                    </form>     
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div> 
                                                                        
                                                                        
                                                                        
                                                                        
							</div>
						</section>
							
							
					
						
					<!-- end: page -->
  <%@include file= "piepage.jsp" %>