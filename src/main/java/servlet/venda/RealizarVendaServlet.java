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
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author vinic
 */
public class RealizarVendaServlet extends HttpServlet {
    
    private static final Logger log;

    static {
        System.setProperty("java.util.logging.SimpleFormatter.format", "[%4$-7s] %5$s %n");
        log = Logger.getLogger(RealizarVendaServlet.class.getName());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Carregar os clientes
        List<Cliente> listaClientes = ClienteDao.getClientes();
        log.info(listaClientes.toString());
        request.setAttribute("listaClientes", listaClientes);
        
        // Carregar os produtos
        List<Produto> listaProdutos = ProdutoDAO.getProdutos();
        //log.info(listaProdutos.toString());
        request.setAttribute("listaProdutos", listaProdutos);

        //Direcionar para a tela de vendas
        request.getRequestDispatcher("/realizarVenda.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dados = request.getParameter("dados");
        JSONObject jsonDados = new JSONObject(dados);
        List<Venda> vendas = new ArrayList<>();

        String cliente = jsonDados.getString("cliente");
        String filial = jsonDados.getString("filial");

        JSONArray produtos = jsonDados.getJSONArray("produtos");
        for (int i = 0; i < produtos.length(); i++) {
            Venda venda = new Venda();
            venda.setIdCliente(Integer.parseInt(cliente));
            venda.setFilial(filial);
            JSONObject produto = produtos.getJSONObject(i);
            venda.setIdProduto(produto.getInt("id"));
            venda.setPreco(produto.getDouble("preco"));
            venda.setQte(produto.getInt("quantidade"));
            vendas.add(venda);
        }

        log.info(Integer.toString(vendas.get(0).getIdCliente()));
        VendasDAO.cadastrar(vendas);
    }

}
