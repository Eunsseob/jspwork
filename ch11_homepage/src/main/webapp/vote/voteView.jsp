<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, vote.*" %>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<%
	int num = Integer.parseInt(request.getParameter("num"));

	ArrayList<VoteItem> alist = vDao.get(num);
	VoteList vlist = vDao.getVote(num);
	int sum = vDao.sumCount(num);	
	
	Random r = new Random();
	String question = vlist.getQuestion();
	
%>
<link href="../resources/css/vote_style.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<td>Q : <%=question %></td>
<table>
<h3>결과는:
	<tr>
		<td colspan=4 align="right">총 투표수 <%=sum %>입니다</td>
	</tr>
<tr>
	<th width="15%">번호</th>
	<th width="30%">아이템</th>
	<th>그래프</th>
	<th width="15%">득표수</th>
</tr>


<%
	
	for(int i =0; i<alist.size(); i++){

		VoteItem vitem = alist.get(i);
		String[] item = vitem.getItem();
		int rgb = r.nextInt(255*255*255);
		String rgbHex = Integer.toHexString(rgb);
		String hRGB = "#" + rgbHex;
		
		int ratio = (int)(vitem.getCount() / (double)sum * 100); 
%>
	<tr>
		<td align="center"><%=i+1 %></td>
		<td align="center"><%=item[0] %></td>
		<td>
			<table width="<%=ratio %>" height="15" align="left">
				<tr><td bgcolor="<%=hRGB%>"></td></tr>
			</table>
		</td>
		<td align="center"><%=vitem.getCount() %></td>
	</tr>
<% 
}
%>
</table>
<p/>
<input type="button" onclick="window.close()" value="닫기">

</body>
</html>