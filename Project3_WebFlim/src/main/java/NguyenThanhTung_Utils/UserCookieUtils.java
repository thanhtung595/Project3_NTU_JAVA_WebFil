package NguyenThanhTung_Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import NguyenThanhTung_Beans.UserCookie;

public class UserCookieUtils {
	// Doc san pham
		public static UserCookie getUserCookie(Connection conn, String userName) throws SQLException {
			String sql = "SELECT a.userName, r.nameRole " +
                    "FROM Account a " +
                    "INNER JOIN Role r ON a.idRole = r.idRole " +
                    "WHERE a.userName = ?";
		    PreparedStatement pstm = conn.prepareStatement(sql);
		    pstm.setString(1, userName);
		    ResultSet rs = pstm.executeQuery();
		    while (rs.next()) {
		        String nameRole = rs.getString("nameRole");

		        UserCookie userCookie = new UserCookie(userName,nameRole);
		        return userCookie;
		    }
		    return null;
		}
}
