package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/database/LoginOk")
public class LoginOk extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
				
		LoginDAO dao = new LoginDAO();
		
		LoginVO vo = dao.getLoginCheck(mid, pwd);
		
		PrintWriter out = response.getWriter();
		
		
		if(vo.getName() != null) {
			// 회원 인증 성공시 처리...
			// 회원 인증 후 처리(1.자주 사용하는 자료를 세션에 저장(아이디,성명,닉네임))
			
			
			// getLastDate로 읽어온 날짜와 현재 날짜비교(시간X앞 10자리)를 해서 같으면 카운트+1 다르면 0...update????
			// 숙제 : DB의 최종접속일(10자리)와 시스템 날짜(10자리)를 비교하여 
			// 같으면 todayCount = vo.getTodayCount()+1, 같지 않으면 todayCount =0
			// dao.setPointPlus(mid, todayCount);
			// 횟수 5이상이 아니면 setPointPlus+10  // 그러면 setPointPlus그냥 두기.....
			
			
			
			// 방문포인트 처리하기('최종접속일처리'/'방문카운트'도 함께한다.)
			dao.setPointPlus(mid); // mid,count,??point
			
			// 1.세션 처리
			HttpSession session = request.getSession();
			session.setAttribute("sMid", mid);
			session.setAttribute("sName", vo.getName()); // 위에서 값 받지 않아도 vo에 있으니 꺼내온다.
			session.setAttribute("sPoint", vo.getPoint()+10);
			session.setAttribute("sLastDate", vo.getLastDate());
			session.setAttribute("sTodayCount", vo.getTodayCount()+1);
			
			out.print("<script>");
			out.print("alert('"+mid+"님 로그인 되었습니다');");
			out.print("location.href='"+request.getContextPath()+"/study/0428_database/memberMain.jsp';");
			out.print("</script>");
		}
		else {
			// 회원 인증 실패시 처리...
			out.print("<script>");
			out.print("alert('로그인 실패!');");
			out.print("location.href='"+request.getContextPath()+"/study/0428_database/login.jsp';");
			out.print("</script>");
		}
	}
}
