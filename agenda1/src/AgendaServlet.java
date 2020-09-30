

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AgendaServlet
 */
@WebServlet("/AgendaServlet")
public class AgendaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
		
		System.out.println(">>>>>>>>>>>>" + req.getMethod());
		
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		
		req.setAttribute("login", login);
		
		if(login.equals("vinsousa@gmail.com") && senha.equals("1234")) {
			RequestDispatcher rd = req.getRequestDispatcher("bemvindo.html");
			rd.forward(req, res);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("index.html");
			rd.forward(req, res);
		}
//		System.out.println("O login que veio na requisição é " + login);
//		System.out.println("A senha que veio na requisição é " + senha);	
//		res.sendRedirect("bemvindo.html");
	}
}
