package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.mem")
public class MemberController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberInterface command = null;
		String viewPage = "/WEB-INF/member";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		
		if(com.equals("/MemberLogin")) {
			viewPage += "/memberlogin.jsp";
		}
		else if(com.equals("/MemberLoginOk")) {
			command = new MemberLoginOkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/MemberMain")) {
			viewPage += "/memberMain.jsp";
		}
		else if(com.equals("/MemberJoin")) {
			viewPage += "/memberJoin.jsp";
		}
		else if(com.equals("/MemberJoinOk")) {
			command = new MemberJoinOkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/MemberIdCheck")) { // 아이디 중복
			command = new MemberIdCheckCommand(); 
      command.execute(request, response);
      viewPage += "/memberIdCheck.jsp";
		}
		else if(com.equals("/MemberNickCheck")) { // 닉네임 중복
			command = new MemberNickCheckCommand(); 
			command.execute(request, response);
			viewPage += "/memberNickCheck.jsp";
		}
		// 비밀번호 찾기
		else if(com.equals("/MemberPwdFind")) { 
			viewPage += "/memberPwdFind.jsp";
		}
		else if(com.equals("/MemberPwdFindOk")) {
			command = new MemberPwdFindCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/MemberPwdFindRes")) {
			command = new MemberPwdFindResCommand();
			command.execute(request, response);
			viewPage += "/memberPwdFindRes.jsp";
		}
		// 아이디 찾기
		else if(com.equals("/MemberIdFind")) {
			viewPage += "/memberIdFind.jsp";
		}
		else if(com.equals("/MemberIdFindOk")) {
			command = new MemberIdFindCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/MemberIdFindRes")) {
			command = new MemberIdFindResCommand();
			command.execute(request, response);
			viewPage += "/memberIdFindRes.jsp";
		}
		
		else if(com.equals("/MemberList")) {
			command = new MemberListCommand();
			command.execute(request, response);
			viewPage += "/memberList.jsp";
		}

	
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
