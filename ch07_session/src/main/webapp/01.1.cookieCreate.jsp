<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키의 값은 띄어쓰기가 안됨
	Cookie cookie = new Cookie("myCookie","Apple"); // 쿠키를 만들었음
	cookie.setValue("Banana"); // 반환해라
	cookie.setMaxAge(60); // 1분 동안 유지해라
	response.addCookie(cookie); // 서버에 전송할때 사용
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Cookie를 사용하여 연결 유지</h2>
	쿠키를 만듭니다<p/>
	쿠키 내용은 <a href="01.2.testeCookie.jsp">클릭하세요</a>
</body>
</html>