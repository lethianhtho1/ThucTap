package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

/**
 * Servlet implementation class hoidap_traloi
 */
@WebServlet("/hoidap_traloi")
public class hoidap_traloi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").toString());
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd",nd);
		Models.hoidap model_hoidap1 = new Models.hoidap();
		ArrayList<Objects.hoidap> hd1 = model_hoidap1.gethoidap();
		request.setAttribute("hd1", hd1);
		
		Models.hoidap model_hoidapx = new Models.hoidap();
		Objects.hoidap hdx = model_hoidapx.gethoidapX(id);
		request.setAttribute("hdx", hdx);
		
		RequestDispatcher rd = request.getRequestDispatcher("hoidap_traloi.jsp");
		rd.forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession session = request.getSession(true);
			String taikhoan= session.getAttribute("taikhoan").toString();
			int id = Integer.parseInt(request.getParameter("id"));
			String traloi = request.getParameter("traloi");
			String ngaytraloi = java.time.LocalDate.now().toString();
			Models.hoidap hoidap = new Models.hoidap();
			Objects.hoidap object_hd = new Objects.hoidap(id,"",traloi,"",ngaytraloi,taikhoan);
			int result = hoidap.hoidapedit(object_hd);
			if(result==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Trả lời thành công!');");
				out.println("location='hoidap';");
				out.println("</script>");
				out.close();
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Trả lời không thành công!');");
				out.println("location='hoidap';");
				out.println("</script>");
				out.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
