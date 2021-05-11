
package servlet.cliente;

import br.senac.sp.utils.Redirect;
import dao.ClienteDao;
import entidade.Cliente;
import java.io.IOException;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AlterarClienteServelet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cpf = request.getParameter("cpf");
        
        Cliente cliente = null;
        try {
            cliente = ClienteDao.getClientes(cpf);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AlterarClienteServelet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("cliente", cliente);
        
        request.getRequestDispatcher("/cadastrarCliente.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        int rg = Integer.valueOf(request.getParameter("rg"));
        int cpf = Integer.valueOf(request.getParameter("cpf"));
        int cep = Integer.valueOf(request.getParameter("cep"));
        String endereco = request.getParameter("endereco");
        int telefone = Integer.valueOf(request.getParameter("cpf"));
        int celular = Integer.valueOf(request.getParameter("cpf"));
        String email = request.getParameter("email");
        String estado_civil = request.getParameter("estado_civil");
        Date data_nascimento = Date.valueOf(request.getParameter("data_nascimento"));
        
        Cliente cliente = new Cliente(nome, rg, cpf, cep, endereco, telefone, celular, email, estado_civil, data_nascimento);
        boolean ok = false;
        try {
            ok = ClienteDao.atualizar(cliente);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AlterarClienteServelet.class.getName()).log(Level.SEVERE, null, ex);
        }
        Redirect.sendRedirect(ok, response);
    }
    

}
