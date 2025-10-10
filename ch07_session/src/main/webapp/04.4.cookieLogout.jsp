<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그아웃페이지</h1>
	
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("idKey"))
			id = cookies[i].getValue();
	}
}
%>
</body>
</html>