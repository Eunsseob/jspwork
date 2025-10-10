<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 사용</title>
</head>
<body>
<%
	Cookie[] cook= request.getCookies(); // 쿠키를 받아올때 사용
	if(cook != null) {
		for(int i=0; i<cook.length; i++) {
			if(cook[i].getName().equals("myCookie")){
				out.print("Cookie Name : " + cook[i].getName() + "<p/>");
				out.print("Cookie Value : " + cook[i].getValue());
			}
		}
	}
%>
</body>
</html>