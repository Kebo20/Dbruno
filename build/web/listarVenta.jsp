<%@page import="dao.ClienteDao"%>
<%@page import="modelo.Venta"%>
<%@page import="modelo.Venta"%>
<%@page import="dao.VentaDao"%>
<%@page session="true" %>
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
                                                                                                 
                                                                                        <li>
												<a href="rCompras.jsp">
													Reportes
												</a>
											</li>
											
										</ul>
									</li>
                                                                        
                                                                        <li class="nav-parent nav-expanded nav-active">
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
											<li  class="nav-active">
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
								<li><span>Ventas</span></li>
								<li><span>Listar</span></li>
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
								
						
								<h2 class="panel-title">Lista de ventas</h2>
							</header>
							<div class="panel-body">
                                                            
                                                           
                                                            
                                                            <table  style="font-size:15px" class="table table-bordered table-striped text-right mb-none" id="tableVenta" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
									
									                    <thead>
										<tr>
											
											<th class="center hidden-phone">Fecha</th>
                                                                                        <th class="center hidden-phone">Cliente</th>
                                                                                        <th class="center hidden-phone">Pollos</th>
                                                                                        <th class="center hidden-phone">Descripción</th>
											
											<th class="center hidden-phone">Cantidad (Kg.)</th>
											<th class="center hidden-phone">Kilo(S/.)</th>
											
											<th class="center hidden-phone">Total(S/.)</th>
											
											<th class="center hidden-phone"></th>
											
											
											
										</tr>
									</thead>
									<tbody style="padding: 0px" >
                                                                           	
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
                                                                                                                        <h4 class="modal-title" align="left" style="color: #000">Eliminar Venta</h4>
                                                                                                                    </div>
                                                                                                                    <div class="modal-body">
                                                                                                                        <p align="left" style="color: #000 "><big>¿Está seguro de eliminar esta venta?</big></p>

                                                                                                                    </div>
                                                                                                                     
                                                                                                                    <div class="modal-footer">
                                                                                                                        <form action="VentaEliminar" method="post">

                                                                                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                                                                                                            
                                                                                                                        <button  type="submit" name="venta" id="btneliminar" class="btn btn-danger" >Eliminar</button>
                                                                                                                       </form>
                                                                                                                    </div>
                                                                                                                       
                                                                                                                </div>
                                                                                                            </div>
                                                                                                    </div>  
                                                                       
                                                                        
							</div>
                                                                       
						</section>
							
							
					
						
					<!-- end: page -->
<%@include file= "piepage.jsp" %>
