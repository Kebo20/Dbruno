package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import dao.ClienteDao;
import modelo.Cliente;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

public class ClienteControl extends HttpServlet
{
    protected void processRequest(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (final PrintWriter out = response.getWriter()) {
            String cod_dni = request.getParameter("cod_dni");
            final String nombre = request.getParameter("nombre");
            final String celular = request.getParameter("celular");
            final String correo = request.getParameter("correo");
            final String direccion = request.getParameter("direccion");
            final String descripcion = request.getParameter("descripcion_cliente");
            if (cod_dni.equals("")) {
                cod_dni = " ";
            }
            final Cliente c = new Cliente();
            c.setCod_dni(cod_dni);
            c.setNombre(nombre);
            c.setCelular(celular);
            c.setCorreo(correo);
            c.setDireccion(direccion);
            c.setDescripcion(descripcion);
            if (ClienteDao.insertar(c)) {
                out.println("<div  class=\"modal-body\">");
                out.println("<div class=\"modal-wrapper\">");
                out.println("<div class=\"modal-icon\">");
                out.println("<i style=\"color:  #009933\" class=\"fa fa-check\"></i>");
                out.println("</div>");
                out.println("<div class=\"modal-text\">");
                out.print("<p  style=\"color: #000\"><big>Cliente registrado</big></p> ");
                out.println("</div>");
                out.println(" </div>");
                out.println(" </div>");
                out.println(" <div class=\"modal-footer\">");
                out.println("<button type=\"button\"   class=\"btn btn-success\" data-dismiss=\"modal\">OK</button>");
                out.println(" </div>");
            }
            else {
                out.println("<div  class=\"modal-body\">");
                out.println("<div class=\"modal-wrapper\">");
                out.println("<div class=\"modal-icon\">");
                out.println("<i style=\"color:  #ff0033 \" class=\"fa fa-times-circle\"></i>");
                out.println("</div>");
                out.println("<div class=\"modal-text\">");
                out.println("<p  style=\"color: #000\"><big>Cliente no registrado</big></p> ");
                out.println("</div>");
                out.println(" </div>");
                out.println(" </div>");
                out.println(" <div class=\"modal-footer\">");
                out.println("<button type=\"button\"   class=\"btn btn-danger\" data-dismiss=\"modal\">Cerrar</button>");
                out.println(" </div>");
            }
        }
    }
    
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        this.processRequest(request, response);
    }
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        this.processRequest(request, response);
        response.sendRedirect("registrarCliente.jsp");
    }
    
    public String getServletInfo() {
        return "Short description";
    }
}