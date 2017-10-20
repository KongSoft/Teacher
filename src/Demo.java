import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Demo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn = null;
		Statement stmt = null;
		String sql= "INSERT INTO `winter`.`teacher_info` (`user_name`, `real_name`,`password`) VALUES (`tangxv`, `ÌÆÐõ`,`88888888`)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/winter?useUnicode=true&characterEncoding=utf-8","winter","wintersoft");
			
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		
			stmt.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}

	}

}
