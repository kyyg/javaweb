package study.hw0422;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/hw0422/signupOk")
public class signupOk extends HttpServlet{
 @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 request.setCharacterEncoding("utf-8");
	 response.setContentType("text/html; charset=utf-8");
	 
	 String mid = request.getParameter("mid")== null ? "" : request.getParameter("mid");
	 String pwd = request.getParameter("pwd")== null ? "" : request.getParameter("pwd");
	 String homepage = request.getParameter("homepage")== null ? "" : request.getParameter("homepage");
	 String tel = request.getParameter("tel")== null ? "" : request.getParameter("tel");
	 String email = request.getParameter("email")== null ?  "" : request.getParameter("email");

	 signupVO vo = new signupVO(mid, pwd, homepage, tel, email);
	 
	 request.setAttribute("vo", vo);
	 
	 String viewPage = "/hw/0422/signupRes.jsp";
	 RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	 dispatcher.forward(request, response);
	 
  }
}
