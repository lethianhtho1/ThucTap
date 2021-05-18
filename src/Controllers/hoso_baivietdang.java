package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class hoso_baivietdang
 */
@WebServlet("/hoso_baivietdang")
public class hoso_baivietdang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String taikhoan = session.getAttribute("taikhoan").toString();
		Models.baiviet model_bv = new Models.baiviet();
		ArrayList<Objects.baiviet> bv = model_bv.getBaivietNguoiDang(taikhoan);
		request.setAttribute("bv",bv);
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd",nd);
		RequestDispatcher rd = request.getRequestDispatcher("hoso_baivietdadang.jsp");
		rd.forward(request , response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
