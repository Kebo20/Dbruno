/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.CompraDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Compra;

/**
 *
 * @author kevin
 */
public class CompraControl extends HttpServlet {

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
         
                   
        
        String fecha_compra= request.getParameter("fecha_compra");
        String num_guia= request.getParameter("num_guia").trim();
        int num_pollos= Integer.parseInt(request.getParameter("num_pollos"));
        String descripcion=request.getParameter("descripcion_compra");
        Double precio_kilo=Double.valueOf(request.getParameter("precio_kilo"));
        Double can_kilo=Double.valueOf(request.getParameter("can_kilo"));
        Double total_compra=Double.valueOf(request.getParameter("total_compra"));
    
        Compra c= new Compra();
       
        c.setCan_kilo(can_kilo);
        c.setDescripcion(descripcion);
        c.setFecha_compra(fecha_compra);
        c.setNum_guia((num_guia));
        c.setNum_pollos(num_pollos);
        c.setPrecio_kilo(precio_kilo);
        c.setTotal_compra(total_compra);
        
        if(CompraDao.insertar(c)){
            
             out.println("<div  class=\"modal-body\">");
            out.println("<div class=\"modal-wrapper\">");
            out.println("<div class=\"modal-icon\">");
            out.println("<i style=\"color:  #009933\" class=\"fa fa-check\"></i>");
            out.println("</div>");
            out.println("<div class=\"modal-text\">");
             out.print("<p  style=\"color: #000\"><big>Compra registrada</big></p> ");
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
            out.println("<p  style=\"color: #000\"><big>Compra no registrada</big></p> ");
            out.println("</div>");
            out.println(" </div>");
            out.println(" </div>");
            out.println(" <div class=\"modal-footer\">");                        
            out.println("<button type=\"button\"   class=\"btn btn-danger\" data-dismiss=\"modal\">Cerrar</button>");      
            out.println(" </div>");
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
    
    
    
 
    
    
  void actualizar(HttpServletRequest request, HttpServletResponse response){
        
        int id_compra= Integer.parseInt(request.getParameter("id_compra"));
        String fecha_compra= request.getParameter("fecha_compra");
        String num_guia= request.getParameter("num_guia");
        int num_pollos= Integer.parseInt(request.getParameter("num_pollos"));
        String descripcion=request.getParameter("descripcion");
        Double precio_kilo=Double.valueOf(request.getParameter("precio_kilo"));
        Double can_kilo=Double.valueOf(request.getParameter("can_kilo"));
        Double total_compra=Double.valueOf(request.getParameter("total_compra"));
    
        Compra c= new Compra();
        c.setId_compra(id_compra);
        c.setCan_kilo(can_kilo);
        c.setDescripcion(descripcion);
        c.setFecha_compra(fecha_compra);
        c.setNum_guia((num_guia));
        c.setNum_pollos(num_pollos);
        c.setPrecio_kilo(precio_kilo);
        c.setTotal_compra(total_compra);
        
        if(CompraDao.actualizar(c)){
            request.setAttribute("mensaje", "Datos actualizados correctamente");
        }else{
            request.setAttribute("mensaje", "Datos no actualizados");
        }
  
        
    }
    
        
        
      
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
