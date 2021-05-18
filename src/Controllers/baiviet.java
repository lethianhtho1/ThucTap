package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/baiviet")
public class baiviet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Models.baiviet model_bv = new Models.baiviet();
		ArrayList<Objects.baiviet> bv = model_bv.getBaiviet();
		request.setAttribute("bv",bv);
		
		Models.chude model_cd = new Models.chude();
		ArrayList<Objects.chude> cd = model_cd.getchude();
		request.setAttribute("cd",cd);
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd",nd);
		
		Models.taikhoan model_tk = new Models.taikhoan();
		ArrayList<Objects.taikhoan> tk = model_tk.gettaikhoan();
		request.setAttribute("tk",tk);
		
		RequestDispatcher rd = request.getRequestDispatcher("baiviet.jsp");
		rd.forward(request , response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
