
package servlet;

import dao.ClienteDao;
import entidade.Cliente;
import java.io.IOException;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CadastrarClienteServelet extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            
            String nome = request.getParameter("nome");
            int rg = Integer.valueOf(request.getParameter("rg"));
            int cpf = Integer.valueOf(request.getParameter("cpf"));
            int cep = Integer.valueOf(request.getParameter("cep"));
            String endereco = request.getParameter("endereco");
            int telefone = Integer.valueOf(request.getParameter("telefone"));
            int celular = Integer.valueOf(request.getParameter("celular"));
            String email = request.getParameter("email");
            String estado_civil = request.getParameter("estado_civil");
            String dataRecebida = request.getParameter("data_nascimento");
            
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            java.util.Date data_nascimento = formato.parse(dataRecebida);
            
            Cliente cliente = new Cliente(nome, rg, cpf, cep, endereco, telefone, celular, email, estado_civil, data_nascimento);
            
            boolean ok = false;
            try {
                ok = ClienteDao.cadastrar(cliente);
            } catch (SQLException ex) {
                Logger.getLogger(CadastrarClienteServelet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(CadastrarClienteServelet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            if (ok) {
                response.sendRedirect(request.getContextPath() + "/clientes/sucesso.jsp");
            } else {
                String msg = "Não foi possível cadastrar o cliente!";
//                request.setAttribute("msgErro", msg);
                response.sendRedirect(request.getContextPath() + "/clientes/erro.jsp?msgErro="+msg);
//                request.getRequestDispatcher( "/clientes/erro.jsp").forward(request, response);
            }
        } catch (ParseException ex) {
            Logger.getLogger(CadastrarClienteServelet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
