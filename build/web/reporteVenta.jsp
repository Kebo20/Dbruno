<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.ClienteDao"%>
<%@page import="dao.VentaDao"%>
<%@page import="modelo.Venta"%>
<%@page import="dao.CompraDao"%>
<%@page import="modelo.Compra"%>
<%@page import="modelo.Compra"%>
<%@page session="true" %>
<%@include file= "encabezado.jsp" %>


			<!-- end: header -->
  <% String mes="";
        switch(Integer.parseInt(request.getParameter("mes"))) {

        case 1: mes="Enero";break;
        case 2: mes="Febrero";break;
        case 3: mes="Marzo";break;
        case 4: mes="Abril";break;
        case 5: mes="Mayo";break;
        case 6: mes="Junio";break;
        case 7: mes="Julio";break;
        case 8: mes="Agosto";break;
        case 9: mes="Setiembre";break;
        case 10: mes="Octubre";break;
        case 11: mes="Noviembre";break;
        case 12: mes="Diciembre";
        default: mes="";
        }
    %>
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
											<li class="">
												<a href="listarCompra.jsp">
													 Listar
												</a>
											</li>
                                                                                       
                                                                                               
                                                                                        <li >
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
											<li  >
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
                                        <script>	
                                          function imprimir(nombreDiv) {
                                             var contenido= document.getElementById(nombreDiv).innerHTML;
                                             var contenidoOriginal= document.body.innerHTML;

                                             document.body.innerHTML = contenido;

                                             window.print();

                                             document.body.innerHTML = contenidoOriginal;
                                             
                                             }
                                          </script>

							<section class="panel">
							<header class="panel-heading">
								 <h2 class="panel-title" style='color: #007ebd'>Reporte de <%=mes  %> - VENTAS</h2>
							</header>
							<div class="panel-body">
                                                            <div class="mb-md">
                                                                <a  style="color:#000000 ;position: absolute;left: 900px;top: 110px" onclick="imprimir('areaImprimir')" class="btn btn-default"><i class="fa fa-print"> Imprimir</i></a> 
                                                            </div>
                                                            <div id="areaImprimir" >
                                                                <h2 class="panel-title" style='color: #ffffff'>Reporte de <%=mes  %> - VENTAS</h2>
                                                                <br>

                                                                <table  style="font-size: 11px" class="table table-bordered table-striped mb-none" >
									
                                                                        <thead>
										<tr>
											
											<th class="center hidden-phone">Fecha</th>
                                                                                       											
											<th class="center hidden-phone">Total</th>
											
																	
											
											
										</tr>
									</thead>
									<tbody>
                                                                             <%double total=0.0; %>
                                                                            <% for(Venta v:VentaDao.listar(request.getParameter("mes"))) {%>
										<tr class="gradeX">
                                                                                      
                                                                                     <% DecimalFormat f = new DecimalFormat("0.00");%>
                                                                                    <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:50%;color: #000"><span style='display: none;'><%=v.getFecha_venta().substring(6,10)+v.getFecha_venta().substring(3,5)+v.getFecha_venta().substring(0,2) %></span><%=v.getFecha_venta() %></td>
                                                                                   
                                                                                    <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:50%;color: #000">S/. <%=f.format(v.getTotal_venta())%></td>
                                                                                     <%total=total+v.getTotal_venta();%>    
                                                                                  
                                                                                </tr>
								               <%} %>		
									</tbody>

								</table>
                                                                
                                                                <table class="table table-bordered table-striped mb-none" style="border :#ffffff ">
									
									<tbody>
                                                                           
										<tr class="gradeX">
											<% DecimalFormat f = new DecimalFormat("0.00");%>
											<td class="center hidden-phone" style="width: 25%;color: #000;border :#ffffff "></td>
                                                                                        
                                                                                        <td class="center hidden-phone" style="width: 25%;color: #000 ;border :#ffffff"></td>
                                                                                        <td class="center hidden-phone" style="width: 50%;color: #000;border :#ffffff" ><b>S/.<%=f.format(total)%></b></td>
                                                                                        
                                                                                         
                                                                                       
										</tr>
								               	
									</tbody>
                                                                </table>
                                                             </div>
							</div>
                                                                        
                                                                     
						</section>
							
							
					
						
					<!-- end: page -->
<%@include file= "piepage.jsp" %>
