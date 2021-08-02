/*
 * package com.rayman.lps.mvc;
 * 
 * import java.io.IOException;
 * 
 * import javax.servlet.RequestDispatcher; import
 * javax.servlet.ServletException; import javax.servlet.annotation.WebServlet;
 * import javax.servlet.http.HttpServlet; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.rayman.lps.dao.UserDAO;
 * 
 *//**
	 * Servlet implementation class logincontroller
	 *//*
		 * @WebServlet("/logincontroller") public class LoginController extends
		 * HttpServlet { private static final long serialVersionUID = 1L; private
		 * UserDAO loginDao;
		 * 
		 * public void init() { loginDao = new UserDAO(); }
		 * 
		 * protected void doGet(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException, IOException {
		 * response.sendRedirect("newlogin.jsp"); }
		 * 
		 * protected void doPost(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException, IOException { try { authenticate(request,
		 * response); } catch (Exception e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } }
		 * 
		 * private void authenticate(HttpServletRequest request, HttpServletResponse
		 * response) throws Exception { String username =
		 * request.getParameter("username"); String password =
		 * request.getParameter("password");
		 * 
		 * if (loginDao.validate(username, password)) { RequestDispatcher dispatcher =
		 * request.getRequestDispatcher("login-success.jsp");
		 * dispatcher.forward(request, response); } else { throw new
		 * Exception("Login not successful.."); } } }
		 */