package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/baiviet_find")
public class baiviet_find extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tieuDe = request.getParameter("tieuDe");
		Models.baiviet model = new Models.baiviet();
		ArrayList<Objects.baiviet> list = model.getBaivietByTieuDe(tieuDe);
		request.setAttribute("tuKhoa", tieuDe);
		request.setAttribute("list", list);
		request.getRequestDispatcher("baiviet_find.jsp").forward(request, response);
	}

}
