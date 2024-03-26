package NguyenThanhTung_Beans;

import java.sql.Date;

public class Account {
	private int idAccount;
	private String userName;
	private String userPassword;
	private String email;
	private String fistName;
	private String lastName;
	private int idCountry;
	private int idState;
	private boolean isDelete;
	private boolean isBan;
	private int idRole;
	private float priceAccount;
	private Date timeCreate;
	
	public Account() {
		// TODO Auto-generated constructor stub
	}

	public Account(int idAccount, String userName, String userPassword, String email, String fistName, String lastName,
			int idCountry, int idState, boolean isDelete, boolean isBan, int idRole, float priceAccount,
			Date timeCreate) {
		super();
		this.idAccount = idAccount;
		this.userName = userName;
		this.userPassword = userPassword;
		this.email = email;
		this.fistName = fistName;
		this.lastName = lastName;
		this.idCountry = idCountry;
		this.idState = idState;
		this.isDelete = isDelete;
		this.isBan = isBan;
		this.idRole = idRole;
		this.priceAccount = priceAccount;
		this.timeCreate = timeCreate;
	}

	public int getIdAccount() {
		return idAccount;
	}

	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFistName() {
		return fistName;
	}

	public void setFistName(String fistName) {
		this.fistName = fistName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getIdCountry() {
		return idCountry;
	}

	public void setIdCountry(int idCountry) {
		this.idCountry = idCountry;
	}

	public int getIdState() {
		return idState;
	}

	public void setIdState(int idState) {
		this.idState = idState;
	}

	public boolean isDelete() {
		return isDelete;
	}

	public void setDelete(boolean isDelete) {
		this.isDelete = isDelete;
	}

	public boolean isBan() {
		return isBan;
	}

	public void setBan(boolean isBan) {
		this.isBan = isBan;
	}

	public int getIdRole() {
		return idRole;
	}

	public void setIdRole(int idRole) {
		this.idRole = idRole;
	}

	public float getPriceAccount() {
		return priceAccount;
	}

	public void setPriceAccount(float priceAccount) {
		this.priceAccount = priceAccount;
	}

	public Date getTimeCreate() {
		return timeCreate;
	}

	public void setTimeCreate(Date timeCreate) {
		this.timeCreate = timeCreate;
	}

	
	
}
