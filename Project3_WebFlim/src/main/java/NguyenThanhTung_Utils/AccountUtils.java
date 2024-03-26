package NguyenThanhTung_Utils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.Instant;

import NguyenThanhTung_Beans.Account;

public class AccountUtils {
		public static void Register(Connection conn, Account account) throws SQLException {
			String sql = "insert into Account(userName, userPassword, email, fistName, lastName,idCountry,idState,isDelete,isBan,idRole,priceAccount,timeCreate) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, account.getUserName());
			pstm.setString(2, account.getUserPassword());
			pstm.setString(3, account.getEmail());
			pstm.setString(4, account.getFistName());
			pstm.setString(5, account.getLastName());
			pstm.setInt(6, 1);
			pstm.setInt(7, 1);
			pstm.setBoolean(8, false);
			pstm.setBoolean(9, false);
			
			pstm.setInt(10, 1);
			
			pstm.setFloat(11, 0);
			
			// Lấy thời gian hiện tại
			java.util.Date currentDate = new java.util.Date();

			// Chuyển đổi thành java.sql.Date
			java.sql.Date currentSqlDate = new java.sql.Date(currentDate.getTime());
			pstm.setDate(12, currentSqlDate);
			pstm.executeUpdate();
		}
}
