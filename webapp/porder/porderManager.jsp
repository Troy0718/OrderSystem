<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<link href="../s1.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="header"><jsp:include page="../header.jsp"/></div>
	<div class="content">
		<table width=400 align=center>
			<tr>
				<td><a href="addPorder.jsp">1)購物</a>
			<tr>
				<td><a href="queryPorder.jsp">2)查詢訂單</a>
			<tr>
				<td><a href="updatePorder.jsp">3)修改訂單</a>
			<tr>
				<td><a href="deletePorder.jsp">4)刪除訂單</a>
		</table>	
	</div>
	<div class="footer"><jsp:include page="../footer.jsp"/></div>
</body>
</html>