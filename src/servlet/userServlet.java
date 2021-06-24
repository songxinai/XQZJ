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
 * Servlet implementation class userServlet
 */
@WebServlet("/userServlet")
public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 	request.setCharacterEncoding("utf-8");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String xm = request.getParameter("xm");
	        String sfzh = request.getParameter("sfzh");
	        String xb = request.getParameter("xb");
	        String gj = request.getParameter("gj");
	        String ss = request.getParameter("ss");
	        String gzdw = request.getParameter("gzdw");
	        String zzjgdm = request.getParameter("zzjgdm");
	        String zyfx = request.getParameter("zyfx");
	        String szhy = request.getParameter("szhy");
	        String jycd = request.getParameter("jycd");
	        String zc = request.getParameter("zc");
	        String txdz = request.getParameter("txdz");
	        String yzbm = request.getParameter("yzbm");
	        String sj = request.getParameter("sj");
	        String gddh = request.getParameter("gddh");
	        String yx = request.getParameter("yx");
	        String qq = request.getParameter("qq");
	        user user=new user();
	        user.setUsername(username);
	        user.setPassword(password);
	        user.setXm(xm);
	        user.setSfzh(sfzh);
	        user.setXb(xb);
	        user.setGj(gj);
	        user.setSs(ss);
	        user.setGzdw(gzdw);
	        user.setZzjgdm(zzjgdm);
	        user.setZyfx(zyfx);
	        user.setSzhy(szhy);
	        user.setJycd(jycd);
	        user.setZc(zc);
	        user.setTxdz(txdz);
	        user.setYzbm(yzbm);
	        user.setSj(sj);
	        user.setGddh(gddh);
	        user.setYx(yx);
	        user.setQq(qq);
	        userdao.add(user);
	        request.getSession().setAttribute("user", user);
	        request.setAttribute("message", "添加成功");//setAttribute方法用于将内容保存在对象中，传到下一个页面中
	        request.getRequestDispatcher("login.html").forward(request,response);//getRequestDispatcher方法用于进入下一个页面
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
