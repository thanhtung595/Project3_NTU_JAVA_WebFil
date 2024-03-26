package NguyenThanhTung_Utils;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

public class CookieUserUtils {
	
	public static String GetUserCookieUser(HttpServletRequest request) {
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
		return usernameCookie;
	}
}
