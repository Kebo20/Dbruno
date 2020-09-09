/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.VentaDao;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Venta;

/**
 *
 * @author kevin
 */
public class VentaEliminar2 extends HttpServlet {

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
        
        
        int id_venta= Integer.parseInt(request.getParameter("venta"));
 
        
        
        Venta v= new Venta();
        v.setId_venta(id_venta);
     
        
        if (VentaDao.eliminar(v)) {
            out.println("<div  class=\"modal-body\">");
            out.println("<div class=\"modal-wrapper\">");
            out.println("<div class=\"modal-icon\">");
            out.println("<i style=\"color:  #009933\" class=\"fa fa-check\"></i>");
            out.println("</div>");
            out.println("<div class=\"modal-text\">");
             out.print("<p  style=\"color: #000\"><big>Venta registrada</big></p> ");
            out.println("</div>");
            out.println(" </div>");
            out.println(" </div>");
            out.println(" <div class=\"modal-footer\">");                        
            out.println("<button type=\"button\"   class=\"btn btn-success\" data-dismiss=\"modal\">OK</button>");      
            out.println(" </div>");
        }else{
             out.println("<div  class=\"modal-body\">");
            out.println("<div class=\"modal-wrapper\">");
            out.println("<div class=\"modal-icon\">");
            out.println("<i style=\"color:  #ff0033 \" class=\"fa fa-times-circle\"></i>");
            out.println("</div>");
            out.println("<div class=\"modal-text\">");
            out.println("<p  style=\"color: #000\"><big>Venta no registrado</big></p> ");
            out.println("</div>");
            out.println(" </div>");
            out.println(" </div>");
            out.println(" <div class=\"modal-footer\">");                        
            out.println("<button type=\"button\"   class=\"btn btn-danger\" data-dismiss=\"modal\">Cerrar</button>");      
            out.println(" </div>");
        }
        
        request.getRequestDispatcher("registrarVenta2.jsp").forward(request, response);
        
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
