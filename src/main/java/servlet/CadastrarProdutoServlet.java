/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ProdutoDAO;
import entidade.Produto;
import java.io.IOException;
import java.sql.Date;
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
public class CadastrarProdutoServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sessao = request.getSession();
        Object usuarioSessao = sessao.getAttribute("usuario");
        if(Objects.isNull(usuarioSessao)) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }
        
        String nome = request.getParameter("nome");
        String dataFabricacao = request.getParameter("data_fabricacao");
        String dataVencimento = request.getParameter("data_vencimento");
        String precoS = request.getParameter("preco");
        
        Date datef = Date.valueOf(dataFabricacao);
        Date datev = Date.valueOf(dataVencimento);
        double preco = Double.valueOf(precoS);
        
        
        Produto produto = new Produto(nome, datef, datev, preco);
        boolean ok = ProdutoDAO.cadastrar(produto);
        
        if(ok){
            response.sendRedirect(request.getContextPath() + "/sucesso.jsp");
        }else{
            response.sendRedirect(request.getContextPath() + "/erro.jsp");
        }
    }

}
