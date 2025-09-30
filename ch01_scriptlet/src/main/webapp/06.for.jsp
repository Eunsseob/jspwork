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
	
		int sum = 0;
		
		for(int i=1; i<11; i++){

			if (i==10){
				out.print(i + "=") ;
			}
			else {
				out.print(i + "+");
			}
			sum += i;
		}
	%>
	
	<%=sum %> 입니다 <br><br><br><br>
	
	<table>
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>주소</td>
		</tr>
	</table>
	
	<%
		int[] intArr = new int[10];
		for(int i=0; i<intArr.length; i++){
			intArr[i] = i+1;
			out.print(intArr[i] + " ");
		}
	%>
</body>
</html>