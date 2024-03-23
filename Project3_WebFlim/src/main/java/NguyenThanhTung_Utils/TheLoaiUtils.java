package NguyenThanhTung_Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import NguyenThanhTung_Beans.Flim;
import NguyenThanhTung_Beans.TheLoai;

public class TheLoaiUtils {
	// Get list by id Flim
		public static List<TheLoai> getListFlim(Connection conn,int idFlim) throws SQLException {
			String sql = "SELECT a.idTheLoai, a.nameTheLoai "
					+ "FROM TheLoai a where a.idFlim = ?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, idFlim);
			ResultSet rs = pstm.executeQuery();
			List<TheLoai> list = new ArrayList<>();
			while (rs.next()) {
				int idTheLoai = rs.getInt("idTheLoai");
				String nameTheLoai = rs.getString("nameTheLoai");
				TheLoai theLoai = new TheLoai(idTheLoai,idFlim,nameTheLoai);
				list.add(theLoai);
			}
			return list;
		}
}
