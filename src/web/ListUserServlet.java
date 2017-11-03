package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;



public class ListUserServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("///");
		response.setContentType("text/html;charset=utf-8");
		List<User> users=new ArrayList<User>();
		for(int i=0;i<8;i++){
			User user=new User();
			user.setName("ÓÃ»§"+i);
			user.setAge(22+i);
			user.setGender("m");
			users.add(user);
		}
		request.setAttribute("users",users);
		request.getRequestDispatcher("/jsp/c3.jsp").forward(request, response);
	}

}
