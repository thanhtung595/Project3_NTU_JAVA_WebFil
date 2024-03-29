package NguyenThanhTung_Utils;

import java.security.Timestamp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import NguyenThanhTung_Beans.Flim;

public class FlimUtils {
	// Get list
	public static List<Flim> getListFlim(Connection conn) throws SQLException {
		String sql = "SELECT a.idFlim, a.nameFlim, a.freeFlim, a.priceFlim, a.isDelete, a.hangSX, a.gioiThieu, a.ngayPhatHanh, a.thoiGianFlim, a.baner, a.videoMP4 , a.moTa "
				+ "FROM Flim a";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		List<Flim> list = new ArrayList<>();
		while (rs.next()) {
			int idFlim = rs.getInt("idFlim");
			String nameFlim = rs.getString("nameFlim");
			Boolean freeFlim = rs.getBoolean("freeFlim");
			float priceFlim = rs.getFloat("priceFlim");
			Boolean isDelete = rs.getBoolean("isDelete");
			String hangSX = rs.getString("hangSX");
			String gioiThieu = rs.getString("gioiThieu");
			java.sql.Timestamp ngayPhatHanh = rs.getTimestamp("ngayPhatHanh");
			String thoiGianFlim = rs.getString("thoiGianFlim");
			String baner = rs.getString("baner");
			String videoMP4 = rs.getString("videoMP4");
			String moTa = rs.getString("moTa");
			Flim flim = new Flim(idFlim, nameFlim, freeFlim, priceFlim, isDelete, hangSX, gioiThieu, ngayPhatHanh,
					thoiGianFlim, baner, videoMP4, moTa);
			list.add(flim);
		}
		return list;
	}

	// Get list
	public static Flim getByNameFlim(Connection conn,String nameFlim) throws SQLException {
		String sql = "SELECT a.idFlim, a.freeFlim, a.priceFlim, a.isDelete, a.hangSX, a.gioiThieu, a.ngayPhatHanh, a.thoiGianFlim, a.baner, a.videoMP4 , a.moTa "
				+ "FROM Flim a where a.nameFlim = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, nameFlim);
		ResultSet rs = pstm.executeQuery();
		while (rs.next()) {
			int idFlim = rs.getInt("idFlim");
			Boolean freeFlim = rs.getBoolean("freeFlim");
			float priceFlim = rs.getFloat("priceFlim");
			Boolean isDelete = rs.getBoolean("isDelete");
			String hangSX = rs.getString("hangSX");
			String gioiThieu = rs.getString("gioiThieu");
			java.sql.Timestamp ngayPhatHanh = rs.getTimestamp("ngayPhatHanh");
			String thoiGianFlim = rs.getString("thoiGianFlim");
			String baner = rs.getString("baner");
			String videoMP4 = rs.getString("videoMP4");
			String moTa = rs.getString("moTa");

			Flim flim = new Flim(idFlim, nameFlim, freeFlim, priceFlim, isDelete, hangSX, gioiThieu, ngayPhatHanh,
					thoiGianFlim, baner, videoMP4, moTa);
			return flim;
		}
		return null;
	}
}
