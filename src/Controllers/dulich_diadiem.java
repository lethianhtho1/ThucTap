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
 * Servlet implementation class dulich_diadiem
 */
@WebServlet("/dulich_diadiem")
public class dulich_diadiem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd",nd);
		RequestDispatcher rd = request.getRequestDispatcher("dulich_diadiem.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
