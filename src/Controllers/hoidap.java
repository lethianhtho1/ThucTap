package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/hoidap")
public class hoidap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Models.hoidap model_hoidap = new Models.hoidap();
		ArrayList<Objects.hoidap> hd = model_hoidap.gethoidapdatraloi();
		request.setAttribute("hd", hd);
		Models.hoidap model_hoidap1 = new Models.hoidap();
		ArrayList<Objects.hoidap> hd1 = model_hoidap1.gethoidap();
		request.setAttribute("hd1", hd1);
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd",nd);
		RequestDispatcher rd = request.getRequestDispatcher("hoidap.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
