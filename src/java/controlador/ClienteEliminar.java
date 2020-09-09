package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import dao.ClienteDao;
import modelo.Cliente;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

public class ClienteEliminar extends HttpServlet
{
    protected void processRequest(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (final PrintWriter out = response.getWriter()) {
            final int cliente = Integer.parseInt(request.getParameter("cliente"));
            final Cliente c = new Cliente();
            c.setId_cliente(cliente);
            if (ClienteDao.eliminar(c)) {
                out.println("Cliente eliminado");
            }
            else {
                out.println("Cliente no eliminado");
            }
            response.sendRedirect("listarCliente.jsp");
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
