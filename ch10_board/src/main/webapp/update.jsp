<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.*" %>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	Boardlist board = (Boardlist)session.getAttribute("bean");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="post.jspUTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet">
<title>수정하기</title>
</head>
<body>
<form method="post" action="boardUpdate">
	<div class="list">
		<table class="table m60">
			<tr>
				<th colspan="2"><b>수정하기</b></th>
			</tr>
			<tr>
				<th width=100px>성명</th>
				<td><input name="name" value="<%=board.getName() %>"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input name="subject" value="<%=board.getSubject() %>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" rows="10" cols="50"><%=board.getContent() %></textarea></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass" required>&ensp;수정시에는 비밀번호가 필요합니다.</td>
			</tr>
			<tr>
			<th colspan=2>
			<input type = "submit" value="수정완료" onClick="<%=nowPage%>">
			<input type = "reset" value="다시수정">
			<input type = "submit" value="뒤로" onClick="history.go(-1)">
			</th>
			</tr>
			
			<tr>
			
		</table>
		<input type="hidden" name="num" value="<%=num %>">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
	</div>
</form>

</body>
</html>