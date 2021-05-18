package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class baiviet_chuaduyet
 */
@WebServlet("/baiviet_trangthai")
public class baiviet_trangthai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("trangthai");
		int trangthai=0;
		if(str!=null && !str.equals(""))
		{
			if(str.equals("daduyet"))
			{
				trangthai=1;
				request.setAttribute("trangthai", "đã duyệt");
			}
			else
			{
				request.setAttribute("trangthai", "chưa duyệt");
			}
		}
		Models.baiviet baiviet = new Models.baiviet();
		request.setAttribute("bv", baiviet.getBaiviet_TrangThai(trangthai));
		request.getRequestDispatcher("baiviet_trangthai.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
