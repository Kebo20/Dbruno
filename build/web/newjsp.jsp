<%-- 
    Document   : newjsp
    Created on : 14/04/2019, 11:37:28 AM
    Author     : kevin
--%>

<%@page import="dao.VentaDao"%>
<%@page import="dao.VentaDao"%>
<%@page import="dao.ClienteDao"%>
<%@page import="modelo.Venta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table class="table table-bordered table-striped mb-none" id="datatable-tabletools" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
									
									                    <thead>
										<tr>
											
											<th class="center hidden-phone">Fecha</th>
                                                                                        <th class="center hidden-phone">Cliente</th>
                                                                                        <th class="center hidden-phone">Descripción</th>
											<th class="center hidden-phone">Número de Pollos</th>
											<th class="center hidden-phone">Cantidad (Kg.)</th>
											<th class="center hidden-phone">Precio de Kilo(S/.)</th>
											
											<th class="center hidden-phone">Total (S/.)</th>
											
											<th class="center hidden-phone"></th>
											
											
											
										</tr>
									</thead>
									<tbody>
                                                                             <% for(Venta v:VentaDao.listar()) {%>
										<tr class="gradeX">
                                                                                      
                                                                                     
											<td class="center hidden-phone" style="width:20px;color: #000"><%=v.getFecha_venta()%></td>
                                                                                        <td class="center hidden-phone" style="width:100px;color: #000"><%=ClienteDao.cliente(v.getId_cliente()) %></td>
											<td class="center hidden-phone" style="width:9px;color: #000"><%=v.getDescripcion() %></td>
                                                                                        <td class="center hidden-phone" style="width:10px;color: #000"><%=v.getNum_pollos() %></td>
                                                                                        <td class="center hidden-phone" style="width:10px;color: #000"><%=v.getCan_kilo() %></td>
											
											<td class="center hidden-phone" style="width:10px;color: #000"><%=v.getPrecio_kilo() %></td>
											
											<td class="center hidden-phone" style="width:10px;color: #000"><%=v.getTotal_venta()%></td>
                                                                                        
                                                                                        
                                                                                       
                                                                                       
                                                                                         <td class="center hidden-phone" style="width:5px">
                                                                                                     
                                                                                             <button  type="button" class="red" style="background-color: transparent;border: 0px" onclick="eliminar(<%=v.getId_venta()%>)" >
																	<i class="ace-icon fa fa-trash-o bigger-130" style="color: #f00"></i>
                                                                                              </button>
                                                                                              
                                                                                                 
                                                                                                          
                                                                                                                                    
                                                                                                                                        
                                                                                        </td>
                                                                                </tr>
								               <%} %>		
									</tbody>

								</table>
    </body>
</html>
