<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.porder"
    import="Model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<link href="../s1.css" rel="stylesheet" type="text/css"/>
</head>
<%
	porder p=(porder)session.getAttribute("P");
	member m=(member)session.getAttribute("M");

%>
<body>
	<div class="header"><jsp:include page="../header.jsp"/></div>
	<div class="content">
		<table width=400 align=center>
			<tr>
				<td colspan=2 align=center>
				<h3><%=m.getName() %>�o�O�A���ʪ��ӥ�</h3>
			<tr>
				<td colspan=2>
				<hr>
			<tr>
				<td>�~�W
				<td>�ƶq
			<tr>
				<td colspan=2>
				<hr>
			<tr>
				<td>���~1
				<td><%=p.getProduct1() %>
			<tr>
				<td>���~2
				<td><%=p.getProduct2() %>
			<tr>
				<td>���~3
				<td><%=p.getProduct3() %>
			<tr>
				<td>���
				<td><%=p.getSum() %>��
			<tr>
				<td>�馩��
				<td><%=p.getDiscountprice() %>��
			<tr>
				<td colspan=2>
				<hr>
			<tr>
				<td colspan=2 align=center>
				<a href="finish">�T�w</a>
				<a href="addPorder.jsp">���s���</a>
		
		</table>
	
	</div>
	<div class="footer"><jsp:include page="../footer.jsp"/></div>
</body>
</html>