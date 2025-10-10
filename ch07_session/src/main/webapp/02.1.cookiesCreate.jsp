<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
	Cookie cook2 = new Cookie("Name", "쏜"); // 객체값 주소에 저장되어있어서, 한줄로 줄일수도 있다.
	response.addCookie(cook2); // 안에 객체가 들어있는거 확인
*/
	response.addCookie(new Cookie("Name","쏜"));
	response.addCookie(new Cookie("Age","29"));
	response.addCookie(new Cookie("Gender","Male"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies 생성하기</title>
</head>
<body>
	쿠키생성 <p/>
	쿠키 내용은 <a href="02.2.testscookies.jsp">클릭하세요</a>
	
</body>
</html>