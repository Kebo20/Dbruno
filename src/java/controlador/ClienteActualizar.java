package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import dao.ClienteDao;
import modelo.Cliente;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

public class ClienteActualizar extends HttpServlet
{
    protected void processRequest(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (final PrintWriter out = response.getWriter()) {
            String cod_dni = request.getParameter("cod_dni");
            final String id_cliente = request.getParameter("id_cliente");
            final String nombre = request.getParameter("nombre");
            final String celular = request.getParameter("celular");
            final String correo = request.getParameter("correo");
            final String direccion = request.getParameter("direccion");
            final String descripcion = request.getParameter("descripcion_cliente");
            if (cod_dni.equals("")) {
                cod_dni = null;
            }
            final Cliente c = new Cliente();
            c.setId_cliente(Integer.parseInt(id_cliente));
            c.setCod_dni(cod_dni);
            c.setNombre(nombre);
            c.setCelular(celular);
            c.setCorreo(correo);
            c.setDireccion(direccion);
            c.setDescripcion(descripcion);
            if (ClienteDao.actualizar(c)) {
                out.println("<div  class=\"modal-body\">");
                out.println("<div class=\"modal-wrapper\">");
                out.println("<div class=\"modal-icon\">");
                out.println("<i style=\"color:  #006666\" class=\"fa fa-check\"></i>");
                out.println("</div>");
                out.println("<div class=\"modal-text\">");
                out.println(" <p  style=\"color: #006666;font-size: 17px\"><big>Cliente Actualizado</big></p>  ");
                out.println("</div>");
            }
            else {
                out.println("\"<p  style=\\\"color: #000\\\"><big>Cliente no actualizado</big></p> \"");
            }
        }
    }
    
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        this.processRequest(request, response);
    }
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        this.processRequest(request, response);
    }
    
    public String getServletInfo() {
        return "Short description";
    }
}