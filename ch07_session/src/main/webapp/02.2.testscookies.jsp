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
	String[] var2  = {"이름 : ", "나이 : ", "성별 : "};
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			out.print("Cookie Name : " + cookies[i].getName() + "<p/>");
			out.print("Cookie Value: " + cookies[i].getValue() + "<hr>");
		}
	}
	
	out.print("=========================" + "<p/>");
	
	for(int j=0; j<var2.length; j++){
		out.print(var2[j] + cookies[j+1].getValue() + "<p/>");
	}
%>
<!--  메소드를 만들어두 되고, 위의 쿠키 얻어오는 출력문에 넣어서 출력 -->

</body>
</html>