package servlet.cliente;

import dao.ClienteDao;
import entidade.Cliente;
import entidade.Usuario;
import java.io.IOException;
import java.sql.Date;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CadastrarClienteServelet extends HttpServlet {

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
        int rg = Integer.valueOf(request.getParameter("rg"));
        int cpf = Integer.valueOf(request.getParameter("cpf"));
        int cep = Integer.valueOf(request.getParameter("cep"));
        String endereco = request.getParameter("endereco");
        int telefone = Integer.valueOf(request.getParameter("telefone"));
        int celular = Integer.valueOf(request.getParameter("celular"));
        String email = request.getParameter("email");
        String estado_civil = request.getParameter("estado_civil");
        String dataRecebida = request.getParameter("data_nascimento");

        DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate dataEmLocalDate = LocalDate.parse(dataRecebida, formato);
        
        Date data_nascimento = Date.valueOf(dataEmLocalDate);
        
        Usuario usuario = (Usuario) usuarioSessao;

        Cliente cliente = new Cliente(nome, rg, cpf, cep, endereco, telefone, celular, email, estado_civil, data_nascimento, usuario.getFilial());

        boolean ok = false;
        try {
            ok = ClienteDao.cadastrar(cliente, usuario.getFilial());
        } catch (SQLException ex) {
            Logger.getLogger(CadastrarClienteServelet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CadastrarClienteServelet.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (ok) {
            response.sendRedirect(request.getContextPath() + "/sucesso.jsp");
        } else {
            String msg = "Não foi possível cadastrar o cliente!";
            request.setAttribute("msgErro", msg);
            request.getRequestDispatcher( "/erro.jsp").forward(request, response);
        }

    }
}
