package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.login.LoginDAO;
import study2.login.LoginVO;

public class MemberJoinOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String mid = request.getParameter("mid")==null ? "":request.getParameter("mid");
    String pwd = request.getParameter("pwd")==null ? "":request.getParameter("pwd");
    String nickName = request.getParameter("nickName")==null ? "":request.getParameter("nickName");
    String name = request.getParameter("name")==null ? "":request.getParameter("name");
    String gender = request.getParameter("gender")==null ? "":request.getParameter("gender");
    String birthday = request.getParameter("birthday")==null ? "" : request.getParameter("birthday");
    String tel = request.getParameter("tel")==null ? "":request.getParameter("tel");
    String address = request.getParameter("address")==null ? "":request.getParameter("address");
    String email = request.getParameter("email")==null ? "":request.getParameter("email");
    String homePage = request.getParameter("homePage")==null ? "":request.getParameter("homePage");
    String job = request.getParameter("job")==null ? "":request.getParameter("job");
    String hobby = request.getParameter("hobby")==null ? "":request.getParameter("hobby");
    String photo = request.getParameter("photo")==null ? "noimage.jpg":request.getParameter("photo");
    String content = request.getParameter("content")==null ? "":request.getParameter("content");
    String userInfor = request.getParameter("userInfor")==null ? "":request.getParameter("userInfor");
		
    MemberVO vo = new MemberVO();
    vo.setMid(mid);
    vo.setPwd(pwd);
    vo.setNickName(nickName);
    vo.setName(name);
    vo.setGender(gender);
    vo.setGender(gender);
    vo.setBirthday(birthday);
    vo.setTel(tel);
    vo.setAddress(address);
    vo.setEmail(email);
    vo.setHomePage(homePage);
    vo.setJob(job);
    vo.setHobby(hobby);
    vo.setPhoto(photo);
    vo.setContent(content);
    vo.setUserInfor(userInfor);
    
    MemberDAO dao = new MemberDAO();
    
    int res = dao.setMemberJoin(vo);
      
    if(res == 1) {
        request.setAttribute("msg", "회원가입에 성공하였습니다.");
        request.setAttribute("url", request.getContextPath() + "/MemberLogin.mem");
    }
    else {
        request.setAttribute("msg", "회원가입에 실패했습니다. 다시 시도해주세요.");
        request.setAttribute("url", request.getContextPath() + "/MemberJoin.mem");
    }
	}

}
