package study2.login3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study.database.LoginDAO;
import study.database.LoginVO;

public class LoginUpdateOkCommand implements LoginInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse responce) throws ServletException, IOException {
HttpSession session = request.getSession();
		
		String mid = (String) session.getAttribute("sMid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		
		LoginVO vo = new LoginVO();
		
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setName(name);
		
		LoginDAO dao = new LoginDAO();
		
		int res = dao.setUpdateOk(vo);
		
		if(res == 1) {
			session.setAttribute("sName", name);
			request.setAttribute("msg", "개인정보가 수정되었습니다.");
			request.setAttribute("url", request.getContextPath()+"/MemberMain.kk");
		}
		else {
			request.setAttribute("msg", "회원정보 수정을 실패했어요~");
			request.setAttribute("url", request.getContextPath()+"/Update.kk");
		}

	}

}
