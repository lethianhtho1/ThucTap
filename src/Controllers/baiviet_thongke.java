package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/baiviet_thongke")
public class baiviet_thongke extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Models.baiviet model_bv = new Models.baiviet();
		ArrayList<Objects.baiviet> listbv = model_bv.getBaiviet();
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> listnd = model_nd.getNguoidung();
		Models.taikhoan model_tk = new Models.taikhoan();
		ArrayList<Objects.taikhoan> listtk = model_tk.gettaikhoan();
		
		request.setAttribute("listbv", listbv);
		request.setAttribute("listnd", listnd);
		request.setAttribute("listtk", listtk);
		request.getRequestDispatcher("baiviet_thongke.jsp").forward(request, response);;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bd=(String) request.getParameter("bd");
		String kt=(String) request.getParameter("kt");
		Models.baiviet model_bv = new Models.baiviet();
		ArrayList<Objects.baiviet> listbv = model_bv.getBaivietByDate(bd,kt);
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> listnd = model_nd.getNguoidung();
		Models.taikhoan model_tk = new Models.taikhoan();
		ArrayList<Objects.taikhoan> listtk = model_tk.gettaikhoan();
		
		request.setAttribute("bd", bd);
		request.setAttribute("kt", kt);
		request.setAttribute("listbv", listbv);
		request.setAttribute("listnd", listnd);
		request.setAttribute("listtk", listtk);
		request.getRequestDispatcher("baiviet_thongke.jsp").forward(request, response);;
	}

}
