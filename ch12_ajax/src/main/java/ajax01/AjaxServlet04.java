package ajax01;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjaxServlet04
 */
@WebServlet("/ajax01/ajax4.do")
public class AjaxServlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id"); // id값 받아오는 방법
		Member bean = new MemberDao().getMember(id);
		
		System.out.println(id);
		System.out.println(bean.getName());
		
		// 1.
		// JSONObject({"userId":"kim", key:value, ... })
		/* JSONObject jobj = new JSONObject();
		jobj.put("userId", bean.getId());
		jobj.put("userName", bean.getName());
		jobj.put("gender", bean.getGender());
		jobj.put("email", bean.getEmail()); */
		
//		response.setContentType("application/json; charset=UTF-8");
//		response.getWriter().print(jobj);
		
		// 2.
//		JSONObject jobj = new JSONObject();
//		if(bean.getId() != null) {
//			jobj.put("status", "success");
//			jobj.put("userId", bean.getId());
//			jobj.put("userName", bean.getName());
//			jobj.put("gender", bean.getGender());
//			jobj.put("email", bean.getEmail());
//		} else {
//			jobj.put("status", "fail");
//			jobj.put("message", "해당 ID를 찾을 수 없습니다.");
//		}
//		
//		response.setContentType("application/json; charset=UTF-8");
//		response.getWriter().print(jobj);
		
		
		response.setContentType("application/json; charset=UTF-8");
		// 한 줄로 줄일수도 있다.
		// new Gson().toJson(bean, response.getWriter());
		
		// GSON : 객체를 알아서 JSONObject로 변경해줌
		Gson gson = new Gson();
		// toJson(응답할자바객체, 응답할 스트림);
		//gson.toJson(bean, response.getWriter());
		  
		if(bean.getId() != null) {
			Map<String, Object> result = new HashMap<>();
			result.put("status", "success");
			result.put("member", bean);
			gson.toJson(result, response.getWriter());
		} else {
			Map<String, String> result = new HashMap<>();
			result.put("status", "fail");
			result.put("message", "해당 ID를 찾을 수 없습니다");
			gson.toJson(result, response.getWriter());
		}
	}
}
