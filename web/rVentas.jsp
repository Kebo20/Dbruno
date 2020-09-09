<%@page import="dao.ClienteDao"%>
<%@page import="modelo.Venta"%>
<%@page import="modelo.Venta"%>
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
											<li  class="">
												<a href="listarVenta.jsp">
													 Listar
												</a>
											</li>
                                                                                        
                                                                                        <li  class="nav-active">
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
						
                    
							<section class="panel">
							<header class="panel-heading">
								
						
								<h2 class="panel-title">Reportes</h2>
							</header>
							<div class="panel-body">
                                                            
                                                                
                                              <div class="row">
                                                  
                                   
						<div class="col-md-6">
							<section class="panel panel-primary">
								<header class="panel-heading">
									

									<h2 class="panel-title">Mensual-Tipo</h2> 

								</header>
								<div class="panel-body">
                                                                       
                                                                    <code class="input-group">
                                                                         <form action="reporteVenta2.jsp">
                                                             
                                                                                      <select name="mes" class="form-group" style="width:110px;color: #000" >
                                                                                                                      
                                                                                          <option value="0">mes</option>
                                                                                          <option value="1">Enero</option>
                                                                                          <option value="2">Febrero</option>
                                                                                          <option value="3">Marzo</option>
                                                                                          <option value="4">Abril</option>
                                                                                          <option value="5">Mayo</option>
                                                                                          <option value="6">Junio</option>
                                                                                          <option value="7">Julio</option>
                                                                                          <option value="8">Agosto</option>
                                                                                          <option value="9">Setiembre</option>
                                                                                          <option value="10">Octubre</option>
                                                                                          <option value="11">Noviembre</option>
                                                                                          <option value="12">Diciembre</option>
                                                                                                                        
                                                                                    </select>  
                                                                                      
                                                                                     <select  name="tipo" class="form-group" style="width:140px;color: #000">
                                                                                                                        <option value="">descripción</option>
                                                                                                                        <optgroup label="Beneficiado">
                                                                                                                        <option value="Entero">Entero</option>
                                                                                                                        <option value="Descargado">Descargado</option>
                                                                                                                        </optgroup>
                                                                                                                         <optgroup label="Brasa">
                                                                                                                        <option value="Brasa">Brasa</option>
                                                                                                                        </optgroup>
                                                                                                                        <optgroup label="Trozado">
                                                                                                                        <option value="Pechuga">Pechuga</option>
                                                                                                                        <option value="Molleja">Molleja</option>
                                                                                                                        <option value="Pierna">Pierna</option>
                                                                                                                        <option value="Alas">Alas</option>
                                                                                                                        <option value="Espinazo">Espinazo</option>
                                                                                                                        <option value="Menudencia">Menudencia</option>
                                                                                                                        <option value="Pollada">Pollada</option>
                                                                                                                        
                                                                                                                         </optgroup>
                                                                                                                         <optgroup label="Vivo">
                                                                                                                        <option value="Vivo">Vivo</option>
                                                                                                                        </optgroup>
                                                                                                                       
                                                                                                                       
                                                                                  </select>
                                                                                        
                                                                             <button type="submit" class="btn btn-primary" style="position:">Ir</button>    
                                                                                       
                                                                          </form>  
                                                                    </code>
								</div>
							</section>
						</div>

						<div class="col-md-6">
							<section class="panel panel-primary">
								<header class="panel-heading">
	
									<h2 class="panel-title">Mensual</h2>
									
								</header>
                                                            
                                                                 
								<div class="panel-body">
                                                                    <code class="input-group">
                                                                        <form action="reporteVenta.jsp">
                                                                           <select name="mes" class="form-group" style="width:110px;color: #000" >
                                                                                                                      
                                                                                          <option value="0">mes</option>
                                                                                          <option value="1">Enero</option>
                                                                                          <option value="2">Febrero</option>
                                                                                          <option value="3">Marzo</option>
                                                                                          <option value="4">Abril</option>
                                                                                          <option value="5">Mayo</option>
                                                                                          <option value="6">Junio</option>
                                                                                          <option value="7">Julio</option>
                                                                                          <option value="8">Agosto</option>
                                                                                          <option value="9">Setiembre</option>
                                                                                          <option value="10">Octubre</option>
                                                                                          <option value="11">Noviembre</option>
                                                                                          <option value="12">Diciembre</option>
                                                                                                                        
                                                                                    </select>  
                                                                                     
                                                                                   <button type="submit" class="btn btn-primary">Ir</button>
   
                                                                                       
                                                                           </form>
                                                                    </code>
								</div>
							</section>
						</div>
                                                  
                                                  
                                              
                                                  
                                          
                                                              
                                                                        
                                        </div>
                                                            
                                         <div class="col-md-6">
							<section class="panel panel-primary">
								<header class="panel-heading">
	
									<h2 class="panel-title">Diario</h2>
									
								</header>
                                                            
                                                                 
								<div class="panel-body">
                                                                    <code class="input-group">
                                                                        <form action="reporteVenta3.jsp">
                                                                           <select name="dia" class="form-group" style="width:70px;color: #000" >
                                                                                                                      
                                                                                          <option value="0">día</option>
                                                                                          <%for (int i = 1; i < 32; i++) { %>
                                                                                          <option value="<%=i %>"><%=i %></option>
                                                                                           <%  } %>
                                                                                          
                                                                                                                        
                                                                             </select>  
                                                                             <select name="mes" class="form-group" style="width:110px;color: #000" >
                                                                                                                      
                                                                                          <option value="0">mes</option>
                                                                                          <option value="1">Enero</option>
                                                                                          <option value="2">Febrero</option>
                                                                                          <option value="3">Marzo</option>
                                                                                          <option value="4">Abril</option>
                                                                                          <option value="5">Mayo</option>
                                                                                          <option value="6">Junio</option>
                                                                                          <option value="7">Julio</option>
                                                                                          <option value="8">Agosto</option>
                                                                                          <option value="9">Setiembre</option>
                                                                                          <option value="10">Octubre</option>
                                                                                          <option value="11">Noviembre</option>
                                                                                          <option value="12">Diciembre</option>
                                                                                                                        
                                                                             </select>  
                                                                                     
                                                                                   <button type="submit" class="btn btn-primary">Ir</button>
   
                                                                                       
                                                                           </form>
                                                                    </code>
								</div>
							</section>
						</div>                   
                                                                       
						</section>
							
							
					
						
					<!-- end: page -->
<%@include file= "piepage.jsp" %>