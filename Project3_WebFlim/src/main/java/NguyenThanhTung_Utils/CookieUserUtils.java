package NguyenThanhTung_Utils;

import java.sql.Connection;
import java.sql.SQLException;

import NguyenThanhTung_Beans.UserCookie;
import NguyenThanhTung_Conn.NguyenThanhTungConnection;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

public class CookieUserUtils {
	
	public static UserCookie GetUserCookieUser(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		String usernameCookie = null;
		if (cookies != null) {
		    for (Cookie cookie : cookies) {
		        if (cookie.getName().equals("username")) {
		        	usernameCookie = cookie.getValue();
		            // Sử dụng giá trị của cookie username ở đây
		        }
		    }
		}
		
		try {
			Connection conn = NguyenThanhTungConnection.getMSSQLConnection();
			UserCookie cookie = UserCookieUtils.getUserCookie(conn, usernameCookie);
			return cookie;
		} catch (ClassNotFoundException e) {
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		return null;
	}
}
