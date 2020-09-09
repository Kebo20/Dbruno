<%@page import="dao.VentaDao"%>
<%@page import="modelo.Venta"%>
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
								<li><span>Ventas Anteriores</span></li>
								<li><span>Registrar</span></li>
							</ol>
					
							
						</div>
					</header>

					<!-- start: page -->
                                        
                                        
                  <script src="js/jquery-3.3.1.min.js"></script>
                    <script>
                    function registrar_venta2(){
                        
                        var id_cliente=$("#id_cliente").val();
                        var total_venta=$("#total_venta").val();
                        
                        $.ajax({
                            url: "VentaControl2",
                            data: {
                              
                              total_venta:total_venta,
                              id_cliente:id_cliente
                              
                              
                            },
                            success: function( result ) {
                              $( "#resultadoV" ).html(result);
                            }
                          });
                               }
                 </script>
                 
               		<div class="row">
							<div class="col-lg-12">
								
                
								
						
								<section class="panel">
									<header class="panel-heading">
						
                                                                            <h2 class="panel-title">Registrar Venta</h2>
									</header>
									<div class="panel-body">
									
                                                                                 <div class="col-md-6">
                                                                                        <form  action="registrarVenta.jsp" class="form-horizontal" > 
                                                                                         
                                                                                            <div class="panel-body">
                                                                                                    <div class="validation-message">
                                                                                                            <ul></ul>
                                                                                                    </div>
                                                                                                      
                                                                                                  
                                                                                                     <div class="form-group ">
                                                                                                            <label class="col-sm-3 control-label">Cliente<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                    <span class="input-group-addon">
															<i class="fa fa-user"></i>
														   </span>
                                                                                                                    
                                                                                                                
                                                                                                                <select id="id_cliente" class="form-control" autofocus >
                                                                                                                      
                                                                                                                       <% for(Cliente c:ClienteDao.listar()){%>
                                                                                                                        <option value="<%=c.getId_cliente() %>"><%= c.getNombre() %></option>
                                                                                                                        <% } %>
                                                                                                                   </select>
                                                                                                                            
                                                                                                                 
                                                                                                            </div>
                                                                                                                   
                                                                                                    </div>
                                                                                               
                                                                                                   
                                                                                                    <div class="form-group">
                                                                                                        
                                                                                                        
                                                                                                        <div class="form-group ">
                                                                                                            <label class="col-sm-3 control-label">Total (S/.)<span class="required">*</span></label>
                                                                                                            <div class="input-group mb-md">
                                                                                                                    <span class="input-group-addon">
															<i class="fa fa-user"></i>
														   </span>
                                                                                                                   
                                                                                                                <input type="text" id="total_venta"  onkeypress="return justNumbers(event)" class="form-control" value="" placeholder="Total por Venta (S/.)" required />
                                                                                                                
                                                                                                               
                                                                                                            </div>
                                                                                                                   
                                                                                                       </div>
                                                                                                                       
                                                                                                    </div>      
                                                                                                                   
                                                                                                                   <a  style="position: absolute; left: 27%;right: 5%;width: 80px"   onclick=" return validarFormularioVenta2()" class="btn btn-primary" >
                                                                                                               Registrar
                                                                                                      </a>
                                                                                                                    
                                                                                                    <button id="btnformulario"  value="" style="border: 0px"></button>
                                                                                                     <a id="modal" href="#Modal" data-toggle="modal"></a> 
                                                                                            </div>
                                                                                                           
                                                                                                                   
                                                                                            
                                                                                                                            
                                                                                                                                                                                
                                                                                       
                                                                                                                                 
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
                                                                                                                                        
                                                             <div class="col-md-6">                                                            
                                                                            
                                                             
                                                            <table  style="font-size:11px;" class="table table-bordered table-striped mb-none"  >
									
									                    <thead>
										<tr>
											
											<th class="center hidden-phone">Fecha</th>
                                                                                        <th class="center hidden-phone">Cliente</th>
                                                                                      
											<th class="center hidden-phone">Total(S/.)</th>
											
											<th class="center hidden-phone"></th>
											
											
											
										</tr>
									</thead>
									<tbody>
                                                                             <% for(Venta v:VentaDao.listar2()) {%>
										<tr class="gradeX"  >
                                                                                      
                                                                                     
                                                                                       <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:20px;color: #000"><span style='display: none;'><%=v.getFecha_venta().substring(6,10)+v.getFecha_venta().substring(3,5)+v.getFecha_venta().substring(0,2) %></span><%=v.getFecha_venta() %></td>
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:  0px;width:100px;color: #000"><%=ClienteDao.cliente(v.getId_cliente()) %></td>
                                                                                        
											<td class="center hidden-phone" style="padding-top: 0px;padding-bottom:  0px;width:10px;color: #000"><%=v.getTotal_venta()%></td>
                                                                                        
                                                                                        
                                                                                         <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:  0px;width:5px">
                                                                                                     
                                                                                             <button  type="button" class="red" style="background-color: transparent;border: 0px" onclick="eliminar(<%=v.getId_venta()%>)" >
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
                                                                                                                        <h4 class="modal-title" align="left" style="color: #000">Eliminar Venta</h4>
                                                                                                                    </div>
                                                                                                                    <div class="modal-body">
                                                                                                                        <p align="left" style="color: #000 "><big>¿Está seguro de eliminar esta venta?</big></p>

                                                                                                                    </div>
                                                                                                                     
                                                                                                                    <div class="modal-footer">
                                                                                                                        <form action="VentaEliminar2" method="post">

                                                                                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                                                                                                            
                                                                                                                        <button  type="submit" name="venta" id="btneliminar" class="btn btn-danger" >Eliminar</button>
                                                                                                                       </form>
                                                                                                                    </div>
                                                                                                                       
                                                                                                                </div>
                                                                                                            </div>
                                                                                                    </div>  
                                                                                   
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                             </div>
                                                                                        </div>
                                                                                                                   
                                                                                                                   
                                                                                                                            
                                                                                                                  
                                                                                         
                                                                                                                     
                                           
                                                                                                                            
                                                                                  </div>
                                                                               
									</div>
								</section>
						
							</div>
						</div>
						
					
					<!-- end: page -->
<%@include file= "piepage.jsp" %>