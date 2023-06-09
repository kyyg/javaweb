package study.t0426;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
//@WebServlet("")
public class T_init extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 service() 입니다.");
		
		String logoName = getServletContext().getInitParameter("logoName");
		String homeAddress = getServletContext().getInitParameter("homeAddress");
		
		System.out.println("logoName : " + logoName);
		System.out.println("homeAddress : " + homeAddress);
		
		HttpSession session = request.getSession(); // 세션 생성
		
		session.setAttribute("logoName", logoName);  // 정보 담기
		session.setAttribute("homeAddress", homeAddress);
		
		String veiwPage = "/study/0426/t_initRes.jsp";
		request.getRequestDispatcher(veiwPage).forward(request, response);
		
		
	}
}
