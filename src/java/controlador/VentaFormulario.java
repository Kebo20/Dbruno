/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
public class VentaFormulario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            if (request.getParameter("descripcion_venta").equals("Brasa")) {
                out.println("<script src=\"js/funciones.js\" ></script>");
                out.print("  <script> \n" +
"                                                                                                    \n" +
"                                                                                                                    function multiplicar(){\n" +
                                                                                                                          
"                                                                                                                                m2 = document.getElementById(\"precio_kilo\").value;\n" +
"                                                                                                                                m3 = document.getElementById(\"num_pollos\").value;\n" +
"                                                                                                                                r = m2*m3;\n" +
"                                                                                                                                document.getElementById(\"total_venta\").value = Math.round(r*100)/100;\n" +
"    \n" +
"                                                                                                                                             }\n" +
"                        \n" +
"                                                                                          </script>\n" +
"                 ");
                out.print("      <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Pollos<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                  <span class=\"input-group-addon\">\n" +
"														        <i class=\"fa fa-delicious\"></i>\n" +
"													          </span>\n" +
"                                                                                                                  <input type=\"text\" id=\"num_pollos\"  onkeypress=\"return justNumbers(event);\"  onkeyup=\"multiplicar();\"  class=\"form-control\"  placeholder=\"Cantidad de Pollos\" autocomplete=\"off\" required/>\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                                                                                                      \n" +
"                                                                                                   <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Precio<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                   <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-dollar\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\"  onkeypress=\"return justNumbers(event);\"   id=\"precio_kilo\"  onkeyup=\"multiplicar();\" class=\"form-control\" placeholder=\"Precio por Kilo o Pieza\" autocomplete=\"off\" required/>\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                                                                                         \n" +
"                                                                                                    <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Cantidad<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                    <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-navicon\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\"  onkeypress=\"return justNumbers(event);\"    id=\"can_kilo\"   class=\"form-control\" placeholder=\"Cantidad de Kilos o Piezas\" autocomplete=\"off\"  required />\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                                                                                                \n" +
"                \n" +
"                                                                                                            \n" +
"                                                                                                \n" +
"                                                                                                    <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Total<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                    <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-dollar\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\" id=\"total_venta\"  class=\"form-control\" value=\"\" placeholder=\"Total por Venta (S/.)\" autocomplete=\"off\" required readonly/>\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                              ");
            }else
            
            { if (request.getParameter("descripcion_venta").equals("Menudencia")) {
                    
                
                out.println("<script src=\"js/funciones.js\" ></script>");
                out.print("  <script> \n" +
"                                                                                                    \n" +
"                                                                                                                    function multiplicar(){\n" +
"                                                                                                                                m1 = document.getElementById(\"can_kilo\").value;\n" +
"                                                                                                                                m2 = document.getElementById(\"precio_kilo\").value;\n" +                                                                                                                               
"                                                                                                                                r = m1*m2;\n" +
"                                                                                                                                document.getElementById(\"total_venta\").value = Math.round(r*100)/100;\n" +
"    \n" +
"                                                                                                                                             }\n" +
"                        \n" +
"                                                                                          </script>\n" +
"                ");
                out.print("      <div class=\"form-group\">\n" +
                                                                                                          
"                                                                                                   <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Precio<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                   <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-dollar\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\"  onkeypress=\"return justNumbers(event);\"   id=\"precio_kilo\"  onkeyup=\"multiplicar();\" class=\"form-control\" placeholder=\"Precio por Kilo \" autocomplete=\"off\" required/>\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                                                                                         \n" +
"                                                                                                    <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Cantidad<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                    <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-navicon\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\"  onkeypress=\"return justNumbers(event);\"    id=\"can_kilo\"  onkeyup=\"multiplicar();\" class=\"form-control\" placeholder=\"Cantidad de Kilos \" autocomplete=\"off\" required />\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                                                                                                \n" +
"                \n" +
"                                                                                                            \n" +
"                                                                                                \n" +
"                                                                                                    <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Total<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                    <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-dollar\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\" id=\"total_venta\"  class=\"form-control\" value=\"\" placeholder=\"Total por Venta (S/.)\" autocomplete=\"off\" required readonly/>\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                              ");
                
            }else{
                
                out.println("<script src=\"js/funciones.js\" ></script>");
                out.print("  <script> \n" +
"                                                                                                    \n" +
"                                                                                                                    function multiplicar(){\n" +
"                                                                                                                                m1 = document.getElementById(\"can_kilo\").value;\n" +
"                                                                                                                                m2 = document.getElementById(\"precio_kilo\").value;\n" +                                                                                                                               
"                                                                                                                                r = m1*m2;\n" +
"                                                                                                                                document.getElementById(\"total_venta\").value = Math.round(r*100)/100;\n" +
"    \n" +
"                                                                                                                                             }\n" +
"                        \n" +
"                                                                                          </script>\n" +
"                ");
                out.print("      <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Pollos<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                  <span class=\"input-group-addon\">\n" +
"														        <i class=\"fa fa-delicious\"></i>\n" +
"													          </span>\n" +
"                                                                                                                  <input type=\"text\" id=\"num_pollos\"  onkeypress=\"return justNumbers(event);\"    class=\"form-control\"  placeholder=\"Cantidad de Pollos\" autocomplete=\"off\" required/>\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                                                                                                      \n" +
"                                                                                                   <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Precio<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                   <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-dollar\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\"  onkeypress=\"return justNumbers(event);\"   id=\"precio_kilo\"  onkeyup=\"multiplicar();\" class=\"form-control\" placeholder=\"Precio por Kilo \" autocomplete=\"off\" required/>\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                                                                                         \n" +
"                                                                                                    <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Cantidad<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                    <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-navicon\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\"  onkeypress=\"return justNumbers(event);\"    id=\"can_kilo\"  onkeyup=\"multiplicar();\" class=\"form-control\" placeholder=\"Cantidad de Kilos \" autocomplete=\"off\" required />\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                                                                                                \n" +
"                \n" +
"                                                                                                            \n" +
"                                                                                                \n" +
"                                                                                                    <div class=\"form-group\">\n" +
"                                                                                                            <label class=\"col-sm-3 control-label\">Total<span class=\"required\">*</span></label>\n" +
"                                                                                                            <div class=\"input-group mb-md\">\n" +
"                                                                                                                    <span class=\"input-group-addon\">\n" +
"															<i class=\"fa fa-dollar\"></i>\n" +
"														   </span>\n" +
"                                                                                                                    <input type=\"text\" id=\"total_venta\"  class=\"form-control\" value=\"\" placeholder=\"Total por Venta (S/.)\" autocomplete=\"off\" required readonly/>\n" +
"                                                                                                            </div>\n" +
"                                                                                                    </div>\n" +
"                              ");
                
            }
            }
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
