<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
		%>
		<script type="text/javascript">
			alert("로그인 성공");
			location.href="05.3.sessionLoginOk.jsp";
		</script>
		<%
	} else {
%>
<h1>Session 로그인</h1>
	<form action="05.2.sessionLoginProc.jsp" method="post">
		<table border="1">
			<tr>
				<th colspan="2">Login</th>
			</tr>
			<tr>
				<th>ID</th>
				<td><input name="id" required></td>
			</tr>
			
			<tr>
				<th>PW</th>
				<td><input type="password" name="pw" required></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Login">
					<input type="Reset">
				</td>
			</tr>
		</table>
	
	</form>
<%} %>
</body>
</html>