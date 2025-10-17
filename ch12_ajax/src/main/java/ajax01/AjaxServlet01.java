package ajax01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class AjaxServlet
 */
@WebServlet("/ajax01/ajax1.do")
public class AjaxServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("input");
		
		// 객체 response Data 를 이렇게 받는다.
		String responseData = "입력한 값 : " + str + ", 길이 : " + str.length();
		
		// 응답하기 <문자 깨지지 말라는 설정>
		response.setContentType("text/html; charset=UTF-8");
		
//		response.getWriter().print(responseData);
//		out.print(responseData);
		response.getWriter().print(responseData);
	}
}