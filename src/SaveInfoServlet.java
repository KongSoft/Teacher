

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

/**
 * Servlet implementation class SaveInfoServlet
 */
@WebServlet("/SaveInfoServlet")
public class SaveInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		Statement stmt = null;
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("user");
		if(name==null)
			response.sendRedirect("login.jsp");
		
		String  user = request.getParameter("real_name");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String finalDegree = request.getParameter("finalDegree");
		String GraduationSchool = request.getParameter("GraduationSchool");
		String major = request.getParameter("major");
		String position = request.getParameter("position");
		String college = request.getParameter("college");
		
		String department = request.getParameter("department");
		String title = request.getParameter("title");
		String telephone = request.getParameter("telephone");
		String postcode = request.getParameter("postcode");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String resume = request.getParameter("resume");
		
		String researchFields = request.getParameter("researchFields");
		String project = request.getParameter("project");
		String teaching = request.getParameter("teaching");
		String awards = request.getParameter("awards");
		String requestion = request.getParameter("requestion");
		String other = request.getParameter("other");
		System.out.println(user);
		String sql = "UPDATE  `teacher_info` SET  "
				+ "`real_name` =  '"+user+"', "
				+ "`birthday` =  '"+birthday+"', "
				+ "`sex` =  '"+sex+"', "
				+ "`finalDegree` =  '"+finalDegree+"' ,"
				+ "`GraduationSchool` =  '"+GraduationSchool+"', "
				+ "`major` =  '"+major+"', "
				+ "`position` =  '"+position+"' ,"
				+ "`college` =  '"+college+"', "
				+ "`department` =  '"+department+"', "
				+ "`title` =  '"+title+"', "
				+ "`telephone` =  '"+telephone+"', "
				+ "`postcode` =  '"+postcode+"', "
				+ "`email` =  '"+email+"' ,"
				+ "`address` =  '"+address+"', "
				+ "`resume` =  '"+resume+"' ,"
				+ "`researchFields` =  '"+researchFields+"', "
				+ "`project` =  '"+project+"', "
				+ "`teaching` =  '"+teaching+"' ,"
				+ "`awards` =  '"+awards+"' ,"
				+ "`request` =  '"+requestion+"', "
				+ "`other` =  '"+other+"'"
				+ "WHERE  `teacher_info`.`user_name` ='"+name+"'";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/winter?useUnicode=true&characterEncoding=utf-8","winter","wintersoft");
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		
			stmt.close();
			conn.close();
			//request.setAttribute("message","信息修改成功");
			response.sendRedirect("message.jsp?message=0");
			return;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("message.jsp?message=1");
			return;
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
