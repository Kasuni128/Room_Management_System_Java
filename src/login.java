

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.UserAuthentication;
import com.user.UserAuthenticationImpl;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User data = new User();
		
		data.setUserName(username);
		data.setPassword(password);
		
		UserAuthentication check = UserAuthenticationImpl.getInstance();
		
		if(check.authenticateUser(data)==true) {
			request.setAttribute("details", data);
			
			RequestDispatcher rq = request.getRequestDispatcher("home.jsp");
			rq.forward(request, response);
			
		}
		else {
			System.out.println("Login Failed");
		}
		
				
		
		
		
		
		doGet(request, response);
	}

}
