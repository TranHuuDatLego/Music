package musicart.com.musicart;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/add-song-post.jsp")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 10,      // 10MB
                 maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class AddSongServlet extends HttpServlet {

    private static final String SAVE_DIR = "audio"; // Thư mục lưu file bài hát
    private static final String DB_URL = "jdbc:mysql://localhost:3306/musicart";
    private static final String DB_USER = "root"; // Thay bằng user của bạn
    private static final String DB_PASS = ""; // Thay bằng mật khẩu của bạn

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy dữ liệu từ form
        String title = request.getParameter("title");
        String singer = request.getParameter("singer");
        String description = request.getParameter("description");
        Part filePart = request.getPart("file"); // Tệp bài hát

        String fileName = extractFileName(filePart);
        String savePath = getServletContext().getRealPath("") + File.separator + SAVE_DIR;

        // Tạo thư mục nếu chưa tồn tại
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

        try {
            // Lưu file bài hát vào thư mục webapp/songs
            String filePath = savePath + File.separator + fileName;
            filePart.write(filePath);

            // Lưu thông tin vào cơ sở dữ liệu
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)) {
                String sql = "INSERT INTO song (title, singer, description, file_name) VALUES (?, ?, ?, ?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, title);
                statement.setString(2, singer);
                statement.setString(3, description);
                statement.setString(4, fileName); // Đường dẫn tương đối tới file bài hát

                int rowsInserted = statement.executeUpdate();
                if (rowsInserted > 0) {
                    response.getWriter().println("Song added successfully!");
                }
            }
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

    // Hàm lấy tên file từ Part
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String content : contentDisp.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return "default.mp3"; // Tên file mặc định nếu không tìm thấy
    }
}
