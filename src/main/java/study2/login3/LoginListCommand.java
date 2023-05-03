package study2.login3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginListCommand implements LoginInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse responce) throws ServletException, IOException {
		request.setAttribute("msg", "전체 회원 조회를 선택하셨습니다.");
		request.setAttribute("url", request.getContextPath()+"/MemberList.kk");
		
	}

}
