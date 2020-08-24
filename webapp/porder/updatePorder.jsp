<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
      import="Dao.porderQuery"
    import="Model.porder"
    import="Dao.porderDao"
    import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<link href="../s1.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="header"><jsp:include page="../header.jsp"/></div>
	<div class="content">
		<form action="updatePorder.jsp" method="post">
			<table width=500 align=center>
				<tr>
					<td  align=center>
					<h3>~修改訂單資料~<h3>
				<tr>
					<td>
					<hr>
				<tr>
					<td align=center>
					ID
					<input type="text" name="id" size=5>
					名稱
					<input type="text" name="name" size=5>
					產品1:				
					<input type="text" name="p1" size=5>
					產品2
					<input type="text" name="p2" size=5>
					產品3
					<input type="text" name="p3" size=5>
					
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
				
				
			
				
				
			String Name=request.getParameter("name");
			String id=request.getParameter("id");
			
			String p1=request.getParameter("p1");
			String p2=request.getParameter("p2");
			String p3=request.getParameter("p3");
			
				List l;
				
				if(Name!="" && id!=null && p1!="" && p2!="" && p3!="")
				{
				int Id=Integer.parseInt(id);
				
				int P1=Integer.parseInt(p1);
				int P2=Integer.parseInt(p2);
				int P3=Integer.parseInt(p3);
					
				porder p=new porder();
					p.setId(Id);
					p.setName(Name);
					p.setProduct1(P1);
					p.setProduct2(P2);
					p.setProduct3(P3);
					p.setPdate(new Date());
					
					new porderDao().update(p);
				}
				
				l=porderQuery.queryAll();
				for(Object o:l)
				{
					porder p=(porder)o;
					
					out.println("<tr><td>"+p.getId()+
							"<td>"+p.getName()+
							"<td>"+p.getProduct1()+
							"<td>"+p.getProduct2()+
							"<td>"+p.getProduct3()+
							"<td>"+p.getSum()+
							"<td>"+p.getDiscountprice()
							);
				}
				
				
				
				
				
				
				%>
		
		</table>
	
	</div>
	<div class="footer"><jsp:include page="../footer.jsp"/></div>
</body>
</html>