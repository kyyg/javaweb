package study2.login3;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginListMainCommand implements LoginInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse responce) throws ServletException, IOException {
		LoginDAO dao = new LoginDAO();
		
		ArrayList<LoginVO> vos = dao.getLoginList();
		
		request.setAttribute("vos", vos);
		
	}

}
