package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberIdFindCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 String name= request.getParameter("name") == null ? "" : request.getParameter("name");
		 
		 MemberDAO dao = new MemberDAO();
	 
		 MemberVO vo = dao.getFindId(name);
		 
		 
		 if(vo.getMid() != null) {
				request.setAttribute("msg","NO");
				request.setAttribute("url", request.getContextPath()+"/MemberIdFindRes.mem?name="+name);
			
			}
			else {
			request.setAttribute("msg","검색한 회원이 존재하지 않습니다.");
			request.setAttribute("url", request.getContextPath()+"/MemberIdFind.mem");
			}
	
		}
		
	}


