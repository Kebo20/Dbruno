<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.CompraDao"%>
<%@page import="dao.CompraDao"%>
<%@page import="modelo.Compra"%>
<%@page import="modelo.Venta"%>
<%@page import="java.sql.Date"%>
<%@page import="dao.ClienteDao"%>
<%@page import="modelo.Cliente"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.VentaDao"%>
<%@page session="true" %>
<%@include file= "encabezado.jsp" %>

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
						<h2> SISTEMA DE GESTIÓN DE COMPRAS Y VENTAS</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Inicio</span></li>
								<li><span>Perfil</span></li>
								
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
						
                                        
							<section class="panel">
							<header class="panel-heading">
								
						
								<h2 class="panel-title"></h2>
							</header>
							<div class="panel-body">
                                               <div class='row'>             
                                                
                                                                                        
                                          
                                                <div class="col-xl-3 col-lg-6">
							<section class="panel panel-transparent">
		
								<div class="panel-body">
									<section class="panel panel-group">
										<header class="panel-heading bg-primary">

											<div class="widget-profile-info">
												<div class="profile-picture">
                                                                                                     <img src="assets/images/usuario.png">
                                                                                                      
												</div>
												<div class="profile-info">
                                                                                                    <h4 class="name text-semibold"><% out.print(session.getAttribute("user"));; %></h4>
                                                                                                    <h5 class="role">
                                                                                                        ADMINISTRADOR
                                                                                                    </h5>
													<div class="profile-footer">
														
													</div>
												</div>
											</div>
                                                                                                   

										</header>
										
									</section>

								</div>
							</section>
						</div>                                          
                                                                                                    
                                                   
                                                  
							</div>
							</div>
                                                        <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2019. All rights reserved.</p>                                                
						</section>
							
							
					
						
					<!-- end: page -->
   <%@include file= "piepage.jsp" %>
