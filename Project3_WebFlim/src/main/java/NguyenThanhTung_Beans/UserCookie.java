package NguyenThanhTung_Beans;

public class UserCookie {
	private String userName;
	private String nameRole;
	
	public UserCookie() {
		// TODO Auto-generated constructor stub
	}

	public UserCookie(String userName, String nameRole) {
		super();
		this.userName = userName;
		this.nameRole = nameRole;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNameRole() {
		return nameRole;
	}

	public void setNameRole(String nameRole) {
		this.nameRole = nameRole;
	}
	
	
}
