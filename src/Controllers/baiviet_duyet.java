package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/baiviet_duyet")
public class baiviet_duyet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").toString());
		String str=request.getParameter("vitri");
		String vitri="baiviet";
		if(str!=null && !str.equals(""))
		{
			if(str.equals("baivietkhoa"))
			{
				vitri="baiviet_trangthai?trangthai=chuaduyet";
			}
			else if(str.equals("baivietduyet"))
			{
				vitri="baiviet_trangthai?trangthai=daduyet";
			}
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			Models.baiviet model_bv = new Models.baiviet();
			int result = model_bv.baiviet_duyet(id);
			if (result == 1) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Duyệt bài viết thành công!');");
				out.println("location='"+vitri+"';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Duyệt bài viết không thành công!');");
				out.println("location='\"+vitri+\"';");
				out.println("</script>");
			}
			out.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
