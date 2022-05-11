//Roncadin Alessandro 5BIA 12/05/2022
package esercitazione;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import database.dbHelper;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private dbHelper db;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public void init(){
		db = new dbHelper();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher disp;
		
		HttpSession session=request.getSession();
		session.setMaxInactiveInterval(60);
		session = request.getSession();
		session.setMaxInactiveInterval(60);
		
		Cookie cookie = new Cookie("JSESSIONID",session.getId());
		cookie.setMaxAge(Integer.MAX_VALUE);
		response.addCookie(cookie);
		
		String user = request.getParameter("user");
		String password = (String)request.getParameter("password");
		String logout = (String)request.getParameter("logout");

		if(user!=null && password!=null)
		{		
			try{
				db.connect();
				if(db.logon(user, password)){
					response.sendRedirect("/esercitazione/login");
					request.setAttribute("user", user);						
					session.setAttribute("logged", true);
    				session.setAttribute("user", user);	
    				disp=request.getRequestDispatcher("/WEB-INF/logout.jsp");
				}else
				{
					response.sendRedirect("/esercitazione/login");
					disp = request.getRequestDispatcher("/WEB-INF/login.jsp");
				}
				db.disconnect();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(logout!=null){
			session.invalidate();
			response.sendRedirect("/esercitazione/login");
			disp = request.getRequestDispatcher("/WEB-INF/login.jsp");
		}
		
		else
		{
			if(session.getAttribute("logged") !=null && ((boolean) session.getAttribute("logged"))) {
				disp=request.getRequestDispatcher("/WEB-INF/logout.jsp");
				request.setAttribute("user", (String) session.getAttribute("user"));
			}
			else
				disp=request.getRequestDispatcher("/WEB-INF/login.jsp");
			disp.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}