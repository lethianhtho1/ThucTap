package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/trangchu")
public class trangchu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Models.baiviet model_bv = new Models.baiviet();

		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd", nd);

		ArrayList<Objects.baiviet> bvm = model_bv.getBaivietNew();
		request.setAttribute("bvm", bvm);

		Models.chude model_cd = new Models.chude();
		ArrayList<Objects.chude> cd = model_cd.getchude();
		Integer num1 = null;
		Integer num2 = null;
		Integer num3 = null;
		Integer num4 = null;
		Random random = new Random();

		try {
			do {
				num1 = random.nextInt(cd.size());
				int maChuDe = cd.get(num1).getId_chude();

				ArrayList<Objects.baiviet> bvtab1 = model_bv.getBaiVietDang(maChuDe);
				if (bvtab1 != null) {
					if (bvtab1.size() >= 3) {
						request.setAttribute("cdtab1", cd.get(num1).getTenchude());
						request.setAttribute("bvtab1", bvtab1);
						break;
					}
				}
			} while (true);
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			do {
				num2 = random.nextInt(cd.size());
				int maChuDe = cd.get(num2).getId_chude();

				ArrayList<Objects.baiviet> bvtab2 = model_bv.getBaiVietDang(maChuDe);
				if (num1 != num2) {
					if (bvtab2 != null) {
						if (bvtab2.size() >= 1) {
							request.setAttribute("cdtab2", cd.get(num2).getTenchude());
							request.setAttribute("bvtab2", bvtab2);
							break;
						}
					}
				}
			} while (true);
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			do {
				num3 = random.nextInt(cd.size());
				int maChuDe = cd.get(num3).getId_chude();

				ArrayList<Objects.baiviet> bvtab3 = model_bv.getBaiVietDang(maChuDe);
				if (num1 != num3 && num2 != num3) {
					if (bvtab3 != null) {
						if (bvtab3.size() >= 1) {
							request.setAttribute("cdtab3", cd.get(num3).getTenchude());
							request.setAttribute("bvtab3", bvtab3);
							break;
						}
					}
				}
			} while (true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			do {
				num4 = random.nextInt(cd.size());
				int maChuDe = cd.get(num4).getId_chude();

				ArrayList<Objects.baiviet> bvtab4 = model_bv.getBaiVietDang(maChuDe);
				if (num1 != num4 && num2 != num4 && num3 != num4) {
					if (bvtab4 != null) {
						if (bvtab4.size() >= 1) {
							request.setAttribute("cdtab4", cd.get(num4).getTenchude());
							request.setAttribute("bvtab4", bvtab4);
							break;
						}
					}
				}
			} while (true);
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
