package board;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * Servlet implementation class BoardPostServlet
 */
@WebServlet("/boardPost")
public class BoardPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		Boardlist board = new Boardlist();
		// 값 넣어주는방법
		
		board.setName(request.getParameter("name"));
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));
		board.setPass(request.getParameter("pass"));
		board.setIp(request.getParameter("ip"));
		
		int result = new BoardDao().insertBoard(board);

		if(result > 0)
			response.sendRedirect("list.jsp");
		else {
			out.print("<script>");
			out.print("alert(글쓰기가 입력 x);");
			out.print("location.href='post.jsp';");
			out.print("</script>");
		}
	}

}

