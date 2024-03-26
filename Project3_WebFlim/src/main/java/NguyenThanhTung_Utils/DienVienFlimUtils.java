package NguyenThanhTung_Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import NguyenThanhTung_Beans.DienVienFlim;
import NguyenThanhTung_Beans.TheLoai;

public class DienVienFlimUtils {
	// Get list diễn viên
			public static List<DienVienFlim> getListDienVienFlim(Connection conn) throws SQLException {
				String sql = "SELECT a.idDienVienFlim, a.idFlim, a.nameDienVien, a.image , a.idVaiTro "
						+ "FROM DienVienFlim a";
				PreparedStatement pstm = conn.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				List<DienVienFlim> list = new ArrayList<>();
				while (rs.next()) {
					int idDienVienFlim = rs.getInt("idDienVienFlim");
					int idFlim = rs.getInt("idFlim");
					String nameDienVien = rs.getString("nameDienVien");
					String image = rs.getString("image");
					int idVaiTro = rs.getInt("idVaiTro");
					DienVienFlim denVienFlim = new DienVienFlim(idDienVienFlim,idFlim,nameDienVien,image,idVaiTro);
					list.add(denVienFlim);
				}
				return list;
			}
}
