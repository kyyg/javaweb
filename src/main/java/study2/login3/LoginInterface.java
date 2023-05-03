package study2.login3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface LoginInterface {

	public void execute(HttpServletRequest request, HttpServletResponse responce) throws ServletException, IOException;
	
}
