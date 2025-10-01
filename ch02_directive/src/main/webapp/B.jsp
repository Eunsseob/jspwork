<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   String name = request.getParameter("name");
   String bloodType = request.getParameter("bloodType");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b><%=name %></b><br><br><br><br>
	
	<%=bloodType %>
	
	나는 B형
</body>
</html>