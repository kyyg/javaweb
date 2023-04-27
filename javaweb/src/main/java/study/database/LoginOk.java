package study.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

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
			
			
			 /*
      방문포인트 처리하기('최종접속일처리'/'방문카운트'도 함께한다.)
      db의 최종접속일(10자리)와 시스템날짜(10자리)를 비교하여 같으면 todaCount = vo.getTodayCount()+1, 같지않으면 todayCount = 0
      이때 접속일이 다르다면 point=vo.getPoint()+10, 같지않으면 다시 방문카운트를 비교해서 5이내면 point=vo.getPoint()+10, 5이상이면 point=vo.getPoint() 처리한다.
      작업처리후 다음과같이 메소드호출하여 DB처리한다.
      dao.setPointPlus(mid, todayCount, point);
     */
			
			 Date today = new Date();
       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
       String strToday = sdf.format(today);
       
       
       int todayCount = vo.getTodayCount();
       int point = 0;
       String lastDate = vo.getLastDate();
       if(strToday.equals(lastDate.substring(0,10))) {
           todayCount++;
           if(vo.getTodayCount() < 5) point = vo.getPoint() + 10;
           else point = vo.getPoint();
       }
       else {
           todayCount = 1;
           point = vo.getPoint() + 10;
       }
       
       // 변경된 사항을 update한다.
       dao.setPointPlus(mid, point, todayCount);
       
       // 변경된 사항을 다시 불러온다.
       vo = dao.getLoginCheck(mid, pwd);      
       
       // 1.세션 처리
       HttpSession session = request.getSession();
       session.setAttribute("sMid", mid);
       session.setAttribute("sName", vo.getName()); // 위에서 값 받지 않아도 vo에 있으니 꺼내온다.
       session.setAttribute("sPoint", vo.getPoint());
       session.setAttribute("sLastDate", vo.getLastDate());
       session.setAttribute("sTodayCount", vo.getTodayCount());
       
			
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
