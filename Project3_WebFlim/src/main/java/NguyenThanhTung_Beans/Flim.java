package NguyenThanhTung_Beans;

import java.sql.Timestamp;

import net.sourceforge.jtds.jdbc.DateTime;

public class Flim {
	private int idFlim;
	private String nameFlim;
	private Boolean freeFlim;
	private float priceFlim;
	private Boolean isDelete;
	private String hangSX;
	private String gioiThieu;
	private Timestamp ngayPhatHanh;
	private String thoiGianFlim;
	private String baner;
	private String videoMP4;
	private String moTa;
	
	public Flim() {
		super();
	}
	
	public Flim(int idFlim, String nameFlim, Boolean freeFlim, float priceFlim, Boolean isDelete, String hangSX,
			String gioiThieu, Timestamp ngayPhatHanh, String thoiGianFlim, String baner, String videoMP4, String moTa) {
		super();
		this.idFlim = idFlim;
		this.nameFlim = nameFlim;
		this.freeFlim = freeFlim;
		this.priceFlim = priceFlim;
		this.isDelete = isDelete;
		this.hangSX = hangSX;
		this.gioiThieu = gioiThieu;
		this.ngayPhatHanh = ngayPhatHanh;
		this.thoiGianFlim = thoiGianFlim;
		this.baner = baner;
		this.videoMP4 = videoMP4;
		this.moTa = moTa;
	}

	public int getIdFlim() {
		return idFlim;
	}

	public void setIdFlim(int idFlim) {
		this.idFlim = idFlim;
	}

	public String getNameFlim() {
		return nameFlim;
	}

	public void setNameFlim(String nameFlim) {
		this.nameFlim = nameFlim;
	}

	public Boolean getFreeFlim() {
		return freeFlim;
	}

	public void setFreeFlim(Boolean freeFlim) {
		this.freeFlim = freeFlim;
	}

	public float getPriceFlim() {
		return priceFlim;
	}

	public void setPriceFlim(float priceFlim) {
		this.priceFlim = priceFlim;
	}

	public Boolean getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}

	public String getHangSX() {
		return hangSX;
	}

	public void setHangSX(String hangSX) {
		this.hangSX = hangSX;
	}

	public String getGioiThieu() {
		return gioiThieu;
	}

	public void setGioiThieu(String gioiThieu) {
		this.gioiThieu = gioiThieu;
	}

	public Timestamp getNgayPhatHanh() {
		return ngayPhatHanh;
	}

	public void setNgayPhatHanh(Timestamp ngayPhatHanh) {
		this.ngayPhatHanh = ngayPhatHanh;
	}

	public String getThoiGianFlim() {
		return thoiGianFlim;
	}

	public void setThoiGianFlim(String thoiGianFlim) {
		this.thoiGianFlim = thoiGianFlim;
	}

	public String getBaner() {
		return baner;
	}

	public void setBaner(String baner) {
		this.baner = baner;
	}

	public String getVideoMP4() {
		return videoMP4;
	}

	public void setVideoMP4(String videoMP4) {
		this.videoMP4 = videoMP4;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
}
