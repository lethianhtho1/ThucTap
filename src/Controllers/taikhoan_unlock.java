package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class taikhoan_unlock
 */
@WebServlet("/taikhoan_unlock")
public class taikhoan_unlock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tk=request.getParameter("tk");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try 
		{
			Models.taikhoan model_tk = new Models.taikhoan();
			int result= model_tk.unlockTaikhoan(tk);
			if(result==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Mở khóa tài khoản thành công!');");
				out.println("location='taikhoan';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Mở khóa tài khoản thành công!');");
				out.println("location='taikhoan';");
				out.println("</script>");
			}
			out.close();
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
