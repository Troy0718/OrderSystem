<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.member"
    import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<link href="../s1.css" rel="stylesheet" type="text/css"/>
<%
member m=(member)session.getAttribute("M");
Date d=new Date();
%>

</head>
<body>
	<div class="header"><jsp:include page="../header.jsp"/></div>
	<div class="content">
		<form action="addPorder" method="post">
			<table width=500 align=center>
			<tr>
				<td colspan=3 align=center>
				<h3><%=m.getName() %> 請選擇購買項目</h3> <%=d.getYear()+1900 %>年 <%=d.getMonth()+1 %>月 <%=d.getDate() %>日
			<tr>
				<td colspan=3 align=center>
				<hr>
			<tr>
				<td valign=top>
					<img alt="" src="pic/1.jpg"><br>
					<select name="product1">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5		
						<option value="6">6		
						<option value="7">7		
						<option value="8">8		
						<option value="9">9					
					</select>
				<td valign=top>
				<img alt="" src="pic/2.jpg"><br>
					<select name="product2">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5		
						<option value="6">6		
						<option value="7">7		
						<option value="8">8		
						<option value="9">9					
					</select>
				<td valign=top>
				<img alt="" src="pic/3.jpg"><br>
					<select name="product3">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5		
						<option value="6">6		
						<option value="7">7		
						<option value="8">8		
						<option value="9">9					
					</select>
			<tr>
				<td colspan=3 align=center>
				<hr>
			<tr>
				<td colspan=3 align=center>
				<input type="submit" value="ok">
			</table>
		
		</form>
	
	</div>
	<div class="footer"><jsp:include page="../footer.jsp"/></div>
</body>
</html>