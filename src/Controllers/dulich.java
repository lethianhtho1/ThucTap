package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/dulich")
public class dulich extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Models.baiviet model_bv = new Models.baiviet();
			Models.nguoidung model_nd = new Models.nguoidung();
			ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
			request.setAttribute("nd",nd);
			
			ArrayList<Objects.baiviet> bvdl = model_bv.getBaiVietDuLich();
			request.setAttribute("bvdl", bvdl);
			RequestDispatcher rd = request.getRequestDispatcher("dulich.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
