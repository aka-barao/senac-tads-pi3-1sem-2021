/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.venda;

import dao.ClienteDao;
import dao.ProdutoDAO;
import dao.VendasDAO;
import entidade.Cliente;
import entidade.Produto;
import entidade.Venda;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author vinic
 */
public class RealizarVendaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Carregar os clientes
        List<Cliente> listaClientes = ClienteDao.getClientes();
        request.setAttribute("listaClientes", listaClientes);
        
        // Carregar os produtos
        List<Produto> listaProdutos = ProdutoDAO.getProdutos();
        request.setAttribute("listaProdutos", listaProdutos);

        //Direcionar para a tela de vendas
        request.getRequestDispatcher("/acesso_restrito/realizarVenda.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dados = request.getParameter("dados");
        JSONObject jsonDados = new JSONObject(dados);
        List<Venda> vendas = new ArrayList<>();

        String cliente = jsonDados.getString("cliente");

        JSONArray produtos = jsonDados.getJSONArray("produtos");
        for (int i = 0; i < produtos.length(); i++) {
            Venda venda = new Venda();
            venda.setIdCliente(Integer.parseInt(cliente));
            JSONObject produto = produtos.getJSONObject(i);
            venda.setIdProduto(produto.getInt("id"));
            venda.setPreco(produto.getDouble("preco"));
            venda.setQte(produto.getInt("quantidade"));
            vendas.add(venda);
        }
        VendasDAO.cadastrar(vendas);
    }

}
