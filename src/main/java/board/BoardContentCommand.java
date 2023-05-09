package board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardContentCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx") == null ? 0 : Integer.parseInt(request.getParameter("idx"));
		
		BoardDAO dao = new BoardDAO();
		
		// 글 조회수 1회 증가시키기 - 조회수 중복방지 (세션: "'borad'+고유번호" 값을 객체배열(ArrayList)애 저장한다.)
		HttpSession session = request.getSession();
		ArrayList<String> contentIdx = (ArrayList) session.getAttribute("sContentIdx");
		if(contentIdx == null) {
			contentIdx = new ArrayList<>();
		}
		String imsicontentIdx = "board" + idx;
		if(!contentIdx.contains(imsicontentIdx)) {
			dao.setReadNumUpdate(idx);
			contentIdx.add(imsicontentIdx);
		}
		session.setAttribute("sContentIdx", contentIdx);
		
		
		// 현재 선택된 게시글(idx)의 전체내용물을 가져오기
		BoardVO vo = dao.getBoradContent(idx);
		
		request.setAttribute("vo", vo);
		
	}

}
