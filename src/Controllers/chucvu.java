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
 * Servlet implementation class chucvu
 */
@WebServlet("/chucvu")
public class chucvu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Models.chucvu model_cv = new Models.chucvu();
		ArrayList<Objects.chucvu> cv = model_cv.getchucvu();
		request.setAttribute("cv",cv);
		RequestDispatcher rd = request.getRequestDispatcher("chucvu.jsp");
		rd.forward(request , response);
	}



}
