package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/database/FindPwd")
public class FindPwd extends HttpServlet{
	 @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 String mid= request.getParameter("mid") == null ? "" : request.getParameter("mid");
		 String name= request.getParameter("name") == null ? "" : request.getParameter("name");
		 
		 LoginDAO dao = new LoginDAO();
	 
		 LoginVO vo = dao.getFindPwd(mid,name);
		 
		 PrintWriter out = response.getWriter();
		 
		 if(vo.getName() != null) {
			request.setAttribute("vo", vo);
			String viewPage = "/study/0428_database/findOkPwd.jsp";
			request.getRequestDispatcher(viewPage).forward(request, response);
		 }
		 else {
			 out.print("<script>");
			 out.print("alert('일치하는 회원이 존재하지 않습니다.');");
			 out.print("location.href='"+request.getContextPath()+"/study/0428_database/findPwd.jsp'");
			 out.print("</script>");
		 }
		 
	}
}
