package com.cotrip.backServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cotrip.bean.SysNewsNotices;
import com.cotrip.daoimp.SysNewsNoticesImp;

public class AddSysNewsNotices extends HttpServlet {


	public AddSysNewsNotices() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("newname");
		String content=request.getParameter("newcontent");
		String type=request.getParameter("type");
		Date date=new Date();
		SimpleDateFormat fmat=new SimpleDateFormat("yy-MM-dd HH:mm:ss");
		String d=fmat.format(date);
		System.out.println(name+"内容"+content+"类型"+type+"时间"+d);
		SysNewsNotices newsnotices=new SysNewsNotices();
		newsnotices.setSysnnname(name);
		newsnotices.setSysnncontent(content);
		newsnotices.setType(type);
		newsnotices.setSysnntime(d);
		
		SysNewsNoticesImp dao=new SysNewsNoticesImp();
		if(dao.addSysNewsNotices(newsnotices))
		{
			if(type.equals("N"))
			{
				RequestDispatcher fr=request.getRequestDispatcher("/admin/allnews.jsp");
				fr.forward(request, response);
			}else
			{
				RequestDispatcher fr=request.getRequestDispatcher("/admin/allnotices.jsp");
				fr.forward(request, response);
			}
		}
		else
		{
			out.print("添加失败！<a href='javascript:history.go(-1);'>返回</a>");
		}

	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
