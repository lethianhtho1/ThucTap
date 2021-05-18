package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class nguoidung_getchucvu
 */
@WebServlet("/nguoidung_getchucvu")
public class nguoidung_getchucvu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").toString());
		Models.chucvu model_cv = new Models.chucvu();
		ArrayList<Objects.chucvu> cv = model_cv.getchucvuX(id);
		request.setAttribute("cv",cv);
		System.out.print(cv.get(0).getChucvu());
		RequestDispatcher rd = request.getRequestDispatcher("nguoidung.jsp");
		rd.forward(request , response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
