package NguyenThanhTung_Utils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		
		public static Account findUser(Connection conn, String userName) throws SQLException {
	        String sql = "SELECT * FROM Account WHERE userName = ?";
	        try (PreparedStatement statement = conn.prepareStatement(sql)) {
	            statement.setString(1, userName);
	            try (ResultSet resultSet = statement.executeQuery()) {
	                if (resultSet.next()) {
	                    int idAccount = resultSet.getInt("idAccount");
	                    String userPassword = resultSet.getString("userPassword");
	                    String email = resultSet.getString("email");
	                    String fistName = resultSet.getString("fistName");
	                    String lastName = resultSet.getString("lastName");
	                    int idCountry = resultSet.getInt("idCountry");
	                    int idState = resultSet.getInt("idState");
	                    boolean isDelete = resultSet.getBoolean("isDelete");
	                    boolean isBan = resultSet.getBoolean("isBan");
	                    int idRole = resultSet.getInt("idRole");
	                    float priceAccount = resultSet.getFloat("priceAccount");
	                    Date timeCreate = resultSet.getDate("timeCreate");
	                    
	                    return new Account(idAccount, userName, userPassword, email, fistName, lastName, idCountry, idState,
	                                        isDelete, isBan, idRole, priceAccount, timeCreate);
	                }
	            }
	        }
	        return null;
	    }
		
		public static void Update(Connection conn, String userName, String email, String lastName, String firstName) throws SQLException {
		    String sql = "update Account set email = ?, lastName = ?, fistName = ? where userName = ?";
		    PreparedStatement pstm = conn.prepareStatement(sql);
		    pstm.setString(1, email);
		    pstm.setString(2, lastName);
		    pstm.setString(3, firstName);
		    pstm.setString(4, userName);
	        
		    pstm.executeUpdate();
		}
		
		public static int ChangePass(Connection conn, String userName, String passOld, String passNew) throws SQLException {
		    String sql = "UPDATE Account SET userPassword = ? WHERE userName = ? AND userPassword = ?";
		    int rowsUpdated = 0;
		    try (PreparedStatement statement = conn.prepareStatement(sql)) {
		        statement.setString(1, passNew);
		        statement.setString(2, userName);
		        statement.setString(3, passOld);
		        
		        rowsUpdated = statement.executeUpdate();
		        if (rowsUpdated > 0) {
		            System.out.println("Mật khẩu đã được cập nhật thành công.");
		        } else {
		            System.out.println("Không thể cập nhật mật khẩu. Tên người dùng hoặc mật khẩu cũ không chính xác.");
		        }
		    }
		    return rowsUpdated;
		}
}
