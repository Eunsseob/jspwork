<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="test" class="beans.BeanTest01" />
<jsp:setProperty name="test" property="name"  value="tjouen"/>
<style>
	.border{
		width:200px;
		height : 400px;
	}
</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	자바빈즈에 들어갈 이름 : <jsp:getProperty property="name" name="test"/>
	<h1>회원가입 테스트</h1>
	<form emthod="post" name="memForm" action="memberTest.jsp">
	<table border id="3">
	<tr>
		<th colspan="2">회원가입</th>
	</tr>
	<tr>
		<td>아이디 </td>
		<th><input name="id"></th>
	</tr>
	<tr>
		<th>패스워드 </th>
		<th><input type="password" name="pw"></th>
	</tr>
	<tr>
		<th>패스워드 확인 </th>
		<th><input type="password" name="pw2"></th>
	</tr>
	<tr>
		<th>이름 </th>
		<th><input name="name1"></th>
	</tr>
	<tr>
		<th>생년월일 </th>
		<th><input name="birth"></th>
	</tr>
	<tr>
		<th>이메일 </th>
		<th><input type="email" name="email"></th>
	</tr>
	<tr>
		<th colspan="2" ><input type="submit" value="회원가입">&emsp;<input type="reset" value="다시쓰기"> </th>
	</tr>
		</border>
		</form>
</body>
</html>