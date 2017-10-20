

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String  user = request.getParameter("username");
		String password = request.getParameter("password");
		Connection conn = null;
		PreparedStatement preState= null;
			       
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/winter?useUnicode=true&characterEncoding=utf-8","winter","wintersoft");
			
			
			String sql;
			sql = "SELECT * FROM  `teacher_info` where user_name=? and password=?";
			preState = conn.prepareStatement(sql);
			 preState.setString(1, user);
		     preState.setString(2, password);
		     rs = preState.executeQuery();
			if (rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				session.setAttribute("real_name",rs.getString("real_name"));
				response.sendRedirect("main.jsp");
			} else {
				response.sendRedirect("relogin.jsp");
			}
			rs.close();
			preState.close();
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
