<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@page import="bean.*" %>
<html>
	<head></head>
	<body style="font-size:30px;">
		<%
			User user=new User();
			user.setName("Tom");
			user.setAge(22);
			user.setInterest(new String[]{"cooking","snooker"});
			request.setAttribute("user",user);
			
			User user2=new User();
			user2.setName("Jerry");
			user2.setAge(31);
			session.setAttribute("user",user2);
		%>
		姓名:
		<%
			//User user1=(User)request.getAttribute("user");
			//out.println(user.getName());
		%>
		<br/>
		姓名:${user.name}<br/>
		
		姓名(指定从session范围查找)：
		${sessionScope.user.name} 
		<br/>
		姓名:${user["name"]}
		<%
			request.setAttribute("str","age");
		%> 
		${user[requestScope.str]}<br/>
		${user.interest[0]}
		
	</body>
</html>