/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import db.DB;
import entidade.Venda;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author vinic
 */
public class VendasDAO {
    public static boolean cadastrar(List<Venda> vendas) {
        boolean ok = true;
        
        String queryVendas = "insert into vendas (id_cliente, filial) values (?, ?)";
        Connection con;
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(queryVendas);
            ps.setInt(1, vendas.get(0).getIdCliente());
            ps.setString(2, vendas.get(0).getFilial());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
            return ok;
        }
        
        for(Venda venda: vendas) {
            ok = cadastrar(venda);
            if (!ok) {
                return ok;
            }
        }
        return ok;
    }
    
    public static boolean cadastrar(Venda venda) {
        boolean ok = true;
        String queryVendas = "insert into vendas (id_cliente, filial) values (?, ?)";
        Connection con;
        
        /*
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(queryVendas);
            ps.setInt(1, venda.getIdCliente());
            ps.setString(2, venda.getFilial());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
            return ok;
        }*/
        
        String queryVendasProdutos = "insert into vendas_produtos (id_venda, id_produto, quantidade, valor_total)"
                + " values ((SELECT IDENT_CURRENT('vendas')),?,?,?)";
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(queryVendasProdutos);
            ps.setInt(1, venda.getIdProduto());
            ps.setInt(2, venda.getQte());
            ps.setDouble(3, venda.getPreco());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
            return ok;
        }
        return ok;
    }
    
   public static List<Venda> getVendas() {
        List<Venda> vendas = new ArrayList<>();
        String query = "SELECT " +
                        "vendas.id_venda," +
                        "vendas.id_cliente," +
                        "vendas.data_venda," +
                        "vendas_produtos.id_produto," +
                        "vendas_produtos.quantidade," +
                        "vendas_produtos.valor_total " +
                        "FROM vendas " +
                        "INNER JOIN vendas_produtos ON vendas_produtos.id_venda = vendas.id_venda";
        Connection con;
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Date dataVenda = rs.getDate("vendas.data_venda");
                Integer idCliente = rs.getInt("vendas.id_cliente");
                Integer idProduto = rs.getInt("vendas_produtos.id_produto");
                Integer qte = rs.getInt("vendas_produtos.quantidade");
                Double preco = rs.getDouble("vendas_produtos.valor_total");
                Venda venda = new Venda();
                venda.setDataVenda(dataVenda);
                venda.setIdCliente(idCliente);
                venda.setIdProduto(idProduto);
                venda.setPreco(preco);
                venda.setQte(qte);
                vendas.add(venda);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vendas;
    }
}
