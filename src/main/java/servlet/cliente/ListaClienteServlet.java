/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.cliente;

import dao.ClienteDao;
import entidade.Cliente;
import entidade.Usuario;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell i5
 */
public class ListaClienteServlet extends HttpServlet {
    
    private static final Logger log;
    
    static {
        System.setProperty("java.util.logging.SimpleFormatter.format", "[%4$-7s] %5$s %n");
        log = Logger.getLogger(ListaClienteServlet.class.getName());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sessao = request.getSession();
        Object usuarioSessao = sessao.getAttribute("usuario");
        if(Objects.isNull(usuarioSessao)) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }
        
        Usuario usuario = (Usuario) usuarioSessao;
        
        List<Cliente> listaClientes = null;
        try {
            listaClientes = ClienteDao.getClientes();
        } catch (Exception ex) {
            Logger.getLogger(ListaClienteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        log.info(listaClientes.toString());
        request.setAttribute("listaClientes", listaClientes);
        
        request.getRequestDispatcher("/listaClientes.jsp").forward(request, response);
        
    }
}
