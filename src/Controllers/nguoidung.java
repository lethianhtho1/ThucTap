package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.chucvu;

/**
 * Servlet implementation class nguoidung
 */
@WebServlet("/nguoidung")
public class nguoidung extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();

		Models.chucvu model_cv = new Models.chucvu();
		ArrayList<Objects.chucvu> cv= model_cv.getchucvu();
		
		request.setAttribute("nd",nd);
		request.setAttribute("cv",cv);
		RequestDispatcher rd = request.getRequestDispatcher("nguoidung.jsp");
		rd.forward(request, response);	

	}

}
