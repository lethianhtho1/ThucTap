package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class tintuc
 */
@WebServlet("/tintuc")
public class tintuc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// cho header
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd", nd);
		// cho menu
		Models.chude model_cd = new Models.chude();
		ArrayList<Objects.chude> cd = model_cd.getchude();

		// danh sach chu de co bai viet
		ArrayList<Objects.chude> cd1 = new ArrayList<Objects.chude>();

		// bai viet moi
		Models.baiviet model_bv = new Models.baiviet();
		ArrayList<Objects.baiviet> bvm = model_bv.getBaivietNew();
		try {
			if (cd != null) {
				int dem = 0;
				for (int i = 0; i < cd.size(); i++) {
					int maChuDe = cd.get(i).getId_chude();

					ArrayList<Objects.baiviet> bvtab1 = model_bv.getBaiVietDang(maChuDe);

					if (bvtab1 != null) {
						if (bvtab1.size() > 2) {
							request.setAttribute("bvtab" + dem, bvtab1);
							Objects.chude chude = new Objects.chude();
							chude.setId_chude(cd.get(i).getId_chude());
							chude.setTenchude(cd.get(i).getTenchude());
							cd1.add(chude);
							dem++;
						}
					}
				}
				request.setAttribute("cd1", cd1);
			}
			request.setAttribute("cd", cd);
			request.setAttribute("bvm", bvm);
			request.getRequestDispatcher("tintuc.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
