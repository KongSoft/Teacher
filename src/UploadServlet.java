import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
 

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 涓婁紶鏂囦欢瀛樺偍鐩綍
    private static final String UPLOAD_DIRECTORY = "photo";
 
    // 涓婁紶閰嶇疆
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
 
    /**
     * 涓婁紶鏁版嵁鍙婁繚瀛樻枃浠�
     */
    protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		// 妫�娴嬫槸鍚︿负澶氬獟浣撲笂浼�
    	HttpSession session = request.getSession();
		String name = (String) session.getAttribute("user");
		if(name==null)
			response.sendRedirect("login.jsp");
		if (!ServletFileUpload.isMultipartContent(request)) {
		    // 濡傛灉涓嶆槸鍒欏仠姝�
		    PrintWriter writer = response.getWriter();
		    writer.println("Error: 琛ㄥ崟蹇呴』鍖呭惈 enctype=multipart/form-data");
		    writer.flush();
		    return;
		}
		
        // 閰嶇疆涓婁紶鍙傛暟
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 璁剧疆鍐呭瓨涓寸晫鍊� - 瓒呰繃鍚庡皢浜х敓涓存椂鏂囦欢骞跺瓨鍌ㄤ簬涓存椂鐩綍涓�
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // 璁剧疆涓存椂瀛樺偍鐩綍
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
 
        ServletFileUpload upload = new ServletFileUpload(factory);
         
        // 璁剧疆鏈�澶ф枃浠朵笂浼犲��
        upload.setFileSizeMax(MAX_FILE_SIZE);
         
        // 璁剧疆鏈�澶ц姹傚�� (鍖呭惈鏂囦欢鍜岃〃鍗曟暟鎹�)
        upload.setSizeMax(MAX_REQUEST_SIZE);
 
        // 鏋勯�犱复鏃惰矾寰勬潵瀛樺偍涓婁紶鐨勬枃浠�
        // 杩欎釜璺緞鐩稿褰撳墠搴旂敤鐨勭洰褰�
        String uploadPath = getServletContext().getRealPath("./") + File.separator + UPLOAD_DIRECTORY;
       
         
        // 濡傛灉鐩綍涓嶅瓨鍦ㄥ垯鍒涘缓
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
 
        try {
            // 瑙ｆ瀽璇锋眰鐨勫唴瀹规彁鍙栨枃浠舵暟鎹�
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
 
            if (formItems != null && formItems.size() > 0) {
                // 杩唬琛ㄥ崟鏁版嵁
                for (FileItem item : formItems) {
                    // 澶勭悊涓嶅湪琛ㄥ崟涓殑瀛楁
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String prefix=fileName.substring(fileName.lastIndexOf(".")+1);
                        int a = new java.util.Random().nextInt();
                        fileName = name+a +"."+prefix;
                        String filePath = uploadPath + File.separator +fileName;
                        File storeFile = new File(filePath);
                        // 鍦ㄦ帶鍒跺彴杈撳嚭鏂囦欢鐨勪笂浼犺矾寰�
                        System.out.println(filePath);
                        // 淇濆瓨鏂囦欢鍒扮‖鐩�
                        item.write(storeFile);
                        Connection conn = null;
                		Statement stmt = null;
                		
                		String sql = "UPDATE  `teacher_info` SET  "
                				+ "`url` =  '"+fileName+"'"
                				+ "WHERE  `teacher_info`.`user_name` ='"+name+"'";
                			Class.forName("com.mysql.jdbc.Driver");
                			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/winter?useUnicode=true&characterEncoding=utf-8","winter","wintersoft");
                			stmt = conn.createStatement();
                			stmt.executeUpdate(sql);
                		
                			stmt.close();
                			conn.close();
                			//request.setAttribute("message","信息修改成功");
                			response.sendRedirect("message.jsp?message=0");
                	
                       
                    }
                }
            }
        } catch (Exception ex) {
        	response.sendRedirect("message.jsp?message=1");
        }
      
    }
}