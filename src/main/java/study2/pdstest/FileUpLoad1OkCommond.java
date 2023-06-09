package study2.pdstest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import study2.StudyInterface;

public class FileUpLoad1OkCommond implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 //String fName = request.getParameter("fName")==null? "" : request.getParameter("fName");
		 //System.out.println("pdstest에서 넘어온 파일명 : " + fName);
		
		/* 
		 	COS라이브러리에서 제공해주는 객체 : MultipartRequest() / DefaultFileRenamePolicy() 
		 	사용법 : MultipartRequest(저장소명(request),"서버에 저장될 파일의 경로","서버에 저장될 파일의 최대용량","코드변환방식",기타옵션(파일명 중복방지 처리))
			
		  ServletContext application = request.getServletContext();
		  String realPath = request.getServletContext().getRealPath("/");
		*/
		
		
		
		String realPath = request.getServletContext().getRealPath("/images/pdstest");
		//System.out.println("realPath : " + realPath);
		int maxSize = 1024 * 1024 * 10; // 서버에 저장할 최대용량을 10Mbyte로 제한한다.
		String encoding = "UTF-8";
		
		// 파일 업로드처리(객체가 생성되면서 파일이 업로드처리 된다.)
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// 업로드된 파일의 정보를 추출해보자.
		String originalFileName = multipartRequest.getOriginalFileName("fName");
		String filesystemName = multipartRequest.getFilesystemName("fName");
		
		System.out.println("원본 파일명 : " + originalFileName);
		System.out.println("서버에 저장된 파일명 : " + filesystemName);
		System.out.println("서버 저장된 경로 : " + realPath);
				
		if(!originalFileName.equals("")) {
			request.setAttribute("msg", "파일이 업로드 되었습니다!");		
		}
		else {
			request.setAttribute("msg", "파일이 업로드 실패ㅠㅠ");		
		}
		request.setAttribute("url", request.getContextPath()+"/pdstest/FileUpLoad1.st");
				
	}

}
