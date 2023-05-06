package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberPwdFindCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 String mid= request.getParameter("mid") == null ? "" : request.getParameter("mid");
	 String name= request.getParameter("name") == null ? "" : request.getParameter("name");
	 
	 MemberDAO dao = new MemberDAO();
 
	 MemberVO vo = dao.getFindPwd(mid,name);
	 
	 
	 if(vo.getMid() != null) {
			request.setAttribute("msg","NO");
			request.setAttribute("url", request.getContextPath()+"/MemberPwdFindRes.mem?mid="+mid);
		
		}
		else {
		request.setAttribute("msg","검색한 회원이 존재하지 않습니다.");
		request.setAttribute("url", request.getContextPath()+"/MemberPwdFind.mem");
		}

	}
}
