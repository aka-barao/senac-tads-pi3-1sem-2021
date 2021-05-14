
package servlet.cliente;

import br.senac.sp.utils.Redirect;
import dao.ClienteDao;
import entidade.Cliente;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
        
        request.getRequestDispatcher("cadastrarCliente.jsp").forward(request, response);
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
        
        String dataRecebida = request.getParameter("data_nascimento");

        DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate dataEmLocalDate = LocalDate.parse(dataRecebida, formato);
        
        Date data_nascimento = Date.valueOf(dataEmLocalDate);
        
        boolean ok = false;
        try {
             Cliente cliente = ClienteDao.getClientes(String.valueOf(cpf));
             
             cliente.setNome(nome);
             cliente.setRg(rg);
             cliente.setCpf(cpf);
             cliente.setCep(cep);
             cliente.setEndereco(endereco);
             cliente.setTelefone(telefone);
             cliente.setCelular(celular);
             cliente.setEmail(email);
             cliente.setEstado_civil(estado_civil);
             cliente.setData_nascimento(data_nascimento);
             
             ok = ClienteDao.atualizar(cliente);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AlterarClienteServelet.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        if (ok) {
            response.sendRedirect(request.getContextPath() + "/sucesso.jsp");
        } else {
            String msg = "Não foi possível atualizar o cliente!";
            request.setAttribute("msgErro", msg);
            request.getRequestDispatcher( "/erro.jsp").forward(request, response);
        }
        
    }
    

}
