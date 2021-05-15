/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import db.DB;
import entidade.Produto;
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
 * @author Beto
 */
public class ProdutoDAO {
    public static boolean cadastrar(Produto produto){
        boolean ok = true;
        String query = "insert into produto (nome, data_fabricacao, data_vencimento, preco) values (?,?,?,?)";
        Connection con = null;
        
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,produto.getNome());
            ps.setDate(2, (Date) produto.getDataFabricacao());
            ps.setDate(3, (Date) produto.getDataVencimento());
            ps.setDouble(4, produto.getPreco());
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        return ok;
    }
    
    
    public static List<Produto> getProdutos(){
        List<Produto> produtos = new ArrayList();
        String query = "select * from produto";
        Connection con;
        
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
        
            while(rs.next()){
                int id = rs.getInt("id_produto");
                String nome = rs.getString("nome");
                Date dataFabricacao = rs.getDate("data_fabricacao");
                Date dataVencimento = rs.getDate("data_vencimento");
                double preco = rs.getDouble("preco");
                Produto produto = new Produto(id,nome,dataFabricacao, dataVencimento, preco);
                produtos.add(produto);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produtos;
    }
    
    public static Produto getProduto(int id){
        Produto produto = null;
        String query = "select * from produto where id=?";
        Connection con;
        
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
        
            if(rs.next()){
                String nome = rs.getString("nome");
                Date dataFabricacao = rs.getDate("data_fabricacao");
                Date dataVencimento = rs.getDate("data_vencimento");
                double preco = rs.getDouble("preco");
                produto = new Produto(id, nome,dataFabricacao, dataVencimento, preco);         
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produto;
    }
    
    public static boolean deletar(int id){
        boolean ok = true;
        String query = "delete from produto where id_produto=?";
        Connection con;
        
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        return ok;
    }
    
    public static boolean atualizar(Produto produto){
        boolean ok = true;
        String query = "update produto set nome=?, data_fabricacao=?, data_vencimento=?, preco=? where id_produto=?";
        Connection con;
        
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, produto.getNome());
            ps.setDate(2, produto.getDataFabricacao());
            ps.setDate(3, produto.getDataVencimento());
            ps.setDouble(4, produto.getPreco());
            ps.setInt(5, produto.getId());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        return ok;
    }
}
