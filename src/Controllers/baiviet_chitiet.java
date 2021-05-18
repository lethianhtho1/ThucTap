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
 * Servlet implementation class baiviet_chitiet
 */
@WebServlet("/baiviet_chitiet")
public class baiviet_chitiet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String tieude = request.getParameter("tieude");
		int id = Integer.parseInt(request.getParameter("id"));
		Models.baiviet model_bv = new Models.baiviet();
		
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd",nd);
		
		Objects.baiviet bvct = model_bv.getBaiVietChiTiet(tieude);
		request.setAttribute("bvct", bvct);
		
		int machude=model_bv.getChuDe(id);
		ArrayList<Objects.baiviet> bvlq = model_bv.getBaivietXByMaCD(machude);
		request.setAttribute("bvlq", bvlq);
		
		Models.baiviet bv = new Models.baiviet();
		
		if(session.getAttribute(tieude) == null)
		{
			session.setAttribute(tieude, "true");
			if(!bv.addLuotXem(id))
			{
				System.out.println("Không tăng lượt xem được!");
			}
		}
		Models.chude model_cd = new Models.chude();
		ArrayList<Objects.chude> cd = model_cd.getchude();
		request.setAttribute("cd",cd);
		RequestDispatcher rd = request.getRequestDispatcher("baiviet_chitiet.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
