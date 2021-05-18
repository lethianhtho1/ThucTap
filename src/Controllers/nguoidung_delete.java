package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/nguoidung_delete")
public class nguoidung_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").toString());

		try {
			
				Models.taikhoan models_taikhoan = new Models.taikhoan();
				ArrayList<Objects.taikhoan> tk = models_taikhoan.getTaikhoanXByNguoiDung(id);
				for(int i=0;i<tk.size();i++)
				{
					Models.taikhoan models_tk = new Models.taikhoan();
					models_tk.resetTaiKhoan(tk.get(i).getTaikhoan());
				}
			
			Models.nguoidung model_nd = new Models.nguoidung();
			int result = model_nd.deleteNguoidung(id);
			if(result==1)
			{	
				System.out.print("<div class=\"alert alert-warning\" role=\"alert\">\r\n"
						+ "Xóa thành công"
						+ "</div>");
			}
			else
			{
				System.out.print("<div class=\"alert alert-warning\" role=\"alert\">\r\n"
						+ "Xóa không thành công"
						+ "</div>");
			}
			response.sendRedirect("nguoidung");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
