package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.xuqiu;
import dao.xuqiudao;

/**
 * Servlet implementation class xuqiuServlet
 */
@WebServlet("/xuqiuServlet")
public class xuqiuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xuqiuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		request.setCharacterEncoding("utf-8");
        long WJID = System.currentTimeMillis();
        String JGMC = request.getParameter("JGMC");
        String TXDZ = request.getParameter("TXDZ");
        String DWWZ = request.getParameter("DWWZ");
        String DZYX = request.getParameter("DZYX");
        String FRDB = request.getParameter("FRDB");
        String YZBM = request.getParameter("YZBM");
        String LXR = request.getParameter("LXR");
        String GDDH = request.getParameter("GDDH");
        String YDDH = request.getParameter("YDDH");
        String CZ = request.getParameter("CZ");
        String JGSX=request.getParameter("JGSX");
        String JGJJ = request.getParameter("JGJJ");
        String JSXQMC = request.getParameter("JSXQMC");
        String ZDKJXQGS = request.getParameter("ZDKJXQGS");
        String GJZ = request.getParameter("GJZ");
        String YJLX = request.getParameter("YJLX");
        String XKFL = request.getParameter("XKFL");
        String XQJSSSLY = request.getParameter("XQJSSSLY");
        String XQJSYYHY = request.getParameter("XQJSYYHY");
        String JSXQHZMS = request.getParameter("JSXQHZMS");
        int JHZTZ = Integer.parseInt(request.getParameter("JHZTZ"));
        String QTJSMS = request.getParameter("QTJSMS");
        int QSXQNF = Integer.parseInt(request.getParameter("QSXQNF"));
        int JZXQNF = Integer.parseInt(request.getParameter("JZXQNF"));
        String GKGLBM = request.getParameter("GKGLBM");
        String SZDY = request.getParameter("SZDY");
        int SFSH=0;
        xuqiu x=new xuqiu();
        x.setWjid(WJID);
        x.setJgmc(JGMC);
        x.setTxdz(TXDZ);
        x.setDwwz(DWWZ);
        x.setDzyx(DZYX);
        x.setFrdb(FRDB);
        x.setYzbm(YZBM);
        x.setLxr(LXR);
        x.setGddh(GDDH);
        x.setYddh(YDDH);
        x.setCz(CZ);
        x.setJgsx(JGSX);
        x.setJgjj(JGJJ);
        x.setJsxqmc(JSXQMC);
        x.setZdkjxqgs(ZDKJXQGS);
        x.setGjz(GJZ);
        x.setYjlx(YJLX);
        x.setXkfl(XKFL);
        x.setXqjsssly(XQJSSSLY);
        x.setXqjsyyhy(XQJSYYHY);
        x.setJsxqhzms(JSXQHZMS);
        x.setJhztz(JHZTZ);
        x.setQtjsms(QTJSMS);
        x.setSfsh(SFSH);
        x.setQsxqnf(QSXQNF);
        x.setJzxqnf(JZXQNF);
        x.setGkglbm(GKGLBM);
        x.setSzdy(SZDY);
        xuqiudao.add(x);
        request.setAttribute("message", "添加成功");//setAttribute方法用于将内容保存在对象中，传到下一个页面中
        request.getRequestDispatcher("add.jsp").forward(request,response);//getRequestDispatcher方法用于进入下一个页面
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
