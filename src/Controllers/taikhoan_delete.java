package Controllers;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/taikhoan_delete")
public class taikhoan_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String taikhoan = request.getParameter("tk");
		PrintWriter out = response.getWriter();

		Models.baiviet model_bv1 = new Models.baiviet();
		ArrayList<Objects.baiviet> bv = model_bv1.getBaivietXByTaiKhoan(taikhoan);
		if (bv != null) {
			for (int i = 0; i < bv.size(); i++) {
				Models.baiviet model_bv = new Models.baiviet();
				model_bv.deleteBaivietByTaiKhoan(taikhoan);
				String hinhanh = bv.get(i).getHinhanh();
				File file = new File("F:\\workspace\\WebsiteUyBan\\WebContent\\images\\" + hinhanh);
				if (file.delete()) {
				} else {
					System.out.println("Khong the xoa anh thu: " + i);
				}
			}
		}

		Models.hoidap model_hoidap = new Models.hoidap();
		ArrayList<Objects.hoidap> hd = model_hoidap.gethoidapXTaiKhoan(taikhoan);
		if (hd != null) {
			for (int i = 0; i < hd.size(); i++) {
				Models.hoidap model_hoidap1 = new Models.hoidap();
				model_hoidap1.deleteByTaiKhoan(taikhoan);
			}
		}

		Models.taikhoan model_tk = new Models.taikhoan();
		int result = model_tk.delete_taikhoan(taikhoan);
		if (result != 0) {
		} else
			out.print("xóa thất bại");
		response.sendRedirect("taikhoan");

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
