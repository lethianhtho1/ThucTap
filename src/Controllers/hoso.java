package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/hoso")
public class hoso extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String tkUse = session.getAttribute("taikhoan").toString();

		Models.chucvu model_cv = new Models.chucvu();
		ArrayList<Objects.chucvu> cv = model_cv.getchucvu();
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		Models.taikhoan model_tk = new Models.taikhoan();
		ArrayList<Objects.taikhoan> tk = model_tk.gettaikhoan();
		String chucvu = null;

		Objects.nguoidung nd_dn = new Objects.nguoidung();
		Objects.taikhoan tk_dn = new Objects.taikhoan();
		for (int i = 0; i < nd.size(); i++) {
			for (int j = 0; j < tk.size(); j++) {
				if (nd.get(i).getId_nguoidung() == tk.get(j).getId_nguoidung()
						&& (tk.get(j).getTaikhoan()).equals(tkUse)) {
					nd_dn.setId_nguoidung(nd.get(i).getId_nguoidung());
					nd_dn.setId_chucvu(nd.get(i).getId_chucvu());
					nd_dn.setDiachi(nd.get(i).getDiachi());
					nd_dn.setNgaysinh(nd.get(i).getNgaysinh());
					nd_dn.setSdt(nd.get(i).getSdt());
					nd_dn.setTennguoidung(nd.get(i).getTennguoidung());
					nd_dn.setHinhanh(nd.get(i).getHinhanh());

					tk_dn.setId_nguoidung(tk.get(j).getId_nguoidung());
					tk_dn.setMatkhau(tk.get(j).getMatkhau());
					tk_dn.setQuyenhan(tk.get(j).getQuyenhan());
					tk_dn.setTaikhoan(tk.get(j).getTaikhoan());
					tk_dn.setTrangthai(tk.get(j).getTrangthai());

					break;
				}
			}
		}
		for (int i = 0; i < cv.size(); i++) {
			if (cv.get(i).getId_chucvu() == nd_dn.getId_chucvu()) {
				chucvu = cv.get(i).getChucvu();
				break;
			}
		}

		request.setAttribute("chucvu", chucvu);
		request.setAttribute("nd", nd);
		request.setAttribute("nd_dn", nd_dn);
		request.setAttribute("tk_dn", tk_dn);

		RequestDispatcher rd = request.getRequestDispatcher("hoso.jsp");
		rd.forward(request, response);
	}

}
