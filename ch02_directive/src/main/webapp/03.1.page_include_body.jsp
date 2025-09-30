<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.body {
		height: 200px;
		width: 200px;
		background-color : deepskyblue;
	}
	/* .hf {
		height : 200px;
		width : 200px;
		background-color : gray;
	}
 */
</style>
<body>
	<%@ include file="03.2.page_include_header.jsp" %><br>
	<p class="body">include 지시자의 Body부분입니다.</p>
	<%@ include file="03.3.page_include_footer.jsp" %><br>
</body>
</html>