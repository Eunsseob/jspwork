<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pw = request.getParameter("pw");
	
	String id = (String)session.getAttribute("idKey");
	String sessionId = session.getId();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>---	로그인	---</h1></p>
	<form action="LoginServlet" method="post">
		아이디 : <input name="id"></p>
		비밀번호 : <input type="password" name="pw"></p>
		<input type="submit" value="로그인하기">&emsp;
		<input type="reset">
	</form>
</body>
</html>