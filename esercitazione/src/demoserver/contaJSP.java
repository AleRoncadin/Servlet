//Roncadin Alessandro 5BIA
package demoserver;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Servlet implementation class ContaJsp
 */
@WebServlet("/ContaJsp")
public class contaJSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int count=0;
	ArrayList <table> list = new ArrayList<table>();
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	int variable;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public contaJSP() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String reset = request.getParameter("confirm_reset");
		String delete = request.getParameter("delete");
		System.out.println(reset);
		System.out.println(delete);
		
		
		table t = new table(request.getRemoteAddr(), request.getRemotePort(), dtf.format(LocalDateTime.now()));

		if(reset==null)
		{
			response.getWriter().append("Served at: ").append(request.getContextPath());
			
			this.count++;
			this.list.add(t);
			request.setAttribute("count", count);
			request.setAttribute("list", list);
			request.setAttribute("variable", variable);
			RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/contaview.jsp");
			disp.forward(request, response);
		}

		if(reset!=null)
		{
			count=0;
			list.clear();
			response.sendRedirect("/provaServlet/ContaJsp");
			request.setAttribute("count", count);
			request.setAttribute("variable", variable);
			request.setAttribute("list", list);
		}
		
		if(delete!=null)
		{
			this.count--;
			this.list.remove(t);
			response.sendRedirect("/provaServlet/ContaJsp");
			request.setAttribute("count", count);
			request.setAttribute("list", list);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public DateTimeFormatter getDtf() {
		return dtf;
	}
	public void setDtf(DateTimeFormatter dtf) {
		this.dtf = dtf;
	}
	public ArrayList<table> getList() {
		return list;
	}
	public void setList(ArrayList<table> list) {
		this.list = list;
	}
}
