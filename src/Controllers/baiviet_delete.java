package Controllers;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class baiviet_delete
 */
@WebServlet("/baiviet_delete")
public class baiviet_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String quyen=request.getParameter("quyen");
		int id = Integer.parseInt(request.getParameter("id").toString());

		try {
			Models.baiviet model_bv1 = new Models.baiviet();
			ArrayList<Objects.baiviet> bv = model_bv1.getBaivietX(id);
			String hinhanh=bv.get(0).getHinhanh();
			
			Models.baiviet model_bv = new Models.baiviet();
			int result = model_bv.deleteBaiviet(id);
			if (result == 1) {
				File file = new File("F:\\workspace\\WebsiteUyBan\\WebContent\\images\\"+hinhanh);

				if (file.delete()) {
				} else {
				}
			}
			if(quyen!=null)
			{
				if(quyen.equals("Admin"))
				{
					response.sendRedirect("baiviet");
				}
				else
				{
					response.sendRedirect("hoso_baivietdang");
				}
			}
			else 
				response.sendRedirect("hoso_baivietdang");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
