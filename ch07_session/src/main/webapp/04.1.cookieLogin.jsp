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
	String id = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("idKey"))
			id = cookies[i].getValue();
	}
	if(!id.equals("")){
		%>
		
			<script>
				alert("로그인 되었습니다.");
				location.href="04.2.cookieLoginOk.jsp";
				</script>
		<%
	}
}
%>

	<h1>Cookie 로그인</h1>
	<form action="04.2.cookieLoginproc.jsp" method="post">
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
</body>
</html>