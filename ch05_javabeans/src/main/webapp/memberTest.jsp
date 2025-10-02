<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memBean" class="beans.MemberBean"/>
<jsp:setProperty name="memBean" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border id="3">
	<tr>
		<th colspan="2">
		<jsp:getProperty property="" name="memBean"/>
		</th>
	</tr>
	<tr>
		<th colspan="2">회원가입</th>
	</tr>
	<tr>
		<th>아이디 </th>
		<th><input name="id"></th>
	</tr>
	<tr>
		<th>패스워드 </th>
		<th><input type="password" name="pwd"></th>
	</tr>
	<tr>
		<th>패스워드 확인 </th>
		<th><input type="password" name="repwd"></th>
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
		<th colspan="2" >
		<input type="button" value="회원가입" onClick="inputCheck()">
		&emsp;&emsp;
		<input type="reset" value="다시쓰기"> </th>
	</tr>
		</border>
	</table>
</body>
</html>