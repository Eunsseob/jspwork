<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	session.setAttribute("idKey", id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		if(id != "" && pw != ""){
%>
<h1>로그아웃 페이지</h1>
<%=id %>
<%
		} else {
%>
			<%
			session.invalidate();
			response.sendRedirect("05.login.jsp");%>
<%
			application.log("로그아웃 페이지 라우팅");
		}
%>
</body>
</html>