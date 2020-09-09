<%@page import="dao.ClienteDao"%>
<%@page import="modelo.Cliente"%>
<%@page session="true" %>
<%@include file= "encabezado.jsp" %>

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
                                                                                         	
                                                                                        <li class="">
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
											<li class="nav-active">
												<a href="registrarVenta.jsp">
													 Registrar
												</a>
											</li>
											<li >
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
								<li><span>Registrar</span></li>
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
                                        
                                        
                  <script src="js/jquery-3.3.1.min.js"></script>
                    <script>
                    function registrar_venta(){
                        
                        var fecha_venta=$("#fecha_venta").val();
                        var num_pollos=$("#num_pollos").val();
                        var descripcion_venta=$("#descripcion_venta").val();
                        var precio_kilo=$("#precio_kilo").val();
                        var can_kilo=$("#can_kilo").val();
                        var total_venta=$("#total_venta").val();
                        var id_cliente=$("#id_cliente").val();
                        
                        $.ajax({
                            url: "VentaControl",
                            data: {
                              fecha_venta:fecha_venta,
                              num_pollos:num_pollos,
                              descripcion_venta:descripcion_venta,
                              precio_kilo:precio_kilo,
                              can_kilo:can_kilo,
                              total_venta:total_venta,
                              id_cliente:id_cliente
                              
                              
                            },
                            success: function( result ) {
                              $( "#resultadoV" ).html(result);
                            }
                          });
                               }
                 </script>
                 
                  <script>
                    function formulario(){
                        
                        
                        var descripcion_venta=$("#descripcion_venta").val();
                        
                        
                        $.ajax({
                            url: "VentaFormulario",
                            data: {
                              
                              descripcion_venta:descripcion_venta
                          
                            },
                            success: function( result ) {
                              $( "#formulario" ).html(result);
                            }
                          });
                               }
                 </script>
						<div class="row">
							<div class="col-lg-12">
								
                
								
						
								<section class="panel">
									<header class="panel-heading">
						
                                                                            <h2 class="panel-title">Registrar Venta</h2>
                                                                            <a href="registrarVenta2.jsp" style="position:absolute ;right: 5% ;top: 30%">Ventas anteriores</a>
									</header>
									<div class="panel-body">
									
                                                                                 <div class="col-md-6">
                                                                                          <form  action="registrarVenta.jsp" class="form-horizontal" > 
                                                                                            <div class="panel-body">
                                                                                                    <div class="validation-message">
                                                                                                            <ul></ul>
                                                                                                    </div>
                                                                                                      
                                                                                                    <div class="form-group">
                                                                                                            <label class="col-sm-3 control-label">Fecha<span class="required">*</span></label>
                                                                                                            
                                                                                                            <div class="input-group mb-md">
                                                                                                                <span class="input-group-addon">
															<i class="fa fa-calendar"></i>
													        </span>
                                                                                                                
                                                                                                               <input  id="fecha_venta" data-plugin-datepicker  class="form-control" placeholder="Fecha de la Venta" autocomplete="off"  required>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                     <div class="form-group ">
                                                                                                            <label class="col-sm-3 control-label">Cliente<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                    <span class="input-group-addon">
															<i class="fa fa-user"></i>
														   </span>
                                                                                                                    
                                                                                                                
                                                                                                                <select id="id_cliente" class="form-control" >
                                                                                                                      
                                                                                                                       <% for(Cliente c:ClienteDao.listar()){%>
                                                                                                                        <option value="<%=c.getId_cliente() %>"><%= c.getNombre() %></option>
                                                                                                                        <% } %>
                                                                                                                   </select>
                                                                                                                            
                                                                                                                 
                                                                                                            </div>
                                                                                                                   
                                                                                                    </div>
                                                                                               
                                                                                                    <div class="form-group">
                                                                                                            <label class="col-sm-3 control-label">Descripción<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                   <span class="input-group-addon">
															<i class="fa fa-hacker-news"></i>
														   </span>
                                                                                                                <select id="descripcion_venta"  onclick="formulario()"  class="form-control populate" >
                                                                                                                        
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
                                                                                                               
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    
                                                                                                                   <div class="form-group">
                                                                                                                       
                                                                                                                   </div>              
                                                                                                    
                                                                                               
                                                                                                <div id="formulario">
                                                                                                    
                                                                                                    
                                                                                                </div>
                                                                                                
                                                                                                
                                                                                                                                                                   
                                                                                                   
                                                                                                     
                                                                                                                                                                   
                                                                                                
                                                                                              
                                                                                            </div>
                                                                                            
                                                                                                                            <footer class="panel-footer">
                                                                                                                                    <div class="row">
                                                                                                                                            <div class="col-sm-9 col-sm-offset-3">
                                                                                                                                                   
                                                                                                                                                <a  onclick=" return validarFormularioVenta()" class="btn btn-primary" >Registrar</a>
                                                                                                                                                    <button id="btnformulario"  value="" style="border: 0px"></button>
                                                                                                                                                    <a id="modal" href="#Modal" data-toggle="modal"></a>  
                                                                                                                                                   
                                                                                                                                            </div>  
                                                                                                                                    </div>    
                                                                                                                            </footer>
                                                                                                                   
                                                                                                                        <!-- Modal / Ventana / Overlay en HTML -->
                                                                                                                        <div id="Modal" class="modal fade">
                                                                                                                               <div class="modal-dialog">
                                                                                                                                   <div class="modal-content">
                                                                                                                                       <div class="modal-header">
                                                                                                                                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                                                                                           <h4 class="modal-title" style="color: #000">Mensaje</h4>
                                                                                                                                       </div>
                                                                                                                                       <div  id="resultadoV" >
                                                                          

                                                                                                                                        </div>

                                                                                                                                   </div>
                                                                                                                               </div>
                                                                                                                           </div>
                                                                                          </form>
                                                                                                                                                       
                                                                                                                                                            
                                                                                                                                        
                         
                                                                                                                                            </div>
                                                                                                                                        
                                                                                                                                            
                                                                                                                                    </div>
                                                                                                                   
                                                                                                                   
                                                                                                                            
                                                                                                                  
                                                                                         
                                                                                                                     
                                           
                                                                                                                            
                                                                                  </div>
                                                                               
									</div>
								</section>
						
							</div>
						</div>
						
					
					<!-- end: page -->
<%@include file= "piepage.jsp" %>