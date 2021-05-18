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

@WebServlet("/nguoidung_edit")
public class nguoidung_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").toString());
		
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidungX(id);
		request.setAttribute("nd",nd);
		
		Models.chucvu model_cv = new Models.chucvu();
		ArrayList<Objects.chucvu> cv = model_cv.getchucvu();
		request.setAttribute("cv",cv);
		
		RequestDispatcher rd = request.getRequestDispatcher("nguoidung_edit.jsp");
		rd.forward(request , response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try 
		{
			int id_nguoidung=Integer.parseInt(request.getParameter("txtid"));
			String tennguoidung= request.getParameter("txttennguoidung");
			String diachi = request.getParameter("txtdiachi");
			String ngaysinh=request.getParameter("ngaysinh");
			String sdt=request.getParameter("txtsdt");
			int id_chucvu=Integer.parseInt(request.getParameter("idchucvu"));
			Models.nguoidung model_nd = new Models.nguoidung();
			Objects.nguoidung object_nd = new Objects.nguoidung(id_nguoidung, tennguoidung,diachi,ngaysinh,sdt,"",id_chucvu);
			int result = model_nd.editNguoidung(object_nd);
			if(result!=0)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật người dùng thành công!');");
				out.println("location='nguoidung';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật người dùng không thành công!');");
				out.println("location='nguoidung_edit?id='"+id_nguoidung+";");
				out.println("</script>");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
