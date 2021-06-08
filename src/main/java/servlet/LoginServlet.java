/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.UsuarioDao;
import entidade.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell i5
 */
public class LoginServlet extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String login = request.getParameter("login");
        String senhaEnviada = request.getParameter("senha");
        
        Usuario usuario = UsuarioDao.getUsuario(login);
        if (usuario == null || senhaEnviada == null) { // Usuario NOK
            
            response.sendRedirect(request.getContextPath() + "/login.jsp?loginInvalido=true");
        } else {
            boolean senhaOK = senhaEnviada.equals(usuario.getSenha());
            if (senhaOK) { 
                HttpSession sessao = request.getSession();
                sessao.setAttribute("usuario", usuario);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else { // Senha NOK
                response.sendRedirect(request.getContextPath() + "/login.jsp?loginInvalido=true");
            }
        }

    }

}
