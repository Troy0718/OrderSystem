<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.porderQuery"
    import="Model.porder"
    import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<link href="../s1.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="header"><jsp:include page="../header.jsp"/></div>
	<div class="content">
		<form action="querySum.jsp" method="post">
			<table width=500 align=center>
				<tr>
					<td  align=center>
					<h3>~請輸入查詢金額</h3>
				<tr>
					<td>
					<hr>
				<tr>
					<td align=center>
					開始
					<input type="text" name="start" size=5>
					結尾
					<input type="text" name="end" size=5>
				<tr>
					<td align=center>
						<input type="submit" value="ok">
				<tr>
					<td>
					<hr>
			</table>
		</form>
		
		<table width=500 align=center border=1>
			
				
				<%
				
				
				String Start=request.getParameter("start");
				String End=request.getParameter("end");
				
			
				List l;
				
				if(Start==null || End==null || Start=="" || End=="")
				{
					l=porderQuery.queryAll();
				}
				else
				{
					int s=Integer.parseInt(Start);
					int e=Integer.parseInt(End);
					
					l=porderQuery.querySum(s, e);
				}
				
				for(Object o:l)
				{
					porder p=(porder)o;
					
					out.println("<tr><td>"+p.getId()+
							"<td>"+p.getName()+
							"<td>"+p.getProduct1()+
							"<td>"+p.getProduct2()+
							"<td>"+p.getProduct3()+
							"<td>"+p.getSum()+
							"<td>"+p.getDiscountprice()+
							"<td>"+p.getPdate().getMonth());
				}
				
				
				
				
				
				
				%>
				
				
			
		
		</table>
		
	
	
	</div>
	<div class="footer"><jsp:include page="../footer.jsp"/></div>
</body>
</html>