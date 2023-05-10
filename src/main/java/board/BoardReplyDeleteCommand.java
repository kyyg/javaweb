package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardReplyDeleteCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int Idx = request.getParameter("Idx") == null ? 0 : Integer.parseInt(request.getParameter("Idx"));
		
		BoardDAO dao = new BoardDAO();
		
		String res = dao.setBoardReplyDelete(Idx);
		response.getWriter().write(res);
	}

}
