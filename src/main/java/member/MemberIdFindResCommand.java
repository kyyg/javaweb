package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberIdFindResCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getFindId(name);
		
		request.setAttribute("vo", vo);
	}

}
