package NguyenThanhTung_Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
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
import NguyenThanhTung_Beans.Flim;
import NguyenThanhTung_Beans.UserCookie;
import NguyenThanhTung_Conn.NguyenThanhTungConnection;
import NguyenThanhTung_Utils.AccountUtils;
import NguyenThanhTung_Utils.CookieUserUtils;
import NguyenThanhTung_Utils.DienVienFlimUtils;
import NguyenThanhTung_Utils.FlimUtils;

/**
 * Servlet implementation class NTT_ProfileServlet
 */
@WebServlet("/profile")
public class NTT_ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NTT_ProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		String errorString = null;
		Account account = null;
		UserCookie cooki = CookieUserUtils.GetUserCookieUser(request);
		String successString = "Ok roi";
		if(cooki == null) {
			 response.sendRedirect("/Project3_WebFlim/error"); // Chuyển hướng đến trang error.jsp
		        return; // Đảm bảo không có mã lệnh nào được thực hiện sau khi chuyển hướng
		}
		try {
			conn = NguyenThanhTungConnection.getMSSQLConnection();
			try {
				account = AccountUtils.findUser(conn, cooki.getUserName());
			} catch (Exception e) {
				e.printStackTrace();
				errorString = e.getMessage();
			}
			
			request.setAttribute("errorString", errorString);

				successString = account.getUserName();
			
			request.setAttribute("successString", successString);
			request.setAttribute("account", account);
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/guest/profile.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException| SQLException e1) {
			e1.printStackTrace();
			
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/guest/profile.jsp");
			request.setAttribute("errorString", errorString);
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
            int frofile_save = jsonObject.getInt("frofile_save");
            String email = jsonObject.getString("email");
            String lastname = jsonObject.getString("lastName");
            String fistname = jsonObject.getString("fistName");
	        
	        String passOld = jsonObject.getString("passOld");
	        String passNew = jsonObject.getString("passNew");
	        
			// Tên người dùng đã tồn tại
	       
	        if (frofile_save == 1 && !username.isEmpty() && !email.isEmpty() && !lastname.isEmpty() && !fistname.isEmpty()) {
	            try {
	                AccountUtils.Update(conn, username, email, lastname, fistname);
	                response.setStatus(HttpServletResponse.SC_OK); // Set status code to 200
	                
	            } catch (Exception e) {
	                JSONObject responseJson = new JSONObject();
	                responseJson.put("message", e.getMessage());
	                response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set status code to 400
	                out.print(responseJson.toString()); 
	            }
	        }
	        
	        if (frofile_save == 2 && !username.isEmpty() && !passOld.isEmpty() && !passNew.isEmpty()) {
	            try {
	                int status =  AccountUtils.ChangePass(conn, username, passOld, passNew);
	                if(status <= 0) {
	                	JSONObject responseJson = new JSONObject();
		                responseJson.put("message","Old Password khong chinh xac");
		                response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set status code to 400
		                out.print(responseJson.toString()); 
	                }else {
	                	response.setStatus(HttpServletResponse.SC_OK); // Set status code to 200
	                }
	                
	            } catch (Exception e) {
	                JSONObject responseJson = new JSONObject();
	                responseJson.put("message", e.getMessage());
	                response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set status code to 400
	                out.print(responseJson.toString()); 
	            }
	            
	        }
	    } catch (Exception e) {
	    	JSONObject responseJson = new JSONObject();
            responseJson.put("message", e.getMessage());
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set status code to 400
            out.print(responseJson.toString()); 
	    } finally {
	        // Đóng kết nối và các tài nguyên
	        try {
	            if (bufferedReader != null) bufferedReader.close();
	            if (conn != null) conn.close();
	            if (out != null) out.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}

}
