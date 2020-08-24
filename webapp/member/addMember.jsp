<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="../s1.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="header"><jsp:include page="../header.jsp"/></div>
	<div class="content">
		<form action="addmember" method="post">
			<table width=400 align=center>
				<tr>
					<td colspan=2 align=center>
					<h3>新增會員資料</h3>
				<tr>
					<td>姓名
					<td><input type="text" name="name">
				<tr>
					<td>帳號
					<td><input type="text" name="username">
				<tr>
					<td>密碼
					<td><input type="password" name="password">
				<tr>
					<td>電話
					<td><input type="text" name="phone">
				<tr>
					<td>地址
					<td><input type="text" name="address">
				<tr>
					<td>身分別
					<td>
					<input type="radio" name="admin" value="false" >一般會員
					<input type="radio" name="admin" value="true">管理員
				<tr>
					<td colspan=2 align=center>
					<input type="submit" value="ok">
			</table>
		
		
		</form>
	</div>
	<div class="footer"><jsp:include page="../footer.jsp"/></div>
</body>
</html>