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
                                                                        
                                                                        <li class="nav-parent nav-expanded nav-active">
										<a>
											<i class="fa fa-shopping-cart" aria-hidden="true"></i>
											<span>Compras</span>
										</a>
										<ul class="nav nav-children">
											<li class="nav-active">
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
											<li>
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
								<li><span>Registrar</span></li>
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
                                         <script src="js/jquery-3.3.1.min.js"></script>
                <script>
                    function registrar_compra(){
                        
                        var fecha_compra=$("#fecha_compra").val();
                        var num_guia=$("#num_guia").val();
                        var num_pollos=$("#num_pollos").val();
                        var descripcion_compra=$("#descripcion_compra").val();
                        var precio_kilo=$("#precio_kilo").val();
                        var can_kilo=$("#can_kilo").val();
                        var total_compra=$("#total_compra").val();
                        
                        $.ajax({
                            url: "CompraControl",
                            data: {
                              fecha_compra:fecha_compra,
                              num_guia:num_guia,
                              num_pollos:num_pollos,
                              descripcion_compra:descripcion_compra,
                              precio_kilo:precio_kilo,
                             can_kilo:can_kilo,
                             total_compra:total_compra
                              
                            },
                            success: function( result ) {
                              $( "#resultadoCo" ).html(result);
                            }
                          });
                               }
                 </script>
                                        
                                        
                                        
						<div class="row">
							<div class="col-lg-12">
								
						
								
						
								<section class="panel">
									<header class="panel-heading">
						
										<h2 class="panel-title">Registrar Compra</h2>
									</header>
									<div class="panel-body">
									
                                                                                 <div class="col-md-6">
                                                                                          
                                                                                       <form  action="registrarCompra.jsp" class="form-horizontal" > 
                                                                                                   
                                                                                                 <script> 
                                                                                                    
                                                                                                                    function multiplicar(){
                                                                                                                                m1 = document.getElementById("can_kilo").value;
                                                                                                                                m2 = document.getElementById("precio_kilo").value;
                                                                                                                                r = m1*m2;
                                                                                                                                document.getElementById("total_compra").value =  Math.round(r*100)/100;
    
                                                                                                                                             }
                        
                                                                                                </script>
               
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
                                                                                                                    <input type="text" id="fecha_compra" data-plugin-datepicker="" class="form-control" placeholder="Fecha de la Compra" autocomplete="off"  required>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="form-group">
                                                                                                            <label class="col-sm-3 control-label">N° Guía<span class="required">*</span></label>
                                                                                                            
                                                                                                            <div class="input-group mb-md">
                                                                                                                <span class="input-group-addon">
															<i class="fa fa-file"></i>
													        </span>
                                                                                                                <input type="text" id="num_guia" onkeypress="return justNumbers(event);" class="form-control"  placeholder="Número de Guía" autocomplete="off" autofocus required/>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="form-group">
                                                                                                            <label class="col-sm-3 control-label">Pollos<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                  <span class="input-group-addon">
														        <i class="fa fa-delicious"></i>
													          </span>
                                                                                                                <input type="text" id="num_pollos" onkeypress="return justNumbers(event);"  class="form-control"  placeholder="Cantidad de Pollos" autocomplete="off" required/>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="form-group">
                                                                                                            <label class="col-sm-3 control-label">Descripción<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                   <span class="input-group-addon">
															<i class="fa fa-hacker-news"></i>
														   </span>
                                                                                                                    <select id="descripcion_compra" class="form-control  ">
                                                                                                                        <option>Brasa</option>
                                                                                                                        <option>Carne</option>
                                                                                                                        <option>Tipo</option>
                                                                                                                    </select>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                      
                                                                                                   <div class="form-group">
                                                                                                            <label class="col-sm-3 control-label">Precio<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                   <span class="input-group-addon">
															<i class="fa fa-dollar"></i>
														   </span>
                                                                                                                <input type="text" id="precio_kilo" onkeypress="return justNumbers(event);"  onkeyup="multiplicar();" class="form-control" autocomplete="off" placeholder="Precio por Kilo" required/>
                                                                                                            </div>
                                                                                                    </div>
                                                                                         
                                                                                                    <div class="form-group">
                                                                                                            <label class="col-sm-3 control-label">Cantidad<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                    <span class="input-group-addon">
															<i class="fa fa-navicon"></i>
														   </span>
                                                                                                                <input type="text" id="can_kilo"  onkeypress="return justNumbers(event);"   onkeyup="multiplicar();" class="form-control" autocomplete="off" placeholder="Cantidad de Kilos" required/>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                
                                                                                                    <div class="form-group">
                                                                                                            <label class="col-sm-3 control-label">Total<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                    <span class="input-group-addon">
															<i class="fa fa-dollar"></i>
														   </span>
                                                                                                                    <input type="text" id="total_compra"  class="form-control" placeholder="Total por Compra" autocomplete="off" required  readonly/>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                
                                                                                              
                                                                                            </div>
                                                                                            
                                                                                                                            <footer class="panel-footer">
                                                                                                                                    <div class="row">
                                                                                                                                            <div class="col-sm-9 col-sm-offset-3">
                                                                                                                                                
                                                                                                                                                   <a  onclick=" return validarFormularioCompra()" class="btn btn-primary" >Registrar</a>
                                                                                                                                                    <button id="btnformulario"  value="" style="border: 0px"></button>
                                                                                                                                                    <a id="modal" href="#Modal" data-toggle="modal"></a>  
                                                                                                                                            </div>
                                                                                                                                        
                                                                                                                                           
                                                                                                                                    </div>
                                                                                                                            </footer>
                                                                                                                             
                                                                                                                          <div id="Modal" class="modal fade">
                                                                                                                               <div class="modal-dialog">
                                                                                                                                   <div class="modal-content">
                                                                                                                                       <div class="modal-header">
                                                                                                                                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                                                                                           <h4 class="modal-title" style="color: #000">Mensaje</h4>
                                                                                                                                       </div>
                                                                                                                                       <div  id="resultadoCo" >




                                                                                                                                        </div>

                                                                                                                                   </div>
                                                                                                                               </div>
                                                                                                                           </div>
                                                                                                
                                                                                                
                                                                                           </form>
                                                                                  </div>
                                                                               
									</div>
								</section>
						
							</div>
						</div>
						
					
					<!-- end: page -->
<%@include file= "piepage.jsp" %>