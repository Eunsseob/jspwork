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
	<jsp:forward page='<%=bloodType + ".jsp" %>'></jsp:forward>
	<!-- // 페이지 호출할땐 자바기반으로 '따옴표 사용하기' -->
</body>
</html>