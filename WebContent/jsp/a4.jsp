<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@page import="bean.*" %>
<html>
	<head></head>
	<body style="font-size:30px;">
		<%
			Employee e=new Employee();
			e.setName("Sally");
			e.setSalary(1000);
			e.setAge(22);
			request.setAttribute("e",e);
		%>
		姓名:${e.name}
		薪水:${e.salary}
		年龄:${e.age<18?"未成年":"成年"}  
	</body>
</html>