package ajax01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class AjaxIdCheckServlet
 */
@WebServlet("/ajax01/idCheck.me")
public class AjaxIdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String checkId = request.getParameter("checkId");
		System.out.println(checkId);
		
		boolean result = new MemberDao().checkId(checkId);
		if(result) 
			response.getWriter().print("idN");
		else
			response.getWriter().print("idY");
	}

}
