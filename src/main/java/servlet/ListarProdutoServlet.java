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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Beto
 */
public class ListarProdutoServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Produto> listaProdutos = ProdutoDAO.getProdutos();
        request.setAttribute("listaProdutos", listaProdutos);
        
        request.getRequestDispatcher("/listarProdutos.jsp").forward(request, response);
    }

    

}
