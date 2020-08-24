<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link href="s1.css" rel="stylesheet" type="text/css"/>
<%
	member m=(member)session.getAttribute("M");


%>
</head>
<body>
	<div class="header"><jsp:include page="header.jsp"/></div>
	<div class="content">
		<table width=400 align=center>
			<tr>
				<td align=center>
				<h3>~<%=m.getName() %> 歡迎光臨!~</h3>
				
			<tr>
				<td><a href="member/memberManager.jsp">1)會員管理</a>
			<tr>
				<td><a href="porder/porderManager.jsp">2)訂單管理</a>
		</table>
	</div>
	<div class="footer"><jsp:include page="footer.jsp"/></div>
</body>
</html>