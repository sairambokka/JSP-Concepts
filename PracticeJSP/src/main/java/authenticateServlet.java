

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/authenticateServlet")
public class authenticateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public authenticateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email.equals("johndoe@gmail.com") && password.equals("john123")) {
			request.getRequestDispatcher("welcome.html").forward(request, response);
		}
		
		else {
			PrintWriter out = response.getWriter();
			
			request.getRequestDispatcher("login.html").include(request, response);
			out.println("Wrong Credentials!");
		}
	}

	
}
