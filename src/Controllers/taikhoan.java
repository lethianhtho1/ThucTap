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
 * Servlet implementation class taikhoan
 */
@WebServlet("/taikhoan")
public class taikhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Models.taikhoan model_tk = new Models.taikhoan();
		ArrayList<Objects.taikhoan> tk = model_tk.gettaikhoan();
		request.setAttribute("tk", tk);
		
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd= model_nd.getNguoidung();
		request.setAttribute("nd", nd);
		RequestDispatcher rd =request.getRequestDispatcher("taikhoan.jsp");
		rd.forward(request, response);
	}

}
