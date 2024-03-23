package NguyenThanhTung_Beans;

public class TheLoai {
	private int idTheLoai;
	private int idFlim;
	private String nameTheLoai;
	
	public TheLoai() {
		// TODO Auto-generated constructor stub
	}

	public TheLoai(int idTheLoai, int idFlim, String nameTheLoai) {
		super();
		this.idTheLoai = idTheLoai;
		this.idFlim = idFlim;
		this.nameTheLoai = nameTheLoai;
	}

	public int getIdTheLoai() {
		return idTheLoai;
	}

	public void setIdTheLoai(int idTheLoai) {
		this.idTheLoai = idTheLoai;
	}

	public int getIdFlim() {
		return idFlim;
	}

	public void setIdFlim(int idFlim) {
		this.idFlim = idFlim;
	}

	public String getNameTheLoai() {
		return nameTheLoai;
	}

	public void setNameTheLoai(String nameTheLoai) {
		this.nameTheLoai = nameTheLoai;
	}
	
	
}
