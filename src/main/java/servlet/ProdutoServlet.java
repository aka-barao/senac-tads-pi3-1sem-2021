/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ProdutoDAO;
import entidade.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Beto
 */
public class ProdutoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sessao = request.getSession();
        Object usuarioSessao = sessao.getAttribute("usuario");
        if(Objects.isNull(usuarioSessao)) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }
        
        List<Produto> listaProdutos = ProdutoDAO.getProdutos();
        request.setAttribute("listaProduto", listaProdutos);
        
        request.getRequestDispatcher("/listaProdutos.jsp").forward(request, response);
        
    }

    
}
