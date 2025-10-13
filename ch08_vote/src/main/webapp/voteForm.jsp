<%@page import="vote.VoteList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	
		<form action="voteFormProc.jsp">
			<h2 class="m50">설명폼</h2>
			<table>
				<tr>
					<td colspan="2" align="center">설명폼</td>
				</tr>
				<%
				VoteList vlist = vDao.getVote(1);
				
				int num = vlist.getNum();
				String question = vlist.getQuestion();
				String sdate = vlist.getSdate().substring(0,10);
				String edate = vlist.getEdate().substring(0,10);
					
				out.print("<tr><td class='cen'>" + "</td>");
				out.print("	   <td>" + question + "</td>");
				out.print("	   <td class='cen'>" + sdate + " ~ " + edate + "</td></tr>");
				
			%>
				
			</table>
		</form>
	</div>
</body>
</html>