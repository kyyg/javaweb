package study2.login3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study.database.LoginDAO;
import study.database.LoginVO;

public class LoginUpdateCommand implements LoginInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	HttpSession session = request.getSession();
	
	String mid = (String) session.getAttribute("sMid");
	
	LoginDAO dao = new LoginDAO();
	
	LoginVO vo = dao.getMidCheck(mid);
	
	request.setAttribute("vo", vo);
	
	request.setAttribute("url", request.getContextPath()+"/Update.kk");

	}

}
