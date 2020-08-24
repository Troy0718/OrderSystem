<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.porder"
    import="Model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<link href="../s1.css" rel="stylesheet" type="text/css"/>
<%
	porder p=(porder)session.getAttribute("P");
	member m=(member)session.getAttribute("M");

%>
<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>

</head>
<body>
	<div class="header"><jsp:include page="../header.jsp"/></div>
	<div class="content">
	<table width=400 align=center>
			<tr>
				<td colspan=2 align=center>
				<h3><%=m.getName() %>完成購物</h3>
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
				
				<FORM>
					<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
						ONCLICK="varitext()">
						<a href="porderManager.jsp">回管理頁</a>
				</FORM>
				
				
				
		
		</table>
	</div>
	<div class="footer"><jsp:include page="../footer.jsp"/></div>
</body>
</html>