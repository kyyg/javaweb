package study2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.ajax2.UserDAO;

public class UserUpdateCommond implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));
		String mid = request.getParameter("idx")==null ? "" : request.getParameter("idx");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		int age = request.getParameter("age")==null ? 0 : Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address")==null ? "" : request.getParameter("address");
		
		
		UserDAO dao = new UserDAO();
		
		int res = dao.setUserUpdate(idx,mid,name,age,address);
		
		String str = "";
		if(res == 0) {
			str = "수정 실패";
		}
		else {
			
		}
	}

}
