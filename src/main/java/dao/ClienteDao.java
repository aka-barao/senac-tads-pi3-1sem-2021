/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import db.DB;
import entidade.Cliente;
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
 * @author Dell i5
 */
public class ClienteDao {

    public static boolean cadastrar(Cliente cliente, String filial) throws SQLException, ClassNotFoundException{
        boolean ok = true;
        String query = "INSERT INTO cliente(nome, rg, cpf, cep,  "
                + "endereco, telefone, celular, email, estado_civil, data_nascimento, filial) "
                + "VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        Connection con = DB.getConexao();
        
        try{
            PreparedStatement comando = con.prepareCall(query);
            
            comando.setString(1, cliente.getNome());
            comando.setInt(2, cliente.getRg());
            comando.setInt(3, cliente.getCpf());
            comando.setInt(4, cliente.getCep());
            comando.setString(5, cliente.getEndereco());
            comando.setInt(6, cliente.getTelefone());
            comando.setInt(7, cliente.getCelular());
            comando.setString(8, cliente.getEmail());
            comando.setString(9, cliente.getEstado_civil());
            comando.setDate(10, cliente.getData_nascimento());
            comando.setString(11, filial);

            comando.executeUpdate();
        }catch (SQLException ex){
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        
        
        return  ok;
    }
    
    public static List<Cliente> getClientes(String filial) throws ClassNotFoundException {
    
        List<Cliente> lista = new ArrayList();

        String query = "select * from cliente where filial=?";
        Connection con;
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, filial);
            ResultSet dados = ps.executeQuery();
            while (dados.next()) {
                String nome = dados.getString("nome");
                int rg = dados.getInt("rg");
                int cpf = dados.getInt("cpf");
                int cep = dados.getInt("cep");
                String endereco = dados.getString("endereco");
                String telefone = dados.getString("telefone");
                String celular = dados.getString("celular");
                String email = dados.getString("email");
                String estado_civil = dados.getString("estado_civil");
                Date data_nascimento = dados.getDate("data_nascimento");
//                String filial = dados.getString("filial");
                Cliente cliente = new Cliente(nome, rg, cpf, cep, endereco, cep, cep, email, estado_civil, data_nascimento, filial);

                lista.add(cliente);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lista;
    }

    public static boolean deletar(String cpf) throws ClassNotFoundException {
    
        boolean ok = true;

        String query = "delete from cliente where cpf=?";
        Connection con;
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, cpf);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }

        return ok;
    }
    
     public static Cliente getClientes(String cpf1, String filial) throws ClassNotFoundException {
    
        Cliente cliente = null;

        String query = "select * from cliente where cpf=? and filial=?";
        Connection con;
        try {
            con = DB.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, cpf1);
            ps.setString(2, filial);
            ResultSet dados = ps.executeQuery();
            if (dados.next()) {
                String nome = dados.getString("nome");
                int rg = dados.getInt("rg");
                int cpf = dados.getInt("cpf");
                int cep = dados.getInt("cep");
                String endereco = dados.getString("endereco");
                int telefone = dados.getInt("telefone");
                int celular = dados.getInt("celular");
                String email = dados.getString("email");
                String estado_civil = dados.getString("estado_civil");
                Date data_nascimento = dados.getDate("data_nascimento");
                int id = dados.getInt("id_cliente");
//                String filial = dados.getString("filial");
                
                cliente = new Cliente(nome, rg, cpf, cep, endereco, telefone, celular, email, estado_civil, data_nascimento, filial);
                cliente.setId(id);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return cliente;
    }
     
     public static boolean atualizar(Cliente cliente) throws ClassNotFoundException {
    
        boolean ok = true;

        String query = "UPDATE cliente SET nome = ?, rg = ?, cpf = ?, cep = ?, "
                + "  endereco = ?, telefone = ?, celular = ?, email = ?,"
                + " estado_civil = ?, data_nascimento = ?, filial = ? "
                + " WHERE id_cliente = ?";
        Connection con;
        try {
            con = DB.getConexao();
            PreparedStatement comando = con.prepareStatement(query);
            comando.setString(1, cliente.getNome());
            comando.setInt(2, cliente.getRg());
            comando.setInt(3, cliente.getCpf());
            comando.setInt(4, cliente.getCep());
            comando.setString(5, cliente.getEndereco());
            comando.setInt(6, cliente.getTelefone());
            comando.setInt(7, cliente.getCelular());
            comando.setString(8, cliente.getEmail());
            comando.setString(9, cliente.getEstado_civil());
            comando.setDate(10, cliente.getData_nascimento());
            comando.setString(11, cliente.getFilial());
            comando.setInt(12, cliente.getId());

            comando.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }

        return ok;
    }
}
