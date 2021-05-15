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
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Beto
 */
public class AtualizarProdutoServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String idStr = request.getParameter("id");
        int id = Integer.parseInt(idStr);
        Produto produto = ProdutoDAO.getProduto(id);
        request.setAttribute("produto", produto);
        
        request.getRequestDispatcher("/cadastrarProduto.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nome = request.getParameter("nome");
        String dataFabricacao = request.getParameter("data_fabricacao");
        String dataVencimento = request.getParameter("data_vencimento");
        String precoS = request.getParameter("preco");
        
        Date datef = Date.valueOf(dataFabricacao);
        Date datev = Date.valueOf(dataVencimento);
        double preco = Double.valueOf(precoS);
        
        Produto produto = new Produto(1, nome, datef, datev, preco);
        boolean ok = ProdutoDAO.atualizar(produto);
        
        if(ok){
            response.sendRedirect("/sucesso.jsp");
        }else{
            response.sendRedirect("/erro.jsp");
        }
    }


}
