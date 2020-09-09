/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.PagoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Pago;

/**
 *
 * @author kevin
 */
public class PagoControl extends HttpServlet {

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
                   
        
        String fecha_pago=request.getParameter("fecha_pago");
       
        Double saldo_total=Double.valueOf(request.getParameter("saldo_total"));
        String pago_diario=request.getParameter("pago_diario");
        int id_cliente=Integer.parseInt(request.getParameter("id_cliente"));
        
        Pago p=  new Pago();
        
        
       p.setFecha_pago(fecha_pago);
        
        p.setPago_diario(Double.valueOf(pago_diario));
        p.setSaldo_total(saldo_total);
        p.setId_cliente(id_cliente);
        
        if (PagoDao.insertar(p)) {
            
                    
            
            out.println("<div class=\"modal-wrapper\">");
            out.println("<div class=\"modal-icon\">");
            out.println("<i style=\"color:  #009933\" class=\"fa fa-check\"></i>");
            out.println("</div>");
            out.println("<div class=\"modal-text\">");
             out.print("<p  style=\"color: #000\"><big>Pago registrado</big></p> ");
            out.println("</div>");
            out.println(" </div>");
           
            
         
            
        }else{
            
             
            out.println("<div class=\"modal-wrapper\">");
            out.println("<div class=\"modal-icon\">");
            out.println("<i style=\"color:  #ff0033 \" class=\"fa fa-times-circle\"></i>");
            out.println("</div>");
            out.println("<div class=\"modal-text\">");
            out.println("<p  style=\"color: #000\"><big>Pago no registrado</big></p> ");
            out.println("</div>");
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
        
        int id_pago=  Integer.parseInt(request.getParameter("id_pago"));
        String fecha_pago=(request.getParameter("fecha_pago"));
       
        Double saldo_total=Double.valueOf(request.getParameter("saldo_total"));
        Double pago_diario=Double.valueOf(request.getParameter("pago_diario"));
        int id_cliente=Integer.parseInt(request.getParameter("id_cliente"));
        
        Pago p=  new Pago();
        
        p.setId_pago(id_pago);
        p.setFecha_pago(fecha_pago);
        
        p.setPago_diario(pago_diario);
        p.setSaldo_total(saldo_total);
        p.setId_cliente(id_cliente);
        
        if (PagoDao.actualizar(p)) {
            
            request.setAttribute("mensaje","Pago actualizado");
            
        }else{
            
            request.setAttribute("mensaje","Pago no actualizado");
        }
        
        
        
        
    }
    
  
    
   
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
