package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.user;
import dao.userdao;

/**
 * Servlet implementation class quanxian
 */
@WebServlet("/quanxian")
public class quanxian extends HttpServlet {
	private static final long serialVersionUID = 1L;
    userdao dao=new userdao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanxian() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 ArrayList<user> list=dao.getPermission();
		 request.setAttribute("list", list);
		 request.getRequestDispatcher("user.jsp").forward(request,response);//getRequestDispatcher方法用于进入下一个页面
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
