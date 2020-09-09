<%@page import="java.util.ArrayList"%>
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
                                                                <h2 class="panel-title" style='color: #007ebd'>Reporte de  <%=request.getParameter("dia")%> de <%= mes  %> - VENTAS</h2>
                                                            </header>
							<div class="panel-body">
                                                            <div class="mb-md">
                                                                <a  style="color:#000000 ;position: absolute;left: 900px;top: 110px" onclick="imprimir('areaImprimir')" class="btn btn-default"><i class="fa fa-print"> Imprimir</i></a> 
                                                            </div>
                                                            <div id="areaImprimir" >
                                                                <h2 class="panel-title" style='color: #ffffff'>Reporte de  <%=request.getParameter("dia")%> de <%= mes  %> - VENTAS</h2>
                                                                <br>
                                                            <% ArrayList<String> tipos= new ArrayList<>() ;
                                                            tipos.add("Entero");
                                                            tipos.add("Descargado");
                                                            tipos.add("Brasa");
                                                            tipos.add("Molleja");
                                                            tipos.add("Alas");
                                                            tipos.add("Pierna");
                                                            tipos.add("Espinazo");
                                                            tipos.add("Menudencia");
                                                            tipos.add("Pechuga");
                                                            tipos.add("Pollada");
                                                            tipos.add("Vivo");
                                                            
                                                            %>        
                                                            <% double total_diario=0.0;
                                                                                    
                                                            %>
                                                            
                                                            <% for(int i=0 ; i<11 ; i++) {%> 
                                                            <%if (VentaDao.Ventas_dia_tipo(request.getParameter("mes"),request.getParameter("dia"),tipos.get(i))) { %>
                                                           
                                                            <h4><%=tipos.get(i)%></h4>
                                                                <table style="font-size: 11px" class="table table-bordered table-striped mb-none" >
									
                                                                     <thead>
										<tr>
											
											
                                                                                        <th class="center hidden-phone">Cliente</th>
                                                                                        <th class="center hidden-phone">Descripción</th>
                                                                                        <%if (request.getParameter("tipo")!="Menudencia" ){ %>
                                                                                           
											<th class="center hidden-phone">Pollos</th>
                                                                                        <% }%>
                                                                                        
											<th class="center hidden-phone">Cantidad</th>
											<th class="center hidden-phone">Kilo(S/.)</th>
											
											<th class="center hidden-phone">Total</th>
											
																	
											
											
										</tr>
									</thead>
									<tbody>
                                                                            <% double cantidad=0.0;
                                                                               int pollos=0;
                                                                               double total=0.0;
                                                                                    
                                                                            %>
                                                                            <% for(Venta v:VentaDao.listar(request.getParameter("mes"),request.getParameter("dia"),tipos.get(i))) {%>
										<tr class="gradeX">
                                                                                      
                                                                                     <% DecimalFormat f = new DecimalFormat("0.00");%>
                                                                                       <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:30%;color: #000"><%=ClienteDao.cliente(v.getId_cliente()) %></td>
                                                                                       <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:15%;color: #000"><%=v.getDescripcion() %></td>
                                                                                        
                                                                                        <%if (request.getParameter("tipo")!="Menudencia" ){ %>
											
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:10%;color: #000"><%=v.getNum_pollos() %></td>
                                                                                        <% }%>
                                                                                        
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:15%;color: #000"><%=v.getCan_kilo() %> Kg.</td>
											
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:15%;color: #000">S/. <%=f.format(v.getPrecio_kilo())%></td>
											
                                                                                        <td class="center hidden-phone" style="padding-top: 0px;padding-bottom:   0px;width:15%;color: #000">S/. <%=f.format(v.getTotal_venta())%></td>
                                                                                        <%
                                                                                            cantidad=cantidad+v.getCan_kilo();
                                                                                            pollos=pollos+v.getNum_pollos();
                                                                                            total=total+v.getTotal_venta();
                                                                                        %>
                                                                                        
                                                                                  
                                                                                </tr>
								               <%} %>		
									</tbody>

								</table>
                                                                
                                                                <table  style="font-size: 11px" class="table table-bordered table-striped mb-none" >
									
									
									<tbody>
                                                                            
										<tr class="gradeX">
											<% DecimalFormat f = new DecimalFormat("0.00");%>
											<td class="center hidden-phone" style="padding-bottom:   0px;color: #000;width:45%"><b></b></td>
											<td class="center hidden-phone" style="padding-bottom:   0px;color: #000;width:10%"><b><%=pollos %></b></td>
                                                                                        
                                                                                        <td class="center hidden-phone" style="padding-bottom:   0px;color: #000;width:15%"><b><%=f.format(cantidad)%> Kg.</b></td>
                                                                                        <td class="center hidden-phone" style="padding-bottom:   0px;color: #000;width:15%"><b></b></td>
                                                                                        <td class="center hidden-phone" style="padding-bottom:   0px;color: #000;width:15%"><b>S/. <%=f.format(total)%></b></td>
                                                                                        
                                                                                         
                                                                                       
										</tr>
								              		
									</tbody>
                                                                </table>
                                                                 
                                                                <%total_diario= total_diario+total;%>
                                                            <% }%>
                                                            <% }%>
                                                            <% DecimalFormat f = new DecimalFormat("0.00");%>
                                                            <h2 style="font-size: 15px;color: #000"><b>TOTAL = S/.<%=f.format(total_diario)%></b></h2>
                                                             </div>
							</div>
                                                              
                                                            
                                                                     
						</section>
							
							
					
						
					<!-- end: page -->
<%@include file= "piepage.jsp" %>
