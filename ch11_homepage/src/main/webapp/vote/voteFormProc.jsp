<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vDao" class="vote.VoteDao"/>
<%
	int num = 0;
	if(!(request.getParameter("num") == null || request.getParameter("num").equals(""))) {
		num = Integer.parseInt(request.getParameter("num"));
	}
	String[] itemnum = request.getParameterValues("itemnum");
	/* DAO에서 수정도 가능 이 2개 넘길꺼임*/
	
	boolean result = vDao.updateCount(num, itemnum);
	String msg = "투표가 등록 x";
	if(result)
		msg = "투표 성공!";
	
%>
<script>
	alert("<%=msg %>");
	location.href = "voteList.jsp?num=<%=num %>"
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>