package NguyenThanhTung_Utils;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import NguyenThanhTung_Beans.Flim;
import NguyenThanhTung_Conn.NguyenThanhTungConnection;

public class TestListFlim {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		String errorString = null;
		String successString = "Ok roi";
		List<Flim> list = null;
		try {
			conn = NguyenThanhTungConnection.getMSSQLConnection();
			try {
				list = FlimUtils.getListFlim(conn);
			} catch (Exception e) {
				e.printStackTrace();
				errorString = e.getMessage();
			}
			
			for (Flim flim : list) {
				System.out.println(flim.getIdFlim());
			}
			
		} catch (ClassNotFoundException| SQLException e1) {
			e1.printStackTrace();
			errorString = e1.getMessage();
		}
	}
}
