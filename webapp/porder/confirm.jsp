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
				<h3><%=m.getName() %>這是你的購物細目</h3>
			<tr>
				<td colspan=2>
				<hr>
			<tr>
				<td>品名
				<td>數量
			<tr>
				<td colspan=2>
				<hr>
			<tr>
				<td>產品1
				<td><%=p.getProduct1() %>
			<tr>
				<td>產品2
				<td><%=p.getProduct2() %>
			<tr>
				<td>產品3
				<td><%=p.getProduct3() %>
			<tr>
				<td>原價
				<td><%=p.getSum() %>元
			<tr>
				<td>折扣價
				<td><%=p.getDiscountprice() %>元
			<tr>
				<td colspan=2>
				<hr>
			<tr>
				<td colspan=2 align=center>
				<a href="finish">確定</a>
				<a href="addPorder.jsp">重新選擇</a>
		
		</table>
	
	</div>
	<div class="footer"><jsp:include page="../footer.jsp"/></div>
</body>
</html>