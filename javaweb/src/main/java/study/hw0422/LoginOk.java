package study.hw0422;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/hw0422/LoginOk")
public class LoginOk extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
		String member;
		
		// ID : admin, user / PW : 1234
		if ((mid.equals("admin") && pwd.equals("1234")) || (mid.equals("user")) && pwd.equals("1234")) {
			System.out.println("정회원 통과");
			member = "OK";
		} else {
			System.out.println("비회원 통과");
			member = "NO";
		}
		response.sendRedirect(request.getContextPath()+"/hw/0422/main.jsp?member="+member);
	}
}
