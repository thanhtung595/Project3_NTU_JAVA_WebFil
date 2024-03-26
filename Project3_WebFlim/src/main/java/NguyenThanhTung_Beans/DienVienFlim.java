package NguyenThanhTung_Beans;

public class DienVienFlim {
	private int idDienVienFlim;
	private int idFlim;
	private String nameDienVien;
	private String image;
	private int idVaiTro;
	
	public DienVienFlim() {
		// TODO Auto-generated constructor stub
	}

	public DienVienFlim(int idDienVienFlim, int idFlim, String nameDienVien, String image, int idVaiTro) {
		super();
		this.idDienVienFlim = idDienVienFlim;
		this.idFlim = idFlim;
		this.nameDienVien = nameDienVien;
		this.image = image;
		this.idVaiTro = idVaiTro;
	}

	public int getIdDienVienFlim() {
		return idDienVienFlim;
	}

	public void setIdDienVienFlim(int idDienVienFlim) {
		this.idDienVienFlim = idDienVienFlim;
	}

	public int getIdFlim() {
		return idFlim;
	}

	public void setIdFlim(int idFlim) {
		this.idFlim = idFlim;
	}

	public String getNameDienVien() {
		return nameDienVien;
	}

	public void setNameDienVien(String nameDienVien) {
		this.nameDienVien = nameDienVien;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getIdVaiTro() {
		return idVaiTro;
	}

	public void setIdVaiTro(int idVaiTro) {
		this.idVaiTro = idVaiTro;
	}
	
	
}
