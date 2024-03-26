package NguyenThanhTung_Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONObject;

import NguyenThanhTung_Beans.Account;
import NguyenThanhTung_Conn.NguyenThanhTungConnection;
import NguyenThanhTung_Utils.AccountUtils;

/**
 * Servlet implementation class NTT_SignupServlet
 */
@WebServlet("/signup")
public class NTT_SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NTT_SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		PrintWriter out = response.getWriter();
		
		try {
			conn = NguyenThanhTungConnection.getMSSQLConnection();
            bufferedReader =  new BufferedReader(new InputStreamReader(request.getInputStream()));
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                sb.append(line);
            }
            JSONObject jsonObject = new JSONObject(sb.toString());

            String username = jsonObject.getString("username");
            String password = jsonObject.getString("password");
            String email = jsonObject.getString("email");
            String lastname = jsonObject.getString("lastname");
            String fistname = jsonObject.getString("fistname");
            
         // Kiểm tra xem tên người dùng đã tồn tại hay chưa
            stmt = conn.prepareStatement("SELECT userName FROM Account WHERE userName = ? ");
            stmt.setString(1, username);
            rs = stmt.executeQuery();

            if (rs.next()) {
                // Tên người dùng đã tồn tại
                JSONObject responseJson = new JSONObject();
                responseJson.put("message", "Username đã tồn tại");
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set status code to 400
                out.print(responseJson.toString()); 
            }else {

    			try {
    				// Lấy thời gian hiện tại
        			java.util.Date currentDate = new java.util.Date();

        			// Chuyển đổi thành java.sql.Date
        			java.sql.Date currentSqlDate = new java.sql.Date(currentDate.getTime());
                    Account account = new Account(0,username,password,email,fistname,lastname,1,1,false,false,1,0,currentSqlDate);
                    AccountUtils.Register(conn, account);
                    response.setStatus(HttpServletResponse.SC_OK); // Set status code to 200
				} catch (Exception e) {
					 // Tên người dùng đã tồn tại
	                JSONObject responseJson = new JSONObject();
	                responseJson.put("message", e.getMessage());
	                response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set status code to 400
	                out.print(responseJson.toString()); 
				}
            }
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
		    // Đóng kết nối và các tài nguyên
		    try {
		        if (rs != null) rs.close();
		        if (stmt != null) stmt.close();
		        if (conn != null) conn.close();
		        if (out != null) out.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
	}
		

}
