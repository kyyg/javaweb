package study.t0420;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/t0420/Ex1Ok")
public class Ex1Ok extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String[] sus = request.getParameterValues("su");
		String strSu="";
		for(String su: sus) strSu += su + "/";
		strSu = strSu.substring(0,strSu.length()-1);

		System.out.println("넘어온 숫자: " + strSu);
		
		 request.setAttribute("su",strSu); 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/study/0420/ex1Res.jsp");
		dispatcher.forward(request, response);
	}
}