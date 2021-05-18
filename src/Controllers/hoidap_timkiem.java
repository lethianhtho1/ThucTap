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
 * Servlet implementation class hoidap_timkiem
 */
@WebServlet("/hoidap_timkiem")
public class hoidap_timkiem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cauhoi = request.getParameter("cauhoi").toString();
		
		Models.hoidap model_hoidap = new Models.hoidap();
		ArrayList<Objects.hoidap> hdx = model_hoidap.gethoidapX(cauhoi);
		request.setAttribute("hdx", hdx);
		
		Models.hoidap model_hoidapY = new Models.hoidap();
		ArrayList<Objects.hoidap> hdy = model_hoidapY.gethoidapY(cauhoi);
		request.setAttribute("hdy", hdy);
		
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd",nd);
		
		request.setAttribute("cauhoi",cauhoi);
		
		RequestDispatcher rd = request.getRequestDispatcher("hoidap_timkiem.jsp");
		rd.forward(request, response);
	}

}
