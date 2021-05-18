package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.baiviet;

@WebServlet("/baiviet_chude")
public class baiviet_chude extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd", nd);
		// cho menu
		Models.chude model_cd = new Models.chude();
		ArrayList<Objects.chude> cd = model_cd.getchude();
		request.setAttribute("cd", cd);
		
		int id = Integer.parseInt(request.getParameter("id"));
		Models.baiviet model_bv = new Models.baiviet();
		
		if(cd!=null)
		{
			for(int i= 0; i<cd.size();i++)
			{
				if(cd.get(i).getId_chude()==id)
				{
					request.setAttribute("chude", cd.get(i).getTenchude());
					break;
				}
			}
		}
		
		ArrayList<Objects.baiviet> bv = model_bv.getBaiVietDang(id);
		request.setAttribute("bv", bv);
		request.getRequestDispatcher("baiviet_chude.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
